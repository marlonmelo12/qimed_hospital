-- ProntoSul (ficticio): pronto-atendimento do hospital do mock TASY, em Oracle. Dados em 02_dados.sql
-- (mocks/prontosul/gerar_prontosul.py). Como um DBA de hospital entrega: as tabelas sao do usuario PRONTOSUL e o
-- QIMED recebe QIMED_LEITURA, so com SELECT, cuja sessao abre no schema PRONTOSUL por um logon trigger.
ALTER SESSION SET CONTAINER = FREEPDB1;

CREATE USER prontosul IDENTIFIED BY prontosul_dono QUOTA UNLIMITED ON users;
GRANT CREATE SESSION, CREATE TABLE TO prontosul;
CREATE USER qimed_leitura IDENTIFIED BY leitura_mock;
GRANT CREATE SESSION TO qimed_leitura;

ALTER SESSION SET CURRENT_SCHEMA = prontosul;

CREATE TABLE paciente (
    cd_paciente    NUMBER(10)    PRIMARY KEY,
    nm_paciente    VARCHAR2(120) NOT NULL,
    nr_cpf         VARCHAR2(11),
    dt_nascimento  DATE,
    tp_sexo        CHAR(1),
    ds_email       VARCHAR2(120),
    dt_cadastro    DATE          NOT NULL,
    dt_atualizacao DATE
);

CREATE TABLE atendimento_pa (
    cd_atendimento         NUMBER(10)   PRIMARY KEY,
    cd_paciente            NUMBER(10)   NOT NULL REFERENCES paciente (cd_paciente),
    dt_entrada             DATE         NOT NULL,
    dt_alta                DATE,
    ds_classificacao_risco VARCHAR2(10) NOT NULL,
    cd_cid                 VARCHAR2(5),
    dt_atualizacao         DATE         NOT NULL
);

-- chave composta de proposito: comum em HIS; o onboarding cataloga e pula
CREATE TABLE prescricao_item (
    cd_prescricao  NUMBER(10)   NOT NULL,
    nr_item        NUMBER(3)    NOT NULL,
    cd_atendimento NUMBER(10)   NOT NULL REFERENCES atendimento_pa (cd_atendimento),
    ds_item        VARCHAR2(80) NOT NULL,
    dt_atualizacao DATE         NOT NULL,
    CONSTRAINT pk_prescricao_item PRIMARY KEY (cd_prescricao, nr_item)
);

GRANT SELECT ON paciente TO qimed_leitura;
GRANT SELECT ON atendimento_pa TO qimed_leitura;
GRANT SELECT ON prescricao_item TO qimed_leitura;

CREATE OR REPLACE TRIGGER prontosul.trg_qimed_leitura_schema AFTER LOGON ON qimed_leitura.SCHEMA
BEGIN
    EXECUTE IMMEDIATE 'ALTER SESSION SET CURRENT_SCHEMA = PRONTOSUL';
END;
/
