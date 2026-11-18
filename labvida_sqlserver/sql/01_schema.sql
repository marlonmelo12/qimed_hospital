-- LabVida em SQL Server: as tabelas do labvida/ com os tipos do SQL Server. Dados em 02_dados.sql.
CREATE DATABASE labvida COLLATE Latin1_General_CI_AI;
GO
USE labvida;
GO
CREATE TABLE dbo.paciente_cadastro (
    id_paciente   INT PRIMARY KEY,
    nome_completo NVARCHAR(120) NOT NULL,
    cpf           NVARCHAR(14),
    dt_nasc       DATE,
    sexo          NVARCHAR(10),
    email         NVARCHAR(120),
    celular       NVARCHAR(20),
    convenio      NVARCHAR(40),
    ativo         BIT NOT NULL DEFAULT 1,
    rowguid       UNIQUEIDENTIFIER NOT NULL DEFAULT NEWID(),
    criado_em     DATETIME NOT NULL,
    atualizado_em DATETIME
);
CREATE TABLE dbo.pedido_exame (
    id_pedido       INT PRIMARY KEY,
    id_paciente     INT NOT NULL REFERENCES dbo.paciente_cadastro (id_paciente),
    dt_pedido       DATETIME NOT NULL,
    crm_solicitante NVARCHAR(10),
    convenio        NVARCHAR(40),
    situacao        NVARCHAR(12) NOT NULL,
    atualizado_em   DATETIME
);
CREATE TABLE dbo.resultado_exame (
    id_resultado    INT PRIMARY KEY,
    id_pedido       INT NOT NULL REFERENCES dbo.pedido_exame (id_pedido),
    cod_exame       NVARCHAR(10) NOT NULL,
    descricao_exame NVARCHAR(80),
    valor           DECIMAL(10, 2),
    unidade         NVARCHAR(10),
    dt_liberacao    DATETIME,
    atualizado_em   DATETIME
);
GO
-- fora do dbo de proposito: o usuario de leitura enxerga, a descoberta (que le o schema padrao) nao
CREATE SCHEMA integracao;
GO
CREATE TABLE integracao.fila_hl7 (id INT PRIMARY KEY, recebido_em DATETIME NOT NULL, mensagem NVARCHAR(400));
GO
-- sem chave primaria de proposito
CREATE TABLE dbo.log_integracao (
    dt_evento DATETIME,
    origem    NVARCHAR(10),
    mensagem  NVARCHAR(200)
);
GO
