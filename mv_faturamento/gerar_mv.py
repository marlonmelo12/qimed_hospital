"""
Hospital Sao Lucas (ficticio), segundo hospital da rede, com HIS no estilo do MV Soul em Oracle: faturamento de
convenio de ponta a ponta (atendimento, conta, itens, remessa, retorno e glosa). Nenhuma linha de config/ cita este
banco: ele entra pela Central de Conexoes. Tudo ficticio, menos os codigos TISS de glosa (tabela 38), que vem de
um manual publico de prestador (ver README).

Pacientes: TASY_INI..TASY_FIM do seed do TASY (a rede atende a mesma pessoa nos dois hospitais) mais PROPRIOS.
Glosa: so nas remessas com retorno; a taxa certa e glosado / cobrado das remessas com retorno (esperado()).

Dados de producao (sujar()): CPF com mascara e com digito errado, paciente cadastrado duas vezes, nascimento
sentinela 1900-01-01, nome em maiusculas sem acento, conta reaberta depois do retorno e glosa estornada no recurso
(linha negativa). Ruido (ruido()): ~300 tabelas de parametro, log e temporarias, a maioria vazia, como no schema de
um HIS em producao.

  python mv_faturamento/gerar_mv.py            # grava sql/02_dados.sql e sql/03_ruido.sql
  python mv_faturamento/gerar_mv.py --resumo
"""
import argparse
import os
import random
import re
import sys
import unicodedata
from collections import defaultdict
from datetime import date, datetime, timedelta
from typing import Any, Dict, List

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(os.path.dirname(AQUI), "labvida"))
sys.path.insert(0, os.path.join(os.path.dirname(AQUI), "prontosul"))
from gerar_labvida import Gerador, _cpf, pacientes_tasy  # noqa: E402
from gerar_prontosul import valor_oracle  # noqa: E402

SEMENTE = 20261117
TASY_INI, TASY_FIM, PROPRIOS = 600, 760, 80
INICIO, AGORA = datetime(2026, 5, 1), datetime(2026, 11, 10, 18, 0)  # AGORA no passado: data futura trava o watermark
# cd, nome, registro ANS (ficticio), tipo, prazo de pagamento em dias, chance de glosa por item
CONVENIOS = [(10, "SAUDE LITORAL", "900101", "C", 30, 0.09), (20, "VIDA PLENA ASSISTENCIA", "900202", "C", 45, 0.05),
             (30, "UNIMAIS COOPERATIVA", "900303", "C", 30, 0.03), (90, "PARTICULAR", None, "P", 0, 0.0)]
# cd, descricao, grupo, valor de tabela, exige autorizacao (codigos ficticios, faixa 8xxxxxxx)
PRO_FAT = [("80010010", "CONSULTA EM PRONTO SOCORRO", "PROC", 180.0, "N"),
           ("80010028", "CONSULTA AMBULATORIAL", "PROC", 150.0, "N"),
           ("80020015", "TOMOGRAFIA DE CRANIO", "PROC", 620.0, "S"),
           ("80020023", "RESSONANCIA DE JOELHO", "PROC", 980.0, "S"),
           ("80020031", "ULTRASSONOGRAFIA ABDOMINAL", "PROC", 240.0, "N"),
           ("80030010", "HEMOGRAMA COMPLETO", "PROC", 22.0, "N"),
           ("80040016", "COLECISTECTOMIA VIDEOLAPAROSCOPICA", "PROC", 4200.0, "S"),
           ("80050011", "DIARIA DE ENFERMARIA", "DIA", 850.0, "N"),
           ("80050029", "DIARIA DE UTI ADULTO", "DIA", 3100.0, "S"),
           ("80060017", "TAXA DE SALA CIRURGICA", "TAX", 1300.0, "N"),
           ("80070012", "SORO FISIOLOGICO 0,9% 500ML", "MAT", 9.5, "N"),
           ("80070020", "CATETER VENOSO CENTRAL", "MAT", 310.0, "N"),
           ("80080018", "CEFTRIAXONA 1G", "MED", 38.0, "N"),
           ("80080026", "DIPIRONA 1G", "MED", 4.2, "N"),
           ("80080034", "ENOXAPARINA 40MG", "MED", 46.0, "N")]
# cd proprio, descricao do hospital, codigo TISS (tabela 38), peso, fracao glosada (None = item inteiro)
MOTIVOS = [(1, "PROCEDIMENTO SEM AUTORIZACAO DA OPERADORA", "1402", 0.30, None),
           (2, "COBRANCA DE PROCEDIMENTO EM DUPLICIDADE", "1702", 0.15, None),
           (3, "VALOR APRESENTADO A MAIOR", "1705", 0.30, (0.10, 0.40)),
           (4, "ATENDIMENTO APOS DESLIGAMENTO DO BENEFICIARIO", "1006", 0.05, None),
           (5, "NUMERO DE GUIA INVALIDO", "1307", 0.12, None),
           (6, "CBO DO EXECUTANTE INVALIDO", "1213", 0.08, None)]
PROC_AMB = ["80010010", "80010028", "80020015", "80020023", "80020031", "80030010"]
EXTRAS = ["80070012", "80080018", "80080026", "80080034", "80030010"]


def _pro(cd):
    return next(p for p in PRO_FAT if p[0] == cd)


def gerar(semente: int = SEMENTE) -> Dict[str, List[Dict[str, Any]]]:
    r = random.Random(semente)
    nomes = Gerador(semente)
    t: Dict[str, List[Dict[str, Any]]] = defaultdict(list)
    for c in CONVENIOS:
        t["convenio"].append({"cd_convenio": c[0], "nm_convenio": c[1], "nr_registro_ans": c[2],
                              "tp_convenio": c[3], "nr_dias_prazo": c[4]})
    for p in PRO_FAT:
        t["pro_fat"].append(dict(zip(("cd_pro_fat", "ds_pro_fat", "cd_gru_pro", "vl_tabela", "sn_exige_aut"), p)))
    for m in MOTIVOS:
        t["mot_glosa"].append({"cd_motivo_glosa": m[0], "ds_motivo_glosa": m[1], "cd_glosa_tiss": m[2]})

    for i, p in enumerate(pacientes_tasy()[TASY_INI:TASY_FIM] + [None] * PROPRIOS):
        cad = INICIO - timedelta(days=r.randint(0, 400))
        if p is None:
            nome, sexo, nasc, cpf = nomes.nome(), r.choice("MF"), date(r.randint(1940, 2022), r.randint(1, 12),
                                                                       r.randint(1, 28)), _cpf(r)
        else:
            nome, sexo, nasc, cpf = p["NM_PESSOA_FISICA"], p["IE_SEXO"], p["DT_NASCIMENTO"], p["NR_CPF"] or _cpf(r)
        t["paciente"].append({"cd_paciente": 300000 + i, "nm_paciente": nome.upper(), "nr_cpf": cpf,
                              "dt_nascimento": nasc, "tp_sexo": sexo if sexo in "MF" else None,
                              "nm_mae": None if r.random() < 0.2 else nomes.nome().upper(),
                              "dt_cadastro": cad, "dt_ultima_atualizacao": cad + timedelta(days=r.randint(0, 30))})

    remessas: Dict[tuple, Dict[str, Any]] = {}

    def remessa(conv, quando: datetime):
        comp = date(quando.year, quando.month, 1)
        chave = (conv[0], comp)
        if chave not in remessas:
            prox = date(comp.year + comp.month // 12, comp.month % 12 + 1, 1)
            entrega = datetime.combine(prox, datetime.min.time()) + timedelta(days=10)
            retorno = entrega + timedelta(days=conv[4] + r.randint(-3, 5)) if conv[4] else entrega
            remessas[chave] = {"cd_remessa": 7000 + len(remessas), "cd_convenio": conv[0], "dt_competencia": comp,
                               "dt_entrega_da_fatura": entrega if entrega <= AGORA else None,
                               "dt_retorno": retorno if retorno <= AGORA and entrega <= AGORA else None,
                               "sn_fechada": "S" if entrega <= AGORA else "N"}
        return remessas[chave]

    glosas = t["glosas"]
    for pac in t["paciente"]:
        for _ in range(r.choice([1, 1, 2, 2, 3])):
            conv = r.choices(CONVENIOS, [0.35, 0.3, 0.25, 0.1])[0]
            ent = INICIO + timedelta(minutes=r.randint(0, int((AGORA - INICIO).total_seconds() // 60) - 60 * 24 * 12))
            tp = r.choices("IAU", [0.2, 0.45, 0.35])[0]
            dias = r.randint(2, 9) if tp == "I" else 0
            alta = ent + (timedelta(days=dias) if tp == "I" else timedelta(hours=r.randint(1, 6)))
            cd_at = 900000 + len(t["atendime"])
            t["atendime"].append({"cd_atendimento": cd_at, "cd_paciente": pac["cd_paciente"], "cd_convenio": conv[0],
                                  "tp_atendimento": tp, "dt_atendimento": ent, "dt_alta": alta,
                                  "nr_guia": None if conv[3] == "P" else f"{r.randint(10**9, 10**10 - 1)}",
                                  "dt_ultima_atualizacao": alta})
            itens = []
            if tp == "I":
                itens.append(("80050029" if r.random() < 0.25 else "80050011", dias))
                if r.random() < 0.3:
                    itens += [("80040016", 1), ("80060017", 1), ("80070020", 1)]
                itens += [(cd, r.randint(1, 6)) for cd in r.sample(EXTRAS, r.randint(2, 4))]
            else:
                itens.append((r.choice(PROC_AMB[:2]), 1))
                itens += [(cd, r.randint(1, 3)) for cd in r.sample(PROC_AMB[2:] + EXTRAS[:2], r.randint(0, 3))]
            fechada = alta + timedelta(days=r.randint(1, 8)) <= AGORA - timedelta(days=5)
            rem = remessa(conv, alta) if fechada else None
            amb = tp != "I"
            cd_conta = 100000 + len(t["reg_amb" if amb else "reg_fat"])  # sequencias independentes: ids se repetem
            linhas = []
            for n, (cd, qt) in enumerate(itens, 1):
                vl = _pro(cd)[3] * (1 + r.uniform(-0.05, 0.15))
                linhas.append({("cd_reg_amb" if amb else "cd_reg_fat"): cd_conta, "cd_lancamento": n,
                               "cd_pro_fat": cd, "dt_lancamento": ent + timedelta(hours=r.randint(0, max(1, dias * 24))),
                               "qt_lancamento": qt, "vl_unitario": round(vl, 2), "vl_total_conta": round(vl * qt, 2),
                               "dt_ultima_atualizacao": alta})
            total = round(sum(li["vl_total_conta"] for li in linhas), 2)
            conta = {("cd_reg_amb" if amb else "cd_reg_fat"): cd_conta, "cd_atendimento": cd_at,
                     "cd_convenio": conv[0], "cd_remessa": rem and rem["cd_remessa"]}
            conta.update({"dt_lancamento": ent} if amb else {"dt_inicio": ent, "dt_final": alta})
            conta.update({"vl_total_conta": total, "sn_fechada": "S" if fechada else "N",
                          "dt_ultima_atualizacao": alta + timedelta(days=1)})
            t["reg_amb" if amb else "reg_fat"].append(conta)
            t["itreg_amb" if amb else "itreg_fat"].extend(linhas)
            if rem and rem["dt_retorno"]:
                for li in linhas:
                    if r.random() >= conv[5]:
                        continue
                    m = r.choices(MOTIVOS, [x[3] for x in MOTIVOS])[0]
                    vl = li["vl_total_conta"] if m[4] is None else round(li["vl_total_conta"] * r.uniform(*m[4]), 2)
                    rec = r.random() < 0.4
                    glosas.append({"cd_glosas": 40000 + len(glosas), "cd_remessa": rem["cd_remessa"],
                                   "cd_reg_fat": None if amb else cd_conta,
                                   "cd_lancamento_fat": None if amb else li["cd_lancamento"],
                                   "cd_reg_amb": cd_conta if amb else None,
                                   "cd_lancamento_amb": li["cd_lancamento"] if amb else None,
                                   "cd_motivo_glosa": m[0], "vl_glosa": vl, "dt_glosa": rem["dt_retorno"],
                                   "sn_recursado": "S" if rec else "N",
                                   "vl_recursado": vl if rec else None,
                                   "dt_ultima_atualizacao": rem["dt_retorno"]})
                    if m[4] is not None and not t["_dupla"]:  # um item com duas glosas (motivos diferentes)
                        t["_dupla"].append(1)
                        glosas.append({**glosas[-1], "cd_glosas": 40000 + len(glosas), "cd_motivo_glosa": 6,
                                       "vl_glosa": round(li["vl_total_conta"] * 0.05, 2), "sn_recursado": "N",
                                       "vl_recursado": None})
    for rem in remessas.values():
        rem["dt_ultima_atualizacao"] = rem["dt_retorno"] or rem["dt_entrega_da_fatura"] or datetime.combine(
            rem["dt_competencia"], datetime.min.time())
    t["remessa_fatura"] = sorted(remessas.values(), key=lambda x: x["cd_remessa"])
    ordem = ["paciente", "convenio", "atendime", "pro_fat", "remessa_fatura", "reg_fat", "itreg_fat", "reg_amb",
             "itreg_amb", "mot_glosa", "glosas"]
    return sujar({k: t[k] for k in ordem}, semente)


def _sem_acento(s):
    return s and unicodedata.normalize("NFKD", s).encode("ascii", "ignore").decode()


def sujar(t: Dict[str, List[Dict[str, Any]]], semente: int) -> Dict[str, List[Dict[str, Any]]]:
    """Os defeitos de um banco de producao, com RNG proprio: o dado limpo de gerar() nao muda."""
    r = random.Random(semente + 1)
    for p in t["paciente"]:
        p["nm_paciente"], p["nm_mae"] = _sem_acento(p["nm_paciente"]), _sem_acento(p["nm_mae"])
        x = r.random()
        if x < 0.15:  # cadastro antigo, digitado com mascara
            p["nr_cpf"] = f"{p['nr_cpf'][:3]}.{p['nr_cpf'][3:6]}.{p['nr_cpf'][6:9]}-{p['nr_cpf'][9:]}"
        elif x < 0.18:  # erro de digitacao: o digito verificador nao fecha
            p["nr_cpf"] = p["nr_cpf"][:10] + str((int(p["nr_cpf"][10]) + 1) % 10)
        if r.random() < 0.02:
            p["dt_nascimento"] = date(1900, 1, 1)  # "nao informado" de sistema legado
    for p in r.sample(t["paciente"], 6):  # a mesma pessoa cadastrada de novo na recepcao, sem atendimento
        t["paciente"].append({**p, "cd_paciente": 300000 + len(t["paciente"]), "nm_paciente": p["nm_paciente"] + " ",
                              "dt_cadastro": p["dt_cadastro"] + timedelta(days=200),
                              "dt_ultima_atualizacao": p["dt_cadastro"] + timedelta(days=200)})
    retornadas = {x["cd_remessa"]: x["dt_retorno"] for x in t["remessa_fatura"] if x["dt_retorno"]}
    for conta in r.sample([c for c in t["reg_fat"] + t["reg_amb"] if c["cd_remessa"] in retornadas], 8):
        conta["sn_fechada"] = "N"  # reaberta para refaturar o glosado; segue na remessa original
        conta["dt_ultima_atualizacao"] = retornadas[conta["cd_remessa"]] + timedelta(days=3)
    for g in r.sample([g for g in t["glosas"] if g["sn_recursado"] == "S"], 4):  # recurso aceito: estorno
        t["glosas"].append({**g, "cd_glosas": 40000 + len(t["glosas"]), "vl_glosa": -g["vl_glosa"],
                            "dt_glosa": g["dt_glosa"] + timedelta(days=20), "vl_recursado": None,
                            "dt_ultima_atualizacao": g["dt_glosa"] + timedelta(days=20)})
    return t


# Ruido: o schema de um HIS em producao tem centenas de tabelas que nao sao do faturamento
MODULOS = ["FAT", "ATE", "INT", "PSS", "EST", "FIN", "CTB", "SUP", "LAB", "IMG", "NUT", "FAR", "SAM", "CME", "AGE"]
TIPOS = ["PAR", "LOG", "TMP", "CFG", "AUD", "HIST", "AUX"]
COISAS = ["CONFIG", "IMPRESSAO", "INTEGRACAO", "USUARIO", "ACESSO", "FILA", "MENSAGEM", "LOTE", "REGRA",
          "TABELA", "CAMPO", "ERRO", "ROTINA", "JOB", "EXPORTACAO", "IMPORTACAO", "TELA", "PERFIL", "SETOR", "TURNO"]


def ruido(semente: int = SEMENTE, n: int = 300):
    """[(tabela, ddl, linhas)]: parametro, log, auditoria e temporaria, ~70% vazias. Duas imitam o schema real com
    colunas que confundem (preco por convenio, log de acesso ao paciente): o reconhecedor nao pode tomar nenhuma
    por conta, item ou paciente."""
    r = random.Random(semente + 2)
    nomes = r.sample(sorted({f"{tp}_{m}_{c}" for tp in TIPOS for m in MODULOS for c in COISAS}), n - 2)
    out = [("tab_preco_convenio",
            "CREATE TABLE tab_preco_convenio (cd_convenio NUMBER(4) NOT NULL, cd_pro_fat VARCHAR2(8) NOT NULL, "
            "vl_preco NUMBER(12,2) NOT NULL, dt_vigencia DATE NOT NULL, "
            "CONSTRAINT pk_tab_preco_convenio PRIMARY KEY (cd_convenio, cd_pro_fat, dt_vigencia))",
            [{"cd_convenio": c[0], "cd_pro_fat": p[0], "vl_preco": round(p[3] * r.uniform(0.9, 1.3), 2),
              "dt_vigencia": date(2026, 1, 1)} for c in CONVENIOS[:3] for p in PRO_FAT]),
           ("log_acesso_paciente",
            "CREATE TABLE log_acesso_paciente (cd_log NUMBER(10) PRIMARY KEY, cd_paciente NUMBER(10), "
            "nm_usuario VARCHAR2(30) NOT NULL, ds_tela VARCHAR2(40), dt_acesso DATE NOT NULL)",
            [{"cd_log": i, "cd_paciente": 300000 + r.randint(0, 239), "nm_usuario": f"USU{r.randint(1, 40):03d}",
              "ds_tela": r.choice(["M_PACIENTE", "M_ATENDIME", "M_CONTA"]),
              "dt_acesso": INICIO + timedelta(minutes=r.randint(0, 200000))} for i in range(1, 501)])]
    for nome in (x.lower() for x in nomes):
        chave = "cd_" + nome.split("_", 1)[1][:27]
        cols = [(chave, "NUMBER(10)")] + ([("cd_convenio", "NUMBER(4)")] if r.random() < 0.15 else []) + [
            ("ds_valor", "VARCHAR2(200)"), ("sn_ativo", "CHAR(1)"), ("nm_usuario", "VARCHAR2(30)"),
            ("dt_atualizacao", "DATE")]
        ddl = (f"CREATE TABLE {nome} (" + ", ".join(f"{c} {tp}" for c, tp in cols)
               + f", CONSTRAINT pk_{nome[:27]} PRIMARY KEY ({chave}))")
        linhas = [] if r.random() >= 0.3 else [
            {chave: i, **({"cd_convenio": r.choice(CONVENIOS)[0]} if cols[1][0] == "cd_convenio" else {}),
             "ds_valor": f"VALOR {i}", "sn_ativo": r.choice("SN"), "nm_usuario": f"USU{r.randint(1, 40):03d}",
             "dt_atualizacao": INICIO + timedelta(days=r.randint(0, 190))} for i in range(1, r.randint(3, 60))]
        out.append((nome, ddl, linhas))
    return out


def esperado(semente: int = SEMENTE) -> Dict[str, Any]:
    """Vinculo de pacientes e glosa por convenio e por motivo TISS, so das remessas com retorno."""
    t = gerar(semente)
    cpfs = {p["NR_CPF"] for p in pacientes_tasy() if p["NR_CPF"]}
    retornadas = {x["cd_remessa"] for x in t["remessa_fatura"] if x["dt_retorno"]}
    cobrado: Dict[int, float] = defaultdict(float)
    for conta_t, item_t, k in (("reg_fat", "itreg_fat", "cd_reg_fat"), ("reg_amb", "itreg_amb", "cd_reg_amb")):
        conv = {c[k]: c["cd_convenio"] for c in t[conta_t] if c["cd_remessa"] in retornadas}
        for it in t[item_t]:
            if it[k] in conv:
                cobrado[conv[it[k]]] += it["vl_total_conta"]
    conv_rem = {x["cd_remessa"]: x["cd_convenio"] for x in t["remessa_fatura"]}
    tiss = {m[0]: m[2] for m in MOTIVOS}
    glosado: Dict[int, float] = defaultdict(float)
    por_motivo: Dict[str, float] = defaultdict(float)
    por_item: Dict[tuple, Dict[int, float]] = defaultdict(lambda: defaultdict(float))
    for g in t["glosas"]:
        glosado[conv_rem[g["cd_remessa"]]] += g["vl_glosa"]
        por_item[(g["cd_reg_fat"], g["cd_lancamento_fat"], g["cd_reg_amb"], g["cd_lancamento_amb"])][
            g["cd_motivo_glosa"]] += g["vl_glosa"]
    for motivos in por_item.values():  # como a Central: o item fica com o motivo de maior valor (empate: menor codigo)
        principal = min(motivos, key=lambda m: (-motivos[m], m))
        por_motivo[tiss[principal]] += sum(motivos.values())
    return {"pacientes": len(t["paciente"]),
            # como a Central: so os digitos do CPF; digito errado nao casa, cadastro duplicado conta duas vezes
            "vinculados": sum(1 for p in t["paciente"] if p["nr_cpf"] and re.sub(r"\D", "", p["nr_cpf"]) in cpfs),
            "itens_glosados": len(t["glosas"]),
            "glosa_por_convenio": {c: {"cobrado": round(cobrado[c], 2), "glosado": round(glosado[c], 2),
                                       "taxa_pct": round(100 * glosado[c] / cobrado[c], 2) if cobrado[c] else None}
                                   for c in sorted(cobrado)},
            "glosa_por_motivo_tiss": {k: round(v, 2) for k, v in sorted(por_motivo.items())}}


def _inserts(f, tabela: str, linhas: List[Dict[str, Any]]):
    """INSERT ALL de 200 linhas: o 11g nao aceita VALUES com varias linhas."""
    colunas = list(linhas[0])
    f.write(f"\n-- {tabela}: {len(linhas)} linhas\n")
    for i in range(0, len(linhas), 200):
        f.write("INSERT ALL\n" + "\n".join(
            f"  INTO {tabela} ({', '.join(colunas)}) VALUES (" + ", ".join(valor_oracle(l[c]) for c in colunas) + ")"
            for l in linhas[i:i + 200]) + "\nSELECT 1 FROM dual;\n")


def escrever(tabelas, caminho: str):
    with open(caminho, "w", encoding="utf-8", newline="\n") as f:
        f.write(f"-- Gerado por mv_faturamento/gerar_mv.py (semente {SEMENTE}). Nao edite a mao.\n"
                "ALTER SESSION SET CURRENT_SCHEMA = dbamv;\n")
        for tabela, linhas in tabelas.items():
            _inserts(f, tabela, linhas)
        f.write("COMMIT;\n")


def escrever_ruido(tabelas, caminho: str):
    """DDL, dados, GRANT e sinonimo do QIMED_LEITURA de cada tabela de ruido."""
    with open(caminho, "w", encoding="utf-8", newline="\n") as f:
        f.write(f"-- Gerado por mv_faturamento/gerar_mv.py (semente {SEMENTE}). Nao edite a mao.\n"
                f"-- {len(tabelas)} tabelas fora do faturamento, como no schema de um HIS em producao.\n"
                "ALTER SESSION SET CURRENT_SCHEMA = dbamv;\n")
        for nome, ddl, linhas in tabelas:
            f.write(f"\n{ddl};\nGRANT SELECT ON {nome} TO qimed_leitura;\n"
                    f"CREATE SYNONYM qimed_leitura.{nome} FOR dbamv.{nome};\n")
            if linhas:
                _inserts(f, nome, linhas)
        f.write("COMMIT;\n")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--saida", default=os.path.join(AQUI, "sql"), help="pasta do 02_dados.sql e do 03_ruido.sql")
    ap.add_argument("--resumo", action="store_true")
    a = ap.parse_args()
    tabelas = gerar()
    print({t: len(l) for t, l in tabelas.items()})
    print(esperado())
    if not a.resumo:
        escrever(tabelas, os.path.join(a.saida, "02_dados.sql"))
        escrever_ruido(ruido(), os.path.join(a.saida, "03_ruido.sql"))


if __name__ == "__main__":
    main()
