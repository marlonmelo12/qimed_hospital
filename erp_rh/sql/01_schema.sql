-- ERP de RH e ponto (ficticio) do hospital do mock TASY. Dados em 02_dados.sql.gz (mocks/erp_rh/gerar_erp_rh.py).
-- SQL portavel (MariaDB e SQLite): os testes rodam o mesmo schema sem container.

CREATE TABLE setor (
    cod_setor    INT          NOT NULL PRIMARY KEY,
    descricao    VARCHAR(60)  NOT NULL,
    centro_custo VARCHAR(10)  NOT NULL
);

CREATE TABLE colaborador (
    matricula          INT          NOT NULL PRIMARY KEY,
    nome               VARCHAR(120) NOT NULL,
    cpf                CHAR(11),
    dt_nascimento      DATE,
    sexo               CHAR(1),
    cargo              VARCHAR(40)  NOT NULL,
    cod_setor          INT          NOT NULL REFERENCES setor (cod_setor),
    dt_admissao        DATE         NOT NULL,
    situacao_cadastral VARCHAR(10)  NOT NULL
);

-- uma linha por plantao escalado; registrada = batida do ponto (NULL quando faltou)
CREATE TABLE escala_ponto (
    id_marcacao           INT         NOT NULL PRIMARY KEY,
    matricula             INT         NOT NULL REFERENCES colaborador (matricula),
    cod_setor             INT         NOT NULL REFERENCES setor (cod_setor),
    dt_entrada_prevista   DATETIME    NOT NULL,
    dt_saida_prevista     DATETIME    NOT NULL,
    dt_entrada_registrada DATETIME,
    dt_saida_registrada   DATETIME,
    situacao              VARCHAR(12) NOT NULL,
    dt_alteracao          DATETIME    NOT NULL
);
