-- Hospital Sao Lucas (ficticio), segundo hospital da rede, com HIS no ESTILO do MV Soul em Oracle. Nao e o modelo de
-- dados real do MV (que nao e publico): segue o estilo (schema DBAMV, nomes curtos em maiusculas, SN_ para sim/nao,
-- conta de internacao separada da ambulatorial, item da conta com chave composta, glosa so do que foi glosado).
-- Dados em 02_dados.sql e ruido em 03_ruido.sql (gerar_mv.py). Oracle 11g R2, como em muito hospital.
-- Acesso como em producao: o QIMED_LEITURA nao tem tabela propria nem CURRENT_SCHEMA trocado; le por sinonimos
-- privados para o DBAMV, e o paciente por uma view (sem PK nem FK no catalogo). Parte das FKs nao e declarada
-- (atendime -> paciente, reg_amb -> atendime, glosas -> mot_glosa), como em schema que cresceu sem elas.

CREATE USER dbamv IDENTIFIED BY dbamv_dono DEFAULT TABLESPACE users QUOTA UNLIMITED ON users;
GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW TO dbamv;
CREATE USER qimed_leitura IDENTIFIED BY leitura_mock;
GRANT CREATE SESSION TO qimed_leitura;

ALTER SESSION SET CURRENT_SCHEMA = dbamv;

CREATE TABLE paciente (
    cd_paciente           NUMBER(10)    PRIMARY KEY,
    nm_paciente           VARCHAR2(120) NOT NULL,
    nr_cpf                VARCHAR2(14),          -- cadastro antigo guarda com mascara
    dt_nascimento         DATE,
    tp_sexo               CHAR(1),
    nm_mae                VARCHAR2(120),
    dt_cadastro           DATE          NOT NULL,
    dt_ultima_atualizacao DATE          NOT NULL
);

CREATE TABLE convenio (
    cd_convenio      NUMBER(4)    PRIMARY KEY,
    nm_convenio      VARCHAR2(60) NOT NULL,
    nr_registro_ans  VARCHAR2(6),
    tp_convenio      CHAR(1)      NOT NULL,        -- C convenio, P particular
    nr_dias_prazo    NUMBER(3)    NOT NULL         -- prazo de pagamento apos a entrega da remessa
);

-- TP_ATENDIMENTO: I internacao, A ambulatorio, U urgencia, E externo
CREATE TABLE atendime (
    cd_atendimento        NUMBER(10)  PRIMARY KEY,
    cd_paciente           NUMBER(10)  NOT NULL,
    cd_convenio           NUMBER(4)   NOT NULL REFERENCES convenio (cd_convenio),
    tp_atendimento        CHAR(1)     NOT NULL,
    dt_atendimento        DATE        NOT NULL,
    dt_alta               DATE,
    nr_guia               VARCHAR2(20),
    dt_ultima_atualizacao DATE        NOT NULL
);

-- CD_GRU_PRO: grupo de faturamento (PROC procedimento, MAT material, MED medicamento, TAX taxa, DIA diaria)
CREATE TABLE pro_fat (
    cd_pro_fat   VARCHAR2(8)   PRIMARY KEY,
    ds_pro_fat   VARCHAR2(80)  NOT NULL,
    cd_gru_pro   VARCHAR2(4)   NOT NULL,
    vl_tabela    NUMBER(12,2)  NOT NULL,
    sn_exige_aut CHAR(1)       NOT NULL
);

-- Remessa: lote de contas fechadas enviado ao convenio numa competencia; DT_RETORNO = demonstrativo recebido
CREATE TABLE remessa_fatura (
    cd_remessa            NUMBER(8)  PRIMARY KEY,
    cd_convenio           NUMBER(4)  NOT NULL REFERENCES convenio (cd_convenio),
    dt_competencia        DATE       NOT NULL,
    dt_entrega_da_fatura  DATE,
    dt_retorno            DATE,
    sn_fechada            CHAR(1)    NOT NULL,
    dt_ultima_atualizacao DATE       NOT NULL
);

-- Conta de internacao
CREATE TABLE reg_fat (
    cd_reg_fat            NUMBER(10)   PRIMARY KEY,
    cd_atendimento        NUMBER(10)   NOT NULL REFERENCES atendime (cd_atendimento),
    cd_convenio           NUMBER(4)    NOT NULL REFERENCES convenio (cd_convenio),
    cd_remessa            NUMBER(8)    REFERENCES remessa_fatura (cd_remessa),
    dt_inicio             DATE         NOT NULL,
    dt_final              DATE,
    vl_total_conta        NUMBER(14,2) NOT NULL,
    sn_fechada            CHAR(1)      NOT NULL,
    dt_ultima_atualizacao DATE         NOT NULL
);

CREATE TABLE itreg_fat (
    cd_reg_fat            NUMBER(10)   NOT NULL REFERENCES reg_fat (cd_reg_fat),
    cd_lancamento         NUMBER(5)    NOT NULL,
    cd_pro_fat            VARCHAR2(8)  NOT NULL REFERENCES pro_fat (cd_pro_fat),
    dt_lancamento         DATE         NOT NULL,
    qt_lancamento         NUMBER(9,2)  NOT NULL,
    vl_unitario           NUMBER(12,2) NOT NULL,
    vl_total_conta        NUMBER(14,2) NOT NULL,
    dt_ultima_atualizacao DATE         NOT NULL,
    CONSTRAINT pk_itreg_fat PRIMARY KEY (cd_reg_fat, cd_lancamento)
);

-- Conta ambulatorial (ambulatorio, urgencia, externo)
CREATE TABLE reg_amb (
    cd_reg_amb            NUMBER(10)   PRIMARY KEY,
    cd_atendimento        NUMBER(10)   NOT NULL,
    cd_convenio           NUMBER(4)    NOT NULL REFERENCES convenio (cd_convenio),
    cd_remessa            NUMBER(8)    REFERENCES remessa_fatura (cd_remessa),
    dt_lancamento         DATE         NOT NULL,
    vl_total_conta        NUMBER(14,2) NOT NULL,
    sn_fechada            CHAR(1)      NOT NULL,
    dt_ultima_atualizacao DATE         NOT NULL
);

CREATE TABLE itreg_amb (
    cd_reg_amb            NUMBER(10)   NOT NULL REFERENCES reg_amb (cd_reg_amb),
    cd_lancamento         NUMBER(5)    NOT NULL,
    cd_pro_fat            VARCHAR2(8)  NOT NULL REFERENCES pro_fat (cd_pro_fat),
    dt_lancamento         DATE         NOT NULL,
    qt_lancamento         NUMBER(9,2)  NOT NULL,
    vl_unitario           NUMBER(12,2) NOT NULL,
    vl_total_conta        NUMBER(14,2) NOT NULL,
    dt_ultima_atualizacao DATE         NOT NULL,
    CONSTRAINT pk_itreg_amb PRIMARY KEY (cd_reg_amb, cd_lancamento)
);

-- Motivo proprio do hospital, com o codigo TISS (tabela 38) correspondente
CREATE TABLE mot_glosa (
    cd_motivo_glosa  NUMBER(4)    PRIMARY KEY,
    ds_motivo_glosa  VARCHAR2(120) NOT NULL,
    cd_glosa_tiss    VARCHAR2(4)
);

-- Uma linha por item glosado (item pago integralmente nao aparece aqui). O item vem da conta de internacao
-- (CD_REG_FAT + CD_LANCAMENTO_FAT) ou da ambulatorial (CD_REG_AMB + CD_LANCAMENTO_AMB).
CREATE TABLE glosas (
    cd_glosas             NUMBER(10)   PRIMARY KEY,
    cd_remessa            NUMBER(8)    NOT NULL REFERENCES remessa_fatura (cd_remessa),
    cd_reg_fat            NUMBER(10),
    cd_lancamento_fat     NUMBER(5),
    cd_reg_amb            NUMBER(10),
    cd_lancamento_amb     NUMBER(5),
    cd_motivo_glosa       NUMBER(4)    NOT NULL,
    vl_glosa              NUMBER(14,2) NOT NULL,
    dt_glosa              DATE         NOT NULL,
    sn_recursado          CHAR(1)      NOT NULL,
    vl_recursado          NUMBER(14,2),
    dt_ultima_atualizacao DATE         NOT NULL,
    CONSTRAINT fk_glosas_itreg_fat FOREIGN KEY (cd_reg_fat, cd_lancamento_fat) REFERENCES itreg_fat (cd_reg_fat, cd_lancamento),
    CONSTRAINT fk_glosas_itreg_amb FOREIGN KEY (cd_reg_amb, cd_lancamento_amb) REFERENCES itreg_amb (cd_reg_amb, cd_lancamento)
);

-- Paciente pela view do DBA (sem o nome da mae); o resto por sinonimo para a tabela
CREATE VIEW vw_paciente AS SELECT cd_paciente, nm_paciente, nr_cpf, dt_nascimento, tp_sexo, dt_cadastro,
    dt_ultima_atualizacao FROM paciente;
GRANT SELECT ON vw_paciente TO qimed_leitura;
CREATE SYNONYM qimed_leitura.paciente FOR dbamv.vw_paciente;
GRANT SELECT ON convenio TO qimed_leitura;
CREATE SYNONYM qimed_leitura.convenio FOR dbamv.convenio;
GRANT SELECT ON atendime TO qimed_leitura;
CREATE SYNONYM qimed_leitura.atendime FOR dbamv.atendime;
GRANT SELECT ON pro_fat TO qimed_leitura;
CREATE SYNONYM qimed_leitura.pro_fat FOR dbamv.pro_fat;
GRANT SELECT ON remessa_fatura TO qimed_leitura;
CREATE SYNONYM qimed_leitura.remessa_fatura FOR dbamv.remessa_fatura;
GRANT SELECT ON reg_fat TO qimed_leitura;
CREATE SYNONYM qimed_leitura.reg_fat FOR dbamv.reg_fat;
GRANT SELECT ON itreg_fat TO qimed_leitura;
CREATE SYNONYM qimed_leitura.itreg_fat FOR dbamv.itreg_fat;
GRANT SELECT ON reg_amb TO qimed_leitura;
CREATE SYNONYM qimed_leitura.reg_amb FOR dbamv.reg_amb;
GRANT SELECT ON itreg_amb TO qimed_leitura;
CREATE SYNONYM qimed_leitura.itreg_amb FOR dbamv.itreg_amb;
GRANT SELECT ON mot_glosa TO qimed_leitura;
CREATE SYNONYM qimed_leitura.mot_glosa FOR dbamv.mot_glosa;
GRANT SELECT ON glosas TO qimed_leitura;
CREATE SYNONYM qimed_leitura.glosas FOR dbamv.glosas;
