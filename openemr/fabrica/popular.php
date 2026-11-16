<?php
/**
 * Executa o roteiro.json (gerar_roteiro.py) pelas classes do proprio OpenEMR 8.5.0, como a recepcao e o
 * faturamento da clinica fariam pelas telas. Roda uma vez, num banco recem-instalado:
 *   docker exec -u apache qimed-openemr-fab php /fabrica/popular.php
 *
 * Passos que nao passam pelo produto (e por que):
 *  - cadastro da tabela TUSS, dos codigos, dos motivos de glosa e das UFs: na clinica isso e feito uma vez pelas
 *    telas de administracao (Codes, Lists), que gravam as mesmas linhas;
 *  - datas: o OpenEMR grava NOW() na cobranca, no envio e no lancamento; um UPDATE recua cada uma para a data do
 *    roteiro, senao o ano inteiro cairia no dia da fabrica.
 */
$_GET['site'] = 'default';
$ignoreAuth = true;
$sessionAllowWrite = true;
require_once '/var/www/localhost/htdocs/openemr/interface/globals.php';

use OpenEMR\Billing\BillingUtilities;
use OpenEMR\Billing\SLEOB;
use OpenEMR\Common\Session\SessionWrapperFactory;
use OpenEMR\PaymentProcessing\Recorder;
use OpenEMR\Services\EncounterService;
use OpenEMR\Services\InsuranceCompanyService;
use OpenEMR\Services\InsuranceService;
use OpenEMR\Services\PatientService;

date_default_timezone_set('America/Sao_Paulo');  // Administracao > Globals, como a clinica configura
sqlStatement("UPDATE globals SET gl_value = 'America/Sao_Paulo' WHERE gl_name = 'gbl_time_zone'");
$session = SessionWrapperFactory::getInstance()->getActiveSession();
$session->set('authUserID', 1);
$session->set('authUser', 'admin');
$session->set('authProvider', 'Default');

$rot = json_decode(file_get_contents('/fabrica/roteiro.json'), true, flags: JSON_THROW_ON_ERROR);

function ok($res, string $o)
{
    if ($res instanceof \OpenEMR\Validators\ProcessingResult && !$res->isValid()) {
        fwrite(STDERR, "falhou: $o " . json_encode($res->getValidationMessages() ?: $res->getInternalErrors()) . "\n");
        exit(1);
    }
    return $res;
}

// administracao: tabela TUSS (codigo com preco e que vai para a guia), codigos, motivos de glosa, UF
sqlStatement("INSERT INTO code_types (ct_key, ct_id, ct_seq, ct_fee, ct_active, ct_label, ct_claim, ct_proc) " .
    "VALUES ('TUSS', 120, 120, 1, 1, 'TUSS', 1, 1)");
foreach ($rot['codigos'] as $c) {
    sqlStatement("INSERT INTO codes (code_text, code, code_type, fee, active) VALUES (?, ?, 120, ?, 1)",
        [$c['text'], $c['code'], $c['fee']]);
}
foreach ($rot['motivos'] as $i => $m) {  // option_value 1 = ajuste de cobranca (sl_eob_invoice.php)
    sqlStatement("INSERT INTO list_options (list_id, option_id, title, seq, option_value) VALUES ('adjreason', ?, ?, ?, 1)",
        [$m, $m, 100 + $i]);
}
sqlStatement("UPDATE list_options SET title = 'Santa Catarina' WHERE list_id = 'state' AND option_id = 'SC'");  // a lista vem com os estados dos EUA

$seguradoras = [];
$ics = new InsuranceCompanyService();
foreach ($rot['convenios'] as $c) {
    $seguradoras[] = $ics->insert(['name' => $c['nome'], 'attn' => '', 'cms_id' => $c['ans'], 'ins_type_code' => 1,
        'x12_receiver_id' => '', 'alt_cms_id' => '', 'city' => 'Florianopolis', 'state' => 'SC', 'zip' => '88000000',
        'line1' => 'Av. Beira-Mar Norte, 1000', 'country' => 'BR']);
}

$ps = new PatientService();
$ins = new InsuranceService();
$es = new EncounterService();
$rec = new Recorder();
$pac = [];
foreach ($rot['pacientes'] as $p) {
    $r = ok($ps->insert(['fname' => $p['fname'], 'lname' => $p['lname'], 'sex' => $p['sex'], 'DOB' => $p['DOB'],
        'ss' => $p['ss'], 'street' => 'Rua das Palmeiras, ' . (10 + $p['ref']), 'postal_code' => '88000000',
        'city' => 'Florianopolis', 'state' => 'SC', 'country_code' => 'BR']), 'paciente ' . $p['ref']);
    $d = $r->getData()[0];
    $pac[$p['ref']] = $d;
    sqlStatement("UPDATE patient_data SET date = ?, regdate = ?, last_updated = ? WHERE pid = ?",
        [$p['cadastro'] . ' 08:00:00', $p['cadastro'], $p['cadastro'] . ' 08:00:00', $d['pid']]);
    if ($p['convenio'] !== null) {
        ok($ins->insert(['pid' => $d['pid'], 'type' => 'primary', 'provider' => $seguradoras[$p['convenio']],
            'policy_number' => $p['carteira'], 'subscriber_lname' => $p['lname'], 'subscriber_fname' => $p['fname'],
            'subscriber_relationship' => 'self', 'subscriber_DOB' => $p['DOB'], 'subscriber_ss' => $p['ss'],
            'subscriber_street' => 'Rua das Palmeiras, ' . (10 + $p['ref']), 'subscriber_postal_code' => '88000000',
            'subscriber_city' => 'Florianopolis', 'subscriber_state' => 'SC', 'subscriber_sex' => $p['sex'],
            'accept_assignment' => 'TRUE', 'date' => '2025-01-01', 'date_end' => null]), 'convenio ' . $p['ref']);
    }
    if ($p['convenio2'] !== null) {
        ok($ins->insert(['pid' => $d['pid'], 'type' => 'secondary', 'provider' => $seguradoras[$p['convenio2']],
            'policy_number' => $p['carteira2'], 'subscriber_lname' => $p['lname'], 'subscriber_fname' => $p['fname'],
            'subscriber_relationship' => 'self', 'subscriber_DOB' => $p['DOB'], 'subscriber_ss' => $p['ss'],
            'subscriber_street' => 'Rua das Palmeiras, ' . (10 + $p['ref']), 'subscriber_postal_code' => '88000000',
            'subscriber_city' => 'Florianopolis', 'subscriber_state' => 'SC', 'subscriber_sex' => $p['sex'],
            'accept_assignment' => 'TRUE', 'date' => '2025-01-01', 'date_end' => null]), 'convenio2 ' . $p['ref']);
    }
}

$sessoes = [];
foreach ($rot['consultas'] as $c) {
    $p = $pac[$c['paciente']];
    $r = ok($es->insertEncounter($p['uuid'], ['date' => $c['data'] . ' 09:00:00', 'pc_catid' => 5, 'class_code' => 'AMB',
        'reason' => 'Consulta', 'facility_id' => 3, 'billing_facility' => 3, 'provider_id' => 1, 'user' => 'admin',
        'group' => 'Default']), 'consulta ' . $c['ref']);
    $enc = $r->getData()[0]['encounter'];
    if (!empty($c['vitais'])) {  // o OpenEMR guarda peso em lb e temperatura em F, mesmo com a tela em metrico
        $es->insertVital($p['pid'], $enc, $c['vitais'] + ['date' => $c['data'] . ' 09:05:00']);
    }
    if (!empty($c['soap'])) {
        $es->insertSoapNote($p['pid'], $enc, ['subjective' => 'Paciente refere ' . strtolower($c['cid'][1]) . '.',
            'objective' => 'BEG, corado, hidratado.', 'assessment' => $c['cid'][0] . ' ' . $c['cid'][1],
            'plan' => 'Orientado. Retorno se necessario.']);
    }
    sqlStatement("UPDATE forms SET date = ? WHERE pid = ? AND encounter = ?", [$c['data'] . ' 09:10:00', $p['pid'], $enc]);
    $payer = $c['convenio'] === null ? 0 : $seguradoras[$c['convenio']];
    // folha de cobranca: o diagnostico (CID-10, sem valor) e as linhas TUSS justificadas por ele
    if (!empty($c['cid'])) {
        BillingUtilities::addBilling($enc, 'ICD10', $c['cid'][0], $c['cid'][1], $p['pid'], '1', 1, '', 1, '0.00');
    }
    $just = empty($c['cid']) ? '' : 'ICD10|' . $c['cid'][0] . ':';
    foreach ($c['linhas'] as $x) {
        BillingUtilities::addBilling($enc, 'TUSS', $x['code'], $x['text'], $p['pid'], '1', 1, '', $x['units'],
            $x['fee'], '', $just, 0, '', '', '', $payer ?: '');
    }
    if (!empty($c['estornada'])) {
        $x = $c['estornada'];
        BillingUtilities::deleteBilling(BillingUtilities::addBilling($enc, 'TUSS', $x['code'], $x['text'], $p['pid'],
            '1', 1, '', 1, $x['fee'], '', $just, 0, '', '', '', $payer ?: ''));
    }
    sqlStatement("UPDATE billing SET date = ? WHERE pid = ? AND encounter = ?", [$c['data'] . ' 09:30:00', $p['pid'], $enc]);

    if (!empty($c['pagamento_particular'])) {  // particular paga no caixa no dia
        $total = array_sum(array_column($c['linhas'], 'fee'));
        $sid = sqlInsert("INSERT INTO ar_session (payer_id, user_id, reference, check_date, deposit_date, pay_total, " .
            "patient_id, payment_type, adjustment_code, payment_method, post_to_date) " .
            "VALUES (0, 1, 'Caixa', ?, ?, ?, ?, 'patient', 'patient_payment', 'cash', ?)",
            [$c['data'], $c['data'], $total, $p['pid'], $c['data']]);
        foreach ($c['linhas'] as $x) {
            if ($x['fee']) {
                $rec->recordActivity(['patientId' => $p['pid'], 'encounterId' => $enc, 'codeType' => 'TUSS',
                    'code' => $x['code'], 'modifier' => '', 'payerType' => 0, 'postDate' => $c['data'], 'postUser' => 1,
                    'sessionId' => $sid, 'memo' => '', 'payAmount' => $x['fee'], 'adjustmentAmount' => '0.0',
                    'payerClaimNumber' => null]);
            }
        }
        sqlStatement("UPDATE ar_activity SET post_time = ?, modified_time = ? WHERE session_id = ?",
            [$c['data'] . ' 10:00:00', $c['data'] . ' 10:00:00', $sid]);
        sqlStatement("UPDATE form_encounter SET last_level_closed = 4 WHERE pid = ? AND encounter = ?", [$p['pid'], $enc]);
        continue;
    }
    if (empty($c['enviada'])) {
        continue;
    }
    // faturamento: a guia vai para o convenio (status 2 = enviada)
    BillingUtilities::updateClaim(true, $p['pid'], $enc, $payer, 1, 2, 2, 'lote_' . substr($c['enviada'], 0, 7) . '.txt', 'X12');
    sqlStatement("UPDATE billing SET bill_date = ?, process_date = ? WHERE pid = ? AND encounter = ?",
        [$c['enviada'] . ' 08:00:00', $c['enviada'] . ' 08:00:00', $p['pid'], $enc]);
    sqlStatement("UPDATE claims SET bill_time = ?, process_time = ? WHERE patient_id = ? AND encounter_id = ?",
        [$c['enviada'] . ' 08:00:00', $c['enviada'] . ' 08:00:00', $p['pid'], $enc]);
    if (empty($c['retorno'])) {
        continue;
    }
    // demonstrativo de pagamento: uma sessao por convenio e lote, como no lancamento manual (sl_eob_invoice.php)
    $sid = SLEOB::arGetSession($payer, $c['lote'], $c['retorno'], $c['retorno'], 0);
    $sessoes[$sid] = ($sessoes[$sid] ?? 0);
    if (!empty($c['lancamento_errado'])) {  // valor digitado errado, excluido na tela (payment_row_modify) e relancado
        $x = array_values(array_filter($c['linhas'], fn($l) => $l['fee']))[0];
        $rec->recordActivity(['patientId' => $p['pid'], 'encounterId' => $enc, 'codeType' => 'TUSS',
            'code' => $x['code'], 'modifier' => '', 'payerType' => 1, 'postDate' => $c['retorno'], 'postUser' => 1,
            'sessionId' => $sid, 'memo' => '', 'payAmount' => $x['fee'] * 10, 'adjustmentAmount' => '0.0',
            'payerClaimNumber' => null]);
        sqlStatement("UPDATE ar_activity SET deleted = ? WHERE pid = ? AND encounter = ? AND session_id = ?",
            [$c['retorno'] . ' 14:05:00', $p['pid'], $enc, $sid]);
    }
    foreach ($c['linhas'] as $x) {
        if (!$x['fee']) {
            continue;
        }
        if ($x['pago']) {
            $rec->recordActivity(['patientId' => $p['pid'], 'encounterId' => $enc, 'codeType' => 'TUSS',
                'code' => $x['code'], 'modifier' => '', 'payerType' => 1, 'postDate' => $c['retorno'], 'postUser' => 1,
                'sessionId' => $sid, 'memo' => '', 'payAmount' => $x['pago'], 'adjustmentAmount' => '0.0',
                'payerClaimNumber' => null]);
            $sessoes[$sid] += $x['pago'];
        }
        if ($x['glosa']) {
            $rec->recordActivity(['patientId' => $p['pid'], 'encounterId' => $enc, 'codeType' => 'TUSS',
                'code' => $x['code'], 'modifier' => '', 'payerType' => 1, 'postDate' => $c['retorno'], 'postUser' => 1,
                'sessionId' => $sid, 'memo' => $x['motivo'], 'payAmount' => '0.0', 'adjustmentAmount' => $x['glosa'],
                'payerClaimNumber' => null]);
        }
    }
    sqlStatement("UPDATE ar_activity SET post_time = ?, modified_time = ? WHERE pid = ? AND encounter = ? AND session_id = ?",
        [$c['retorno'] . ' 14:00:00', $c['retorno'] . ' 14:00:00', $p['pid'], $enc, $sid]);
    sqlStatement("UPDATE form_encounter SET last_level_closed = 1 WHERE pid = ? AND encounter = ?", [$p['pid'], $enc]);
    if (!empty($c['negada'])) {  // guia negada: status 7 e o motivo em process_file (BillingUtilities::updateClaim)
        BillingUtilities::updateClaim(true, $p['pid'], $enc, $payer, 1, 7, -1, $c['negada']);
        sqlStatement("UPDATE claims SET bill_time = ? WHERE patient_id = ? AND encounter_id = ? AND status = 7",
            [$c['retorno'] . ' 14:00:00', $p['pid'], $enc]);
    }
}
foreach ($sessoes as $sid => $total) {
    sqlStatement("UPDATE ar_session SET pay_total = ?, post_to_date = check_date, payment_type = 'insurance', " .
        "adjustment_code = 'insurance_payment', payment_method = 'electronic' WHERE session_id = ?", [round($total, 2), $sid]);
}
echo json_encode(['pacientes' => count($pac), 'consultas' => count($rot['consultas']), 'sessoes' => count($sessoes)]), "\n";
