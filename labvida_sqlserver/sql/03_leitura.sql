-- usuario do QIMED: so leitura (db_datareader). Senha fora da politica do Windows de proposito, so no mock.
USE master;
CREATE LOGIN qimed_leitura WITH PASSWORD = 'leitura_mock', CHECK_POLICY = OFF, DEFAULT_DATABASE = labvida;
GO
USE labvida;
CREATE USER qimed_leitura FOR LOGIN qimed_leitura WITH DEFAULT_SCHEMA = dbo;
ALTER ROLE db_datareader ADD MEMBER qimed_leitura;
GO
