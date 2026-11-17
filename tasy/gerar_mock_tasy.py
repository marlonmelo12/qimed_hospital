"""
Gera tasy/sql/02_dados.sql.gz: dados deterministicos do HIS estilo TASY (schema em tasy/sql/01_schema.sql).

Um hospital de rede privada, entradas de 01/05/2026 a 10/11/2026 18h (o "agora" do mock e 10/11 23h, com
pacientes ainda internados) e escala prevista para os 7 dias seguintes. Embute regras de
glosa conhecidas para dar sinal ao modelo do caso 1 (o gerador definitivo do hospital simulado fica com o time de ML):
  1 falta de senha de autorizacao em item que exige autorizacao
  2 conta enviada depois do prazo contratual do convenio
  3 diarias cobradas acima da permanencia
  4 valor acima do contratado (mais um ruido pequeno aleatorio)
Nomes, documentos e codigos sao ficticios. So biblioteca padrao: roda no container do pipeline.

Uso: python tasy/gerar_mock_tasy.py [--saida tasy/sql/02_dados.sql.gz] [--semente 20261111]
"""
import argparse
import gzip
import math
import os
import random
from datetime import date, datetime, timedelta

AQUI = os.path.dirname(os.path.abspath(__file__))
INICIO, FIM = datetime(2026, 5, 1), datetime(2026, 11, 10, 18, 0)  # entradas ate perto de AGORA: ha internados
AGORA = datetime(2026, 11, 10, 23, 0)
ESTAB = 1

ESPECIALIDADES = [(1, "Clínica médica"), (2, "Cirurgia geral"), (3, "Cardiologia"), (4, "Ortopedia"),
                  (5, "Pediatria"), (6, "Ginecologia e obstetrícia"), (7, "Medicina intensiva"), (8, "Emergência")]
# (codigo, descricao, classificacao, leitos)
SETORES = [(10, "Pronto-socorro adulto", 1, 0), (20, "Clínica médica", 3, 10), (21, "Clínica cirúrgica", 3, 8),
           (22, "Maternidade", 3, 6), (30, "UTI adulto", 4, 6), (40, "Ambulatório de especialidades", 8, 0)]
# (codigo, descricao, tipo, registro ANS, prazo de envio em dias, fator de preco, peso)
CONVENIOS = [(1, "Particular", 1, None, 30, 1.20, 0.10), (2, "Operadora Alfa Saúde", 2, "900001", 60, 1.00, 0.40),
             (3, "Operadora Beta Planos", 2, "900002", 45, 0.95, 0.30),
             (4, "Operadora Gama Cooperativa", 2, "900003", 90, 0.90, 0.20)]
MOTIVOS_ALTA = [(1, "Alta melhorado", "N"), (2, "Alta a pedido", "N"), (3, "Transferência", "N"), (4, "Óbito", "S"),
                (5, "Evasão", "N")]
MOTIVOS_GLOSA = [(1, "Ausência de senha de autorização", "9101"), (2, "Conta enviada fora do prazo", "9102"),
                 (3, "Quantidade cobrada acima da permanência", "9103"), (4, "Valor acima do contratado", "9104")]
PROCEDIMENTOS = {
    "90001001": ("Consulta ambulatorial", "N", 180), "90001002": ("Consulta em pronto-socorro", "N", 220),
    "90002001": ("Diária de enfermaria", "N", 650), "90002002": ("Diária de UTI adulto", "S", 3200),
    "90003001": ("Hemograma completo", "N", 25), "90003002": ("Raio-X de tórax", "N", 90),
    "90003003": ("Tomografia de crânio", "S", 850), "90004001": ("Apendicectomia", "S", 4800),
    "90004002": ("Colecistectomia videolaparoscópica", "S", 7200), "90004003": ("Parto normal", "N", 2600),
    "90004004": ("Cesariana", "S", 3900), "90004005": ("Artroplastia de quadril", "S", 18500),
    "90005001": ("Taxa de sala cirúrgica", "N", 1200),
}
MATERIAIS = {1: ("Soro fisiológico 500 ml", "N", 8.5), 2: ("Equipo macrogotas", "N", 6.0),
             3: ("Ceftriaxona 1 g", "N", 32.0), 4: ("Enoxaparina 40 mg", "N", 45.0),
             5: ("Prótese de quadril", "S", 22000.0), 6: ("Fio de sutura", "N", 18.0),
             7: ("Cateter venoso central", "S", 380.0), 8: ("Luva estéril", "N", 3.2)}
# perfil de internacao: (setor, CIDs, cirurgia, chance de UTI, mediana de permanencia em dias) e peso do perfil
PERFIS_INTERNACAO = [
    (20, ["J189", "I509", "N390", "J441", "A419"], None, 0.15, 4),
    (21, ["K358"], "90004001", 0.03, 2), (21, ["K802"], "90004002", 0.03, 2),
    (21, ["S720"], "90004005", 0.10, 5),
    (22, ["O800"], "90004003", 0.01, 2), (22, ["O821"], "90004004", 0.02, 3),
]
PESOS_INTERNACAO = [0.45, 0.10, 0.12, 0.08, 0.13, 0.12]
CIDS_PS = ["R104", "J069", "S934", "R51", "N23"]
CIDS_AMB = ["Z000", "I10", "E119", "M545", "J304"]
CIDS_SECUNDARIOS = ["I10", "E119", "J449", "N189", "E669"]
NOMES = ["Ana", "Bruno", "Carla", "Daniel", "Eduarda", "Felipe", "Gabriela", "Henrique", "Isabela", "João",
         "Juliana", "Lucas", "Mariana", "Nicolas", "Olívia", "Paulo", "Rafaela", "Samuel", "Tatiane", "Vinícius",
         "Larissa", "Marcos", "Patrícia", "Rodrigo", "Sofia", "Tiago", "Valéria", "Wagner", "Yasmin", "Igor"]
SOBRENOMES = ["Silva", "Souza", "Oliveira", "Pereira", "Lima", "Carvalho", "Ferreira", "Rodrigues", "Almeida",
              "Costa", "Gomes", "Martins", "Araújo", "Ribeiro", "Barbosa", "Rocha", "Dias", "Moreira", "Teixeira",
              "Cardoso", "Mendes", "Nunes", "Machado", "Freitas", "Vieira", "Monteiro", "Pinto", "Ramos", "Moura",
              "Campos"]
USUARIOS = ["tasy.adm", "tasy.recep01", "tasy.recep02", "tasy.enf01", "tasy.enf02", "tasy.fat01", "tasy.fat02"]


class Gerador:
    def __init__(self, semente: int):
        self.r = random.Random(semente)
        self.t = {k: [] for k in (
            "ESTABELECIMENTO", "ESPECIALIDADE_MEDICA", "SETOR_ATENDIMENTO", "UNIDADE_ATENDIMENTO", "CONVENIO",
            "MOTIVO_ALTA", "MOTIVO_GLOSA", "PROCEDIMENTO", "MATERIAL", "PESSOA_FISICA", "MEDICO",
            "ATENDIMENTO_PACIENTE", "ATEND_CATEGORIA_CONVENIO", "DIAGNOSTICO_DOENCA", "ATEND_PACIENTE_UNIDADE",
            "ESCALA_PLANTAO", "CONTA_PACIENTE", "PROCEDIMENTO_PACIENTE", "MATERIAL_ATEND_PACIENTE",
            "CONVENIO_RETORNO", "CONVENIO_RETORNO_ITEM")}
        self.seq = {}
        self.ocupacao = {}  # NR_SEQ_INTERNO do leito -> [(entrada, saida)]

    def prox(self, nome: str) -> int:
        self.seq[nome] = self.seq.get(nome, 0) + 1
        return self.seq[nome]

    def add(self, tabela: str, **linha):
        linha.setdefault("NM_USUARIO", self.r.choice(USUARIOS))
        self.t[tabela].append(linha)

    def data_entre(self, a: datetime, b: datetime) -> datetime:
        return a + timedelta(seconds=self.r.randint(0, int((b - a).total_seconds())))

    def cpf(self) -> str:
        d = [self.r.randint(0, 9) for _ in range(9)]
        for n in (10, 11):
            s = sum(x * (n - i) for i, x in enumerate(d)) % 11
            d.append(0 if s < 2 else 11 - s)
        return "".join(map(str, d))

    def nome(self) -> str:
        return f"{self.r.choice(NOMES)} {self.r.choice(SOBRENOMES)} {self.r.choice(SOBRENOMES)}"

    # cadastros ------------------------------------------------------------------------------------------------
    def cadastros(self):
        base = datetime(2026, 1, 15, 9, 0)
        self.add("ESTABELECIMENTO", CD_ESTABELECIMENTO=ESTAB, NM_FANTASIA="Hospital Simulado Rede Sul",
                 CD_CNES="9900011", DT_ATUALIZACAO=base)
        for cd, ds in ESPECIALIDADES:
            self.add("ESPECIALIDADE_MEDICA", CD_ESPECIALIDADE=cd, DS_ESPECIALIDADE=ds, DT_ATUALIZACAO=base)
        self.leitos = {}
        for cd, ds, classif, n in SETORES:
            self.add("SETOR_ATENDIMENTO", CD_SETOR_ATENDIMENTO=cd, CD_ESTABELECIMENTO=ESTAB, DS_SETOR_ATENDIMENTO=ds,
                     CD_CLASSIF_SETOR=classif, IE_SITUACAO="A", DT_ATUALIZACAO=base)
            self.leitos[cd] = []
            for i in range(n):
                seq = self.prox("leito")
                self.leitos[cd].append(seq)
                self.ocupacao[seq] = []
                self.add("UNIDADE_ATENDIMENTO", NR_SEQ_INTERNO=seq, CD_SETOR_ATENDIMENTO=cd,
                         CD_UNIDADE_BASICA=f"{cd}{i // 2 + 1:02d}", CD_UNIDADE_COMPL="AB"[i % 2],
                         IE_STATUS_UNIDADE="L", DT_ATUALIZACAO=base)
        for cd, ds, tipo, ans, prazo, _, _ in CONVENIOS:
            self.add("CONVENIO", CD_CONVENIO=cd, DS_CONVENIO=ds, IE_TIPO_CONVENIO=tipo, CD_REGISTRO_ANS=ans,
                     QT_DIAS_PRAZO_ENVIO=prazo, DT_ATUALIZACAO=base)
        for cd, ds, obito in MOTIVOS_ALTA:
            self.add("MOTIVO_ALTA", CD_MOTIVO_ALTA=cd, DS_MOTIVO_ALTA=ds, IE_OBITO=obito, DT_ATUALIZACAO=base)
        for cd, ds, tiss in MOTIVOS_GLOSA:
            self.add("MOTIVO_GLOSA", CD_MOTIVO_GLOSA=cd, DS_MOTIVO_GLOSA=ds, CD_MOTIVO_TISS=tiss, DT_ATUALIZACAO=base)
        for cd, (ds, aut, vl) in PROCEDIMENTOS.items():
            self.add("PROCEDIMENTO", CD_PROCEDIMENTO=cd, DS_PROCEDIMENTO=ds, IE_ORIGEM_PROCED=8,
                     IE_EXIGE_AUTORIZACAO=aut, VL_REFERENCIA=vl, DT_ATUALIZACAO=base)
        for cd, (ds, alto, vl) in MATERIAIS.items():
            self.add("MATERIAL", CD_MATERIAL=cd, DS_MATERIAL=ds, IE_ALTO_CUSTO=alto, VL_REFERENCIA=vl,
                     DT_ATUALIZACAO=base)

    def pessoas(self, n_pacientes=1200):
        base = datetime(2026, 1, 15, 9, 0)
        # profissionais: 12 medicos, 14 enfermeiros, 14 tecnicos
        self.medicos, self.enfermeiros, self.tecnicos = [], [], []
        for i in range(40):
            cd = str(900001 + i)
            self.add("PESSOA_FISICA", CD_PESSOA_FISICA=cd, NM_PESSOA_FISICA=self.nome(),
                     DT_NASCIMENTO=date(1965 + self.r.randint(0, 32), self.r.randint(1, 12), self.r.randint(1, 28)),
                     IE_SEXO=self.r.choice("MF"), NR_CPF=self.cpf(), NR_CARTAO_NAC_SUS=None, NM_MAE=None,
                     NR_TELEFONE_CELULAR=f"519{self.r.randint(10000000, 99999999)}", DT_OBITO=None,
                     IE_FUNCIONARIO="S", DT_ATUALIZACAO=base)
            if i < 12:
                self.medicos.append(cd)
                esp = [1, 1, 2, 2, 3, 4, 5, 6, 7, 7, 8, 8][i]
                self.add("MEDICO", CD_PESSOA_FISICA=cd, NR_CRM=str(self.r.randint(10000, 99999)), UF_CRM="RS",
                         CD_ESPECIALIDADE=esp, IE_SITUACAO="A", DT_ATUALIZACAO=base)
            else:
                (self.enfermeiros if i < 26 else self.tecnicos).append(cd)
        self.pacientes = []
        for i in range(n_pacientes):
            cd = str(100001 + i)
            idade = min(95, int(self.r.expovariate(1 / 38)))
            nasc = date(2026 - idade, self.r.randint(1, 12), self.r.randint(1, 28))
            sexo = "I" if self.r.random() < 0.01 else self.r.choice("MF")
            self.pacientes.append({"cd": cd, "idade": idade, "sexo": sexo})
            self.add("PESSOA_FISICA", CD_PESSOA_FISICA=cd, NM_PESSOA_FISICA=self.nome(), DT_NASCIMENTO=nasc,
                     IE_SEXO=sexo, NR_CPF=None if self.r.random() < 0.05 else self.cpf(),
                     NR_CARTAO_NAC_SUS=f"7{self.r.randint(10**13, 10**14 - 1)}", NM_MAE=self.nome(),
                     NR_TELEFONE_CELULAR=f"519{self.r.randint(10000000, 99999999)}", DT_OBITO=None,
                     IE_FUNCIONARIO="N", DT_ATUALIZACAO=self.data_entre(INICIO - timedelta(days=90), INICIO))
        self.pf = {p["CD_PESSOA_FISICA"]: p for p in self.t["PESSOA_FISICA"]}

    def escala(self):
        """Dois turnos de 12 h por dia e setor com leito ou PS; faltas mais frequentes a noite e no fim de semana."""
        dia, ultimo = INICIO.date(), (AGORA + timedelta(days=7)).date()
        while dia <= ultimo:
            for setor in (10, 20, 21, 22, 30):
                for h in (7, 19):
                    ini = datetime(dia.year, dia.month, dia.day, h)
                    equipe = ([("M", c) for c in self.r.sample(self.medicos, 1)]
                              + [("E", c) for c in self.r.sample(self.enfermeiros, 2 if setor == 30 else 1)]
                              + [("T", c) for c in self.r.sample(self.tecnicos, 4 if setor == 30 else 2)])
                    p_falta = 0.04 + (0.03 if h == 19 else 0) + (0.03 if dia.weekday() >= 5 else 0)
                    for funcao, cd in equipe:
                        fim = ini + timedelta(hours=12)
                        situacao = "P" if ini > AGORA else ("F" if self.r.random() < p_falta else "R")
                        self.add("ESCALA_PLANTAO", NR_SEQUENCIA=self.prox("escala"), CD_PESSOA_FISICA=cd,
                                 CD_SETOR_ATENDIMENTO=setor, IE_FUNCAO=funcao, DT_INICIO=ini, DT_FIM=fim,
                                 IE_SITUACAO=situacao,
                                 DT_ATUALIZACAO=min(fim if situacao != "P" else ini - timedelta(days=10), AGORA))
            dia += timedelta(days=1)

    # assistencial e faturamento --------------------------------------------------------------------------------
    def leito_livre(self, setor: int, ini: datetime, fim: datetime):
        for seq in self.r.sample(self.leitos[setor], len(self.leitos[setor])):
            if all(fim <= a or ini >= (b or datetime.max) for a, b in self.ocupacao[seq]):
                self.ocupacao[seq].append((ini, fim))
                return seq
        return None  # lotado: paciente em leito extra, sem leito cadastrado

    def passagem(self, nr: int, setor: int, ini: datetime, fim, com_leito=True):
        seq = self.leito_livre(setor, ini, fim or AGORA + timedelta(days=30)) if com_leito else None
        self.add("ATEND_PACIENTE_UNIDADE", NR_SEQ_INTERNO=self.prox("passagem"), NR_ATENDIMENTO=nr,
                 CD_SETOR_ATENDIMENTO=setor, NR_SEQ_UNIDADE=seq, DT_ENTRADA_UNIDADE=ini, DT_SAIDA_UNIDADE=fim,
                 DT_ATUALIZACAO=min(fim or ini, AGORA))

    def atendimentos(self, n=2500):
        # em ordem de entrada: paciente com obito registrado nao volta
        for entrada in sorted(self.data_entre(INICIO, FIM) for _ in range(n)):
            pac = self.r.choice(self.pacientes)
            if self.pf[pac["cd"]]["DT_OBITO"]:
                continue
            nr = self.prox("atendimento")
            sorteio = self.r.random()
            tipo = 1 if sorteio < 0.25 else (3 if sorteio < 0.55 else 8)
            itens = []  # (codigo, quantidade cobrada, data, excesso cobrado alem do realizado)
            materiais = []
            dias_uti = 0
            if tipo == 1:
                setor, cids, cirurgia, p_uti, mediana = self.r.choices(PERFIS_INTERNACAO, PESOS_INTERNACAO)[0]
                carater = "E" if cirurgia in ("90004002", "90004005") or (setor == 22 and self.r.random() < 0.5) else "U"
                permanencia = max(1, round(self.r.lognormvariate(math.log(mediana), 0.5)))
                if self.r.random() < p_uti:
                    dias_uti = max(1, round(self.r.lognormvariate(math.log(4), 0.5)))
                # trechos (setor, dias) depois do PS; a alta e o fim do ultimo trecho
                trechos = [(30, dias_uti), (setor, permanencia)] if dias_uti and setor == 20 else (
                    [(setor, permanencia), (30, dias_uti)] if dias_uti else [(setor, permanencia)])
                t = entrada
                if carater == "U":
                    saida_ps = t + timedelta(hours=self.r.randint(2, 8))
                    self.passagem(nr, 10, t, saida_ps, com_leito=False)
                    t = saida_ps
                for i, (s, dias) in enumerate(trechos):
                    fim = t + timedelta(days=dias, hours=self.r.randint(0, 10) if i == len(trechos) - 1 else 0)
                    if t <= AGORA:
                        self.passagem(nr, s, t, fim if fim <= AGORA else None)
                    t = fim
                alta = t
                cid = self.r.choice(cids)
                excesso = self.r.choice([1, 2]) if self.r.random() < 0.06 else 0
                itens.append(("90002001", permanencia + excesso, entrada, excesso))
                if dias_uti:
                    excesso = 1 if self.r.random() < 0.06 else 0
                    itens.append(("90002002", dias_uti + excesso, entrada, excesso))
                    materiais.append((7, 1))
                if cirurgia:
                    itens += [(cirurgia, 1, entrada + timedelta(hours=6), 0),
                              ("90005001", 1, entrada + timedelta(hours=6), 0)]
                    if cirurgia == "90004005":
                        materiais.append((5, 1))
                itens += [(self.r.choice(["90003001", "90003002", "90003003"]), 1, entrada + timedelta(hours=2), 0)
                          for _ in range(self.r.randint(2, 6))]
                materiais += [(self.r.choice([1, 2, 3, 4, 6, 8]), self.r.randint(1, 10)) for _ in range(self.r.randint(2, 8))]
                obito = 0.15 if dias_uti else 0.02
                s = self.r.random()
                motivo = 4 if s < obito else (3 if s < obito + 0.02 else (2 if s < obito + 0.04 else (
                    5 if s < obito + 0.045 else 1)))
            elif tipo == 3:
                carater, cid, motivo = "U", self.r.choice(CIDS_PS), 1
                alta = entrada + timedelta(hours=self.r.randint(2, 10))
                self.passagem(nr, 10, entrada, alta, com_leito=False)
                itens.append(("90001002", 1, entrada, 0))
                itens += [(self.r.choice(["90003001", "90003002", "90003003"]), 1, entrada + timedelta(hours=1), 0)
                          for _ in range(self.r.randint(1, 3))]
                materiais += [(self.r.choice([1, 2, 8]), self.r.randint(1, 3)) for _ in range(self.r.randint(1, 3))]
            else:
                carater, cid, motivo = "E", self.r.choice(CIDS_AMB), 1
                alta = entrada + timedelta(minutes=self.r.randint(30, 60))
                self.passagem(nr, 40, entrada, alta, com_leito=False)
                itens.append(("90001001", 1, entrada, 0))
                itens += [("90003001", 1, entrada, 0)] * (1 if self.r.random() < 0.4 else 0)

            em_curso = alta > AGORA
            alta_registrada = None if em_curso else alta
            medico = self.r.choice(self.medicos)
            self.add("ATENDIMENTO_PACIENTE", NR_ATENDIMENTO=nr, CD_ESTABELECIMENTO=ESTAB, CD_PESSOA_FISICA=pac["cd"],
                     IE_TIPO_ATENDIMENTO=tipo, IE_CARATER_ATENDIMENTO=carater, DT_ENTRADA=entrada,
                     DT_ALTA=alta_registrada, CD_MOTIVO_ALTA=None if em_curso else motivo, CD_MEDICO_RESP=medico,
                     DT_ATUALIZACAO=min(alta, AGORA))
            if not em_curso and motivo == 4:
                self.pf[pac["cd"]].update(DT_OBITO=alta.date(), DT_ATUALIZACAO=alta)

            conv = self.r.choices(CONVENIOS, weights=[c[6] for c in CONVENIOS])[0]
            sem_senha = conv[2] == 2 and tipo == 1 and self.r.random() < 0.10
            self.add("ATEND_CATEGORIA_CONVENIO", NR_SEQ_INTERNO=self.prox("categoria"), NR_ATENDIMENTO=nr,
                     CD_CONVENIO=conv[0], CD_CATEGORIA="PADRAO" if conv[2] == 1 else self.r.choice(["ENF", "APTO"]),
                     NR_DOC_CONVENIO=None if conv[2] == 1 else f"{conv[0]}{self.r.randint(10**11, 10**12 - 1)}",
                     CD_SENHA=None if conv[2] == 1 or sem_senha or tipo != 1 else f"S{self.r.randint(10**8, 10**9 - 1)}",
                     DT_INICIO_VIGENCIA=entrada, DT_ATUALIZACAO=entrada + timedelta(hours=1))
            self.add("DIAGNOSTICO_DOENCA", NR_SEQUENCIA=self.prox("diagnostico"), NR_ATENDIMENTO=nr, CD_DOENCA=cid,
                     IE_CLASSIFICACAO_DOENCA="P", DT_DIAGNOSTICO=entrada + timedelta(hours=1), CD_MEDICO=medico,
                     DT_ATUALIZACAO=entrada + timedelta(hours=1))
            for sec in self.r.sample(CIDS_SECUNDARIOS, self.r.choice([0, 0, 1, 2])):
                self.add("DIAGNOSTICO_DOENCA", NR_SEQUENCIA=self.prox("diagnostico"), NR_ATENDIMENTO=nr,
                         CD_DOENCA=sec, IE_CLASSIFICACAO_DOENCA="S", DT_DIAGNOSTICO=entrada + timedelta(hours=2),
                         CD_MEDICO=medico, DT_ATUALIZACAO=entrada + timedelta(hours=2))
            self.conta(nr, conv, entrada, alta_registrada, itens, materiais, sem_senha)

    def conta(self, nr, conv, entrada, alta, itens, materiais, sem_senha):
        cd_conv, _, tipo_conv, _, prazo, fator, _ = conv
        nr_conta = self.prox("conta")
        envio = None
        if alta:
            atraso = self.r.lognormvariate(math.log(15), 0.6) if self.r.random() > 0.08 else prazo + self.r.randint(5, 40)
            envio = alta + timedelta(days=atraso)
        enviada = envio is not None and envio <= AGORA and tipo_conv == 2
        protocolo = int(f"{cd_conv}{envio:%Y%m}") if enviada else None
        procs, mats, total = [], [], 0.0
        for cd, qt, quando, excesso in itens:
            contratado = round(PROCEDIMENTOS[cd][2] * qt * fator, 2)
            acima = self.r.random() < 0.03
            vl = round(contratado * self.r.uniform(1.2, 1.4), 2) if acima else contratado
            seq = self.prox("proc")
            procs.append({"seq": seq, "cd": cd, "qt": qt, "vl": vl, "contratado": contratado, "excesso": excesso})
            self.add("PROCEDIMENTO_PACIENTE", NR_SEQUENCIA=seq, NR_INTERNO_CONTA=nr_conta, NR_ATENDIMENTO=nr,
                     CD_PROCEDIMENTO=cd, DT_PROCEDIMENTO=quando, QT_PROCEDIMENTO=qt, VL_PROCEDIMENTO=vl,
                     CD_MEDICO_EXECUTOR=self.r.choice(self.medicos), DT_ATUALIZACAO=min(alta or AGORA, AGORA))
            total += vl
        for cd, qt in materiais:
            vl = round(MATERIAIS[cd][2] * qt * fator, 2)
            seq = self.prox("material")
            mats.append({"seq": seq, "cd": cd, "vl": vl})
            self.add("MATERIAL_ATEND_PACIENTE", NR_SEQUENCIA=seq, NR_INTERNO_CONTA=nr_conta, NR_ATENDIMENTO=nr,
                     CD_MATERIAL=cd, DT_ATENDIMENTO=entrada + timedelta(hours=3), QT_MATERIAL=qt, VL_MATERIAL=vl,
                     DT_ATUALIZACAO=min(alta or AGORA, AGORA))
            total += vl
        referencia = (alta or entrada).date().replace(day=1)
        self.add("CONTA_PACIENTE", NR_INTERNO_CONTA=nr_conta, NR_ATENDIMENTO=nr, CD_CONVENIO_PARAMETRO=cd_conv,
                 DT_MESANO_REFERENCIA=referencia, IE_STATUS_ACERTO=2 if alta else 1, VL_CONTA=round(total, 2),
                 NR_SEQ_PROTOCOLO=protocolo, DT_ENVIO_PROTOCOLO=envio if enviada else None,
                 DT_ATUALIZACAO=min(envio if enviada else (alta or entrada), AGORA))
        if enviada:
            self.lotes.setdefault((cd_conv, protocolo), []).append(
                {"conta": nr_conta, "envio": envio, "procs": procs, "mats": mats, "sem_senha": sem_senha,
                 "fora_prazo": (envio - alta).days > prazo})

    def retornos(self):
        """Demonstrativo 30 dias depois do ultimo envio do lote, um item por procedimento e material."""
        for (cd_conv, protocolo), contas in sorted(self.lotes.items()):
            dt = max(c["envio"] for c in contas) + timedelta(days=30)
            if dt > AGORA:
                continue
            nr_ret = self.prox("retorno")
            self.add("CONVENIO_RETORNO", NR_SEQUENCIA=nr_ret, CD_CONVENIO=cd_conv, NR_SEQ_PROTOCOLO=protocolo,
                     DT_RETORNO=dt, DT_ATUALIZACAO=dt)
            for c in contas:
                glosa_prazo = c["fora_prazo"] and self.r.random() < 0.8
                for p in c["procs"]:
                    glosa, motivo = 0.0, None
                    if glosa_prazo:
                        glosa, motivo = p["vl"], 2
                    elif c["sem_senha"] and PROCEDIMENTOS[p["cd"]][1] == "S" and self.r.random() < 0.9:
                        glosa, motivo = p["vl"], 1
                    elif p["excesso"] and self.r.random() < 0.9:
                        glosa, motivo = round(p["vl"] * p["excesso"] / p["qt"], 2), 3
                    elif p["vl"] > p["contratado"] and self.r.random() < 0.85:
                        glosa, motivo = round(p["vl"] - p["contratado"], 2), 4
                    elif self.r.random() < 0.015:
                        glosa, motivo = round(p["vl"] * self.r.uniform(0.1, 0.3), 2), 4
                    self.item(nr_ret, c["conta"], p["vl"], glosa, motivo, proc=p["seq"], dt=dt)
                for m in c["mats"]:
                    glosa, motivo = (m["vl"], 2) if glosa_prazo else (0.0, None)
                    self.item(nr_ret, c["conta"], m["vl"], glosa, motivo, material=m["seq"], dt=dt)

    def item(self, nr_ret, conta, cobrado, glosa, motivo, dt, proc=None, material=None):
        self.add("CONVENIO_RETORNO_ITEM", NR_SEQUENCIA=self.prox("retorno_item"), NR_SEQ_RETORNO=nr_ret,
                 NR_INTERNO_CONTA=conta, NR_SEQ_PROCED=proc, NR_SEQ_MATERIAL=material, VL_COBRADO=cobrado,
                 VL_PAGO=round(cobrado - glosa, 2), VL_GLOSADO=round(glosa, 2), CD_MOTIVO_GLOSA=motivo,
                 DT_ATUALIZACAO=dt)

    def gerar(self):
        self.lotes = {}
        self.cadastros()
        self.pessoas()
        self.escala()
        self.atendimentos()
        self.retornos()
        agora_ocupados = {seq for seq, ints in self.ocupacao.items()
                          if any(a <= AGORA < b for a, b in ints)}
        for leito in self.t["UNIDADE_ATENDIMENTO"]:
            if leito["NR_SEQ_INTERNO"] in agora_ocupados:
                leito.update(IE_STATUS_UNIDADE="P", DT_ATUALIZACAO=AGORA - timedelta(hours=1))
        return self.t


def sql_valor(v) -> str:
    if v is None:
        return "NULL"
    if isinstance(v, datetime):
        return f"'{v:%Y-%m-%d %H:%M:%S}'"
    if isinstance(v, date):
        return f"'{v:%Y-%m-%d}'"
    if isinstance(v, (int, float)):
        return repr(v)
    return "'" + str(v).replace("'", "''") + "'"


def escrever(tabelas, caminho: str, semente: int):
    # .sql.gz: o entrypoint do MariaDB executa direto, e o arquivo fica pequeno no git
    with gzip.open(caminho, "wt", encoding="utf-8", newline="\n") as f:
        f.write(f"-- Gerado por scripts/gerar_mock_tasy.py (semente {semente}). Nao edite a mao.\n")
        f.write("SET NAMES utf8mb4;\n")
        for tabela, linhas in tabelas.items():
            if not linhas:
                continue
            colunas = list(linhas[0])
            f.write(f"\n-- {tabela}: {len(linhas)} linhas\n")
            for i in range(0, len(linhas), 500):
                valores = ",\n".join("(" + ", ".join(sql_valor(l[c]) for c in colunas) + ")"
                                     for l in linhas[i:i + 500])
                f.write(f"INSERT INTO {tabela} ({', '.join(colunas)}) VALUES\n{valores};\n")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--saida", default=os.path.join(AQUI, "sql", "02_dados.sql.gz"))
    ap.add_argument("--semente", type=int, default=20261111)
    a = ap.parse_args()
    tabelas = Gerador(a.semente).gerar()
    escrever(tabelas, a.saida, a.semente)
    print({t: len(l) for t, l in tabelas.items()})


if __name__ == "__main__":
    main()
