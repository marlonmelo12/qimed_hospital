-- Usuario do QIMED: so leitura, como a TI do hospital liberaria. Roda antes do dump (o GRANT vale para o banco que
-- o 02 cria).
CREATE USER IF NOT EXISTS 'qimed_leitura'@'%' IDENTIFIED BY 'leitura_mock';
GRANT SELECT ON frappe_hrms.* TO 'qimed_leitura'@'%';
