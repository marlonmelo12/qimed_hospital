-- LabVida (ficticio): sistema de laboratorio do hospital do mock TASY. Dados em 02_dados.sql.gz.
CREATE TABLE paciente_cadastro (
    id_paciente   INTEGER PRIMARY KEY,
    nome_completo VARCHAR(120) NOT NULL,
    cpf           VARCHAR(14),
    dt_nasc       DATE,
    sexo          VARCHAR(10),
    email         VARCHAR(120),
    celular       VARCHAR(20),
    convenio      VARCHAR(40),
    criado_em     TIMESTAMP NOT NULL,
    atualizado_em TIMESTAMP
);

CREATE TABLE pedido_exame (
    id_pedido       INTEGER PRIMARY KEY,
    id_paciente     INTEGER NOT NULL REFERENCES paciente_cadastro (id_paciente),
    dt_pedido       TIMESTAMP NOT NULL,
    crm_solicitante VARCHAR(10),
    convenio        VARCHAR(40),
    situacao        VARCHAR(12) NOT NULL,
    atualizado_em   TIMESTAMP
);

CREATE TABLE resultado_exame (
    id_resultado    INTEGER PRIMARY KEY,
    id_pedido       INTEGER NOT NULL REFERENCES pedido_exame (id_pedido),
    cod_exame       VARCHAR(10) NOT NULL,
    descricao_exame VARCHAR(80),
    valor           NUMERIC(10, 2),
    unidade         VARCHAR(10),
    dt_liberacao    TIMESTAMP,
    atualizado_em   TIMESTAMP
);

-- sem chave primaria de proposito
CREATE TABLE log_integracao (
    dt_evento TIMESTAMP,
    origem    VARCHAR(10),
    mensagem  VARCHAR(200)
);
