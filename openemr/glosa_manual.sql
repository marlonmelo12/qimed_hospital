-- Glosa por convenio no OpenEMR, escrita a mao: a especificacao do que a Central precisa reconhecer sozinha.
-- Cada condicao e um fato do produto que nenhuma FK declara:
--   b.activity = 1           linha excluida na folha de cobranca fica com activity 0
--   b.fee > 0                diagnostico (ICD10) e retorno sem cobranca entram na folha com valor 0
--   a.deleted IS NULL        lancamento excluido na tela de pagamento fica marcado, nao some
--   a.payer_type = 1         pagamento do convenio primario (0 e o paciente, no caixa)
--   adj_amount = glosa       o ajuste do convenio e a glosa; o memo traz o motivo em texto livre
--   (pid, encounter, code)   o razao (ar_activity) liga a cobranca pelo codigo, nao pelo id da linha: o mesmo
--                            codigo duas vezes na consulta so se separa somando as duas
SELECT ic.name AS convenio,
       SUM(l.cobrado) AS cobrado,
       SUM(l.glosado) AS glosado,
       ROUND(100 * SUM(l.glosado) / SUM(l.cobrado), 2) AS taxa_pct
FROM (SELECT b.pid, b.encounter, b.code, MAX(b.payer_id) AS payer_id, SUM(b.fee) AS cobrado,
             MAX(r.glosado) AS glosado
      FROM billing b
      JOIN (SELECT pid, encounter, code, SUM(adj_amount) AS glosado
            FROM ar_activity
            WHERE deleted IS NULL AND payer_type = 1
            GROUP BY pid, encounter, code) r
        ON r.pid = b.pid AND r.encounter = b.encounter AND r.code = b.code
      WHERE b.activity = 1 AND b.fee > 0
      GROUP BY b.pid, b.encounter, b.code) l
JOIN insurance_companies ic ON ic.id = l.payer_id
GROUP BY ic.name
ORDER BY ic.name;
