-- Gerado por mv_faturamento/gerar_mv.py (semente 20261117). Nao edite a mao.
-- 300 tabelas fora do faturamento, como no schema de um HIS em producao.
ALTER SESSION SET CURRENT_SCHEMA = dbamv;

CREATE TABLE tab_preco_convenio (cd_convenio NUMBER(4) NOT NULL, cd_pro_fat VARCHAR2(8) NOT NULL, vl_preco NUMBER(12,2) NOT NULL, dt_vigencia DATE NOT NULL, CONSTRAINT pk_tab_preco_convenio PRIMARY KEY (cd_convenio, cd_pro_fat, dt_vigencia));
GRANT SELECT ON tab_preco_convenio TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tab_preco_convenio FOR dbamv.tab_preco_convenio;

-- tab_preco_convenio: 45 linhas
INSERT ALL
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80010010', 162.92, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80010028', 138.38, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80020015', 654.13, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80020023', 1093.62, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80020031', 231.45, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80030010', 25.37, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80040016', 4143.97, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80050011', 823.83, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80050029', 3005.76, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80060017', 1529.77, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80070012', 9.77, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80070020', 314.75, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80080018', 42.86, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80080026', 4.54, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (10, '80080034', 45.74, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80010010', 217.21, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80010028', 158.42, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80020015', 682.72, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80020023', 997.17, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80020031', 254.72, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80030010', 22.03, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80040016', 4919.47, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80050011', 841.0, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80050029', 3203.75, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80060017', 1427.41, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80070012', 11.41, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80070020', 315.72, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80080018', 39.43, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80080026', 4.49, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (20, '80080034', 44.73, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80010010', 179.41, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80010028', 171.77, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80020015', 652.99, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80020023', 1013.01, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80020031', 242.66, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80030010', 21.5, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80040016', 4165.78, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80050011', 847.9, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80050029', 2798.68, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80060017', 1484.66, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80070012', 9.25, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80070020', 378.25, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80080018', 42.97, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80080026', 4.96, DATE '2026-01-01')
  INTO tab_preco_convenio (cd_convenio, cd_pro_fat, vl_preco, dt_vigencia) VALUES (30, '80080034', 50.24, DATE '2026-01-01')
SELECT 1 FROM dual;

CREATE TABLE log_acesso_paciente (cd_log NUMBER(10) PRIMARY KEY, cd_paciente NUMBER(10), nm_usuario VARCHAR2(30) NOT NULL, ds_tela VARCHAR2(40), dt_acesso DATE NOT NULL);
GRANT SELECT ON log_acesso_paciente TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_acesso_paciente FOR dbamv.log_acesso_paciente;

-- log_acesso_paciente: 500 linhas
INSERT ALL
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (1, 300037, 'USU009', 'M_PACIENTE', TO_DATE('2026-07-06 23:05:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (2, 300097, 'USU013', 'M_CONTA', TO_DATE('2026-06-09 14:55:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (3, 300043, 'USU012', 'M_ATENDIME', TO_DATE('2026-06-18 06:33:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (4, 300187, 'USU021', 'M_CONTA', TO_DATE('2026-08-16 21:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (5, 300098, 'USU024', 'M_PACIENTE', TO_DATE('2026-06-15 00:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (6, 300225, 'USU022', 'M_PACIENTE', TO_DATE('2026-07-03 04:44:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (7, 300114, 'USU033', 'M_CONTA', TO_DATE('2026-07-05 18:50:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (8, 300116, 'USU015', 'M_PACIENTE', TO_DATE('2026-05-29 14:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (9, 300142, 'USU016', 'M_CONTA', TO_DATE('2026-08-05 13:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (10, 300139, 'USU029', 'M_ATENDIME', TO_DATE('2026-08-18 18:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (11, 300198, 'USU024', 'M_CONTA', TO_DATE('2026-08-20 22:31:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (12, 300060, 'USU011', 'M_PACIENTE', TO_DATE('2026-06-17 07:49:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (13, 300112, 'USU006', 'M_CONTA', TO_DATE('2026-07-17 08:07:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (14, 300219, 'USU037', 'M_CONTA', TO_DATE('2026-07-15 08:06:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (15, 300119, 'USU009', 'M_PACIENTE', TO_DATE('2026-06-28 09:03:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (16, 300027, 'USU026', 'M_PACIENTE', TO_DATE('2026-08-11 09:10:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (17, 300003, 'USU019', 'M_CONTA', TO_DATE('2026-08-29 06:19:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (18, 300088, 'USU002', 'M_PACIENTE', TO_DATE('2026-07-09 01:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (19, 300007, 'USU031', 'M_PACIENTE', TO_DATE('2026-06-01 08:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (20, 300225, 'USU039', 'M_PACIENTE', TO_DATE('2026-08-18 20:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (21, 300003, 'USU004', 'M_ATENDIME', TO_DATE('2026-05-13 19:03:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (22, 300225, 'USU020', 'M_ATENDIME', TO_DATE('2026-08-02 15:07:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (23, 300006, 'USU021', 'M_ATENDIME', TO_DATE('2026-08-07 00:32:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (24, 300105, 'USU020', 'M_PACIENTE', TO_DATE('2026-07-18 00:32:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (25, 300047, 'USU038', 'M_ATENDIME', TO_DATE('2026-09-11 05:44:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (26, 300196, 'USU001', 'M_PACIENTE', TO_DATE('2026-05-06 23:50:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (27, 300155, 'USU018', 'M_CONTA', TO_DATE('2026-05-05 19:04:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (28, 300235, 'USU011', 'M_PACIENTE', TO_DATE('2026-07-03 23:30:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (29, 300049, 'USU005', 'M_ATENDIME', TO_DATE('2026-09-06 07:59:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (30, 300171, 'USU007', 'M_PACIENTE', TO_DATE('2026-08-15 16:46:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (31, 300006, 'USU004', 'M_PACIENTE', TO_DATE('2026-06-08 20:53:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (32, 300135, 'USU018', 'M_ATENDIME', TO_DATE('2026-08-12 09:17:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (33, 300207, 'USU006', 'M_PACIENTE', TO_DATE('2026-06-20 03:21:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (34, 300098, 'USU002', 'M_PACIENTE', TO_DATE('2026-09-15 21:17:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (35, 300105, 'USU004', 'M_PACIENTE', TO_DATE('2026-06-28 07:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (36, 300144, 'USU032', 'M_ATENDIME', TO_DATE('2026-07-29 01:37:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (37, 300095, 'USU013', 'M_PACIENTE', TO_DATE('2026-05-14 08:35:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (38, 300072, 'USU003', 'M_CONTA', TO_DATE('2026-07-29 11:50:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (39, 300020, 'USU029', 'M_ATENDIME', TO_DATE('2026-09-13 03:10:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (40, 300211, 'USU039', 'M_ATENDIME', TO_DATE('2026-05-17 11:36:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (41, 300200, 'USU023', 'M_PACIENTE', TO_DATE('2026-08-23 01:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (42, 300008, 'USU037', 'M_CONTA', TO_DATE('2026-07-11 02:34:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (43, 300046, 'USU033', 'M_ATENDIME', TO_DATE('2026-08-20 10:01:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (44, 300236, 'USU016', 'M_ATENDIME', TO_DATE('2026-08-01 20:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (45, 300151, 'USU039', 'M_CONTA', TO_DATE('2026-08-21 20:43:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (46, 300139, 'USU030', 'M_ATENDIME', TO_DATE('2026-06-19 13:56:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (47, 300204, 'USU040', 'M_PACIENTE', TO_DATE('2026-07-14 11:09:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (48, 300039, 'USU038', 'M_CONTA', TO_DATE('2026-07-09 19:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (49, 300189, 'USU001', 'M_CONTA', TO_DATE('2026-05-22 22:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (50, 300024, 'USU031', 'M_ATENDIME', TO_DATE('2026-08-19 04:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (51, 300118, 'USU005', 'M_CONTA', TO_DATE('2026-07-09 16:46:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (52, 300069, 'USU031', 'M_PACIENTE', TO_DATE('2026-05-17 13:33:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (53, 300183, 'USU001', 'M_ATENDIME', TO_DATE('2026-08-28 19:55:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (54, 300110, 'USU030', 'M_CONTA', TO_DATE('2026-05-21 20:03:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (55, 300093, 'USU028', 'M_PACIENTE', TO_DATE('2026-05-24 16:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (56, 300024, 'USU021', 'M_PACIENTE', TO_DATE('2026-07-30 15:34:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (57, 300186, 'USU025', 'M_ATENDIME', TO_DATE('2026-08-25 10:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (58, 300061, 'USU039', 'M_CONTA', TO_DATE('2026-08-13 04:19:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (59, 300105, 'USU019', 'M_ATENDIME', TO_DATE('2026-08-31 02:34:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (60, 300201, 'USU011', 'M_ATENDIME', TO_DATE('2026-09-07 22:21:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (61, 300094, 'USU028', 'M_PACIENTE', TO_DATE('2026-09-01 05:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (62, 300129, 'USU014', 'M_PACIENTE', TO_DATE('2026-08-30 14:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (63, 300067, 'USU003', 'M_ATENDIME', TO_DATE('2026-05-28 17:37:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (64, 300075, 'USU038', 'M_PACIENTE', TO_DATE('2026-07-04 18:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (65, 300104, 'USU031', 'M_PACIENTE', TO_DATE('2026-06-02 17:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (66, 300130, 'USU031', 'M_ATENDIME', TO_DATE('2026-06-19 19:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (67, 300094, 'USU013', 'M_CONTA', TO_DATE('2026-06-30 01:30:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (68, 300231, 'USU017', 'M_CONTA', TO_DATE('2026-09-07 12:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (69, 300074, 'USU015', 'M_ATENDIME', TO_DATE('2026-08-17 10:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (70, 300083, 'USU040', 'M_CONTA', TO_DATE('2026-05-02 17:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (71, 300173, 'USU029', 'M_ATENDIME', TO_DATE('2026-08-05 11:37:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (72, 300087, 'USU023', 'M_ATENDIME', TO_DATE('2026-07-24 13:24:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (73, 300054, 'USU008', 'M_CONTA', TO_DATE('2026-07-29 08:21:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (74, 300189, 'USU020', 'M_PACIENTE', TO_DATE('2026-07-02 11:35:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (75, 300023, 'USU026', 'M_CONTA', TO_DATE('2026-09-07 01:59:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (76, 300168, 'USU018', 'M_PACIENTE', TO_DATE('2026-06-10 15:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (77, 300024, 'USU011', 'M_ATENDIME', TO_DATE('2026-09-16 16:14:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (78, 300002, 'USU035', 'M_PACIENTE', TO_DATE('2026-06-30 07:58:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (79, 300020, 'USU026', 'M_ATENDIME', TO_DATE('2026-09-16 05:56:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (80, 300001, 'USU010', 'M_ATENDIME', TO_DATE('2026-08-13 09:06:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (81, 300028, 'USU031', 'M_CONTA', TO_DATE('2026-08-10 23:34:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (82, 300065, 'USU003', 'M_ATENDIME', TO_DATE('2026-05-14 23:53:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (83, 300181, 'USU018', 'M_CONTA', TO_DATE('2026-07-07 01:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (84, 300229, 'USU010', 'M_ATENDIME', TO_DATE('2026-07-02 16:07:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (85, 300031, 'USU038', 'M_PACIENTE', TO_DATE('2026-06-05 12:13:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (86, 300120, 'USU031', 'M_ATENDIME', TO_DATE('2026-06-07 20:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (87, 300137, 'USU036', 'M_ATENDIME', TO_DATE('2026-06-14 18:41:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (88, 300195, 'USU010', 'M_PACIENTE', TO_DATE('2026-08-10 07:04:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (89, 300217, 'USU011', 'M_CONTA', TO_DATE('2026-09-05 01:10:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (90, 300119, 'USU028', 'M_ATENDIME', TO_DATE('2026-06-05 19:14:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (91, 300171, 'USU029', 'M_PACIENTE', TO_DATE('2026-07-02 23:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (92, 300060, 'USU028', 'M_CONTA', TO_DATE('2026-08-31 14:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (93, 300044, 'USU020', 'M_PACIENTE', TO_DATE('2026-08-18 09:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (94, 300095, 'USU017', 'M_ATENDIME', TO_DATE('2026-08-16 13:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (95, 300005, 'USU015', 'M_ATENDIME', TO_DATE('2026-05-19 15:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (96, 300037, 'USU018', 'M_CONTA', TO_DATE('2026-06-24 04:30:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (97, 300022, 'USU003', 'M_PACIENTE', TO_DATE('2026-05-17 09:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (98, 300214, 'USU003', 'M_ATENDIME', TO_DATE('2026-07-27 20:13:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (99, 300149, 'USU022', 'M_PACIENTE', TO_DATE('2026-06-15 01:47:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (100, 300120, 'USU018', 'M_PACIENTE', TO_DATE('2026-05-17 13:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (101, 300224, 'USU002', 'M_ATENDIME', TO_DATE('2026-06-07 19:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (102, 300008, 'USU014', 'M_CONTA', TO_DATE('2026-07-13 22:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (103, 300035, 'USU006', 'M_CONTA', TO_DATE('2026-07-24 03:01:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (104, 300063, 'USU027', 'M_CONTA', TO_DATE('2026-09-10 23:18:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (105, 300023, 'USU007', 'M_ATENDIME', TO_DATE('2026-07-30 23:14:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (106, 300000, 'USU030', 'M_PACIENTE', TO_DATE('2026-06-10 20:06:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (107, 300059, 'USU015', 'M_ATENDIME', TO_DATE('2026-09-01 02:24:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (108, 300097, 'USU001', 'M_ATENDIME', TO_DATE('2026-07-15 03:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (109, 300158, 'USU004', 'M_ATENDIME', TO_DATE('2026-06-27 14:18:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (110, 300081, 'USU014', 'M_ATENDIME', TO_DATE('2026-08-31 21:07:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (111, 300027, 'USU021', 'M_PACIENTE', TO_DATE('2026-08-05 22:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (112, 300017, 'USU017', 'M_PACIENTE', TO_DATE('2026-05-07 14:56:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (113, 300188, 'USU002', 'M_PACIENTE', TO_DATE('2026-05-19 23:01:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (114, 300126, 'USU031', 'M_CONTA', TO_DATE('2026-07-02 22:14:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (115, 300164, 'USU023', 'M_ATENDIME', TO_DATE('2026-08-15 10:44:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (116, 300086, 'USU022', 'M_PACIENTE', TO_DATE('2026-06-24 16:10:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (117, 300185, 'USU006', 'M_PACIENTE', TO_DATE('2026-08-19 10:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (118, 300221, 'USU010', 'M_ATENDIME', TO_DATE('2026-05-04 19:01:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (119, 300183, 'USU001', 'M_CONTA', TO_DATE('2026-07-25 00:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (120, 300171, 'USU010', 'M_CONTA', TO_DATE('2026-09-01 21:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (121, 300033, 'USU020', 'M_PACIENTE', TO_DATE('2026-08-20 13:24:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (122, 300130, 'USU002', 'M_ATENDIME', TO_DATE('2026-06-23 23:34:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (123, 300020, 'USU037', 'M_CONTA', TO_DATE('2026-07-02 11:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (124, 300018, 'USU019', 'M_PACIENTE', TO_DATE('2026-07-21 12:59:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (125, 300081, 'USU033', 'M_CONTA', TO_DATE('2026-06-01 14:51:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (126, 300235, 'USU028', 'M_ATENDIME', TO_DATE('2026-05-24 21:33:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (127, 300172, 'USU036', 'M_PACIENTE', TO_DATE('2026-06-14 10:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (128, 300097, 'USU027', 'M_CONTA', TO_DATE('2026-07-16 00:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (129, 300188, 'USU015', 'M_ATENDIME', TO_DATE('2026-07-29 01:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (130, 300222, 'USU015', 'M_PACIENTE', TO_DATE('2026-05-26 03:54:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (131, 300107, 'USU012', 'M_ATENDIME', TO_DATE('2026-09-02 17:39:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (132, 300145, 'USU015', 'M_PACIENTE', TO_DATE('2026-05-29 12:33:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (133, 300025, 'USU021', 'M_ATENDIME', TO_DATE('2026-07-31 19:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (134, 300120, 'USU011', 'M_CONTA', TO_DATE('2026-05-29 20:17:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (135, 300215, 'USU036', 'M_PACIENTE', TO_DATE('2026-07-03 15:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (136, 300187, 'USU039', 'M_CONTA', TO_DATE('2026-08-25 04:39:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (137, 300093, 'USU005', 'M_PACIENTE', TO_DATE('2026-06-29 01:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (138, 300028, 'USU010', 'M_PACIENTE', TO_DATE('2026-06-06 03:43:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (139, 300204, 'USU021', 'M_CONTA', TO_DATE('2026-07-17 11:43:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (140, 300057, 'USU040', 'M_ATENDIME', TO_DATE('2026-08-05 23:04:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (141, 300098, 'USU014', 'M_ATENDIME', TO_DATE('2026-08-28 13:09:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (142, 300162, 'USU024', 'M_CONTA', TO_DATE('2026-06-02 10:01:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (143, 300122, 'USU030', 'M_PACIENTE', TO_DATE('2026-05-10 11:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (144, 300025, 'USU027', 'M_CONTA', TO_DATE('2026-09-13 18:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (145, 300052, 'USU008', 'M_PACIENTE', TO_DATE('2026-07-12 21:47:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (146, 300009, 'USU009', 'M_CONTA', TO_DATE('2026-05-16 18:50:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (147, 300179, 'USU004', 'M_ATENDIME', TO_DATE('2026-09-07 01:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (148, 300019, 'USU008', 'M_ATENDIME', TO_DATE('2026-06-24 16:41:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (149, 300099, 'USU019', 'M_ATENDIME', TO_DATE('2026-08-28 21:09:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (150, 300078, 'USU010', 'M_CONTA', TO_DATE('2026-07-10 20:41:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (151, 300075, 'USU005', 'M_PACIENTE', TO_DATE('2026-09-07 22:33:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (152, 300145, 'USU029', 'M_PACIENTE', TO_DATE('2026-05-09 12:55:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (153, 300128, 'USU018', 'M_CONTA', TO_DATE('2026-07-31 13:55:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (154, 300067, 'USU003', 'M_CONTA', TO_DATE('2026-08-30 02:07:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (155, 300152, 'USU030', 'M_PACIENTE', TO_DATE('2026-05-13 14:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (156, 300100, 'USU027', 'M_ATENDIME', TO_DATE('2026-05-08 18:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (157, 300071, 'USU033', 'M_CONTA', TO_DATE('2026-05-30 03:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (158, 300008, 'USU028', 'M_PACIENTE', TO_DATE('2026-09-02 14:58:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (159, 300188, 'USU017', 'M_PACIENTE', TO_DATE('2026-09-08 05:40:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (160, 300139, 'USU009', 'M_PACIENTE', TO_DATE('2026-09-07 17:31:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (161, 300141, 'USU012', 'M_PACIENTE', TO_DATE('2026-09-10 16:02:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (162, 300026, 'USU020', 'M_ATENDIME', TO_DATE('2026-06-02 05:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (163, 300200, 'USU027', 'M_PACIENTE', TO_DATE('2026-06-17 00:41:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (164, 300072, 'USU029', 'M_ATENDIME', TO_DATE('2026-07-24 10:55:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (165, 300009, 'USU026', 'M_PACIENTE', TO_DATE('2026-05-08 15:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (166, 300193, 'USU004', 'M_ATENDIME', TO_DATE('2026-05-27 09:13:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (167, 300038, 'USU024', 'M_PACIENTE', TO_DATE('2026-06-10 04:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (168, 300012, 'USU008', 'M_CONTA', TO_DATE('2026-05-03 13:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (169, 300187, 'USU014', 'M_CONTA', TO_DATE('2026-05-07 02:57:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (170, 300009, 'USU024', 'M_PACIENTE', TO_DATE('2026-06-27 00:40:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (171, 300162, 'USU002', 'M_ATENDIME', TO_DATE('2026-07-04 23:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (172, 300003, 'USU026', 'M_CONTA', TO_DATE('2026-08-29 18:21:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (173, 300008, 'USU005', 'M_CONTA', TO_DATE('2026-07-05 18:53:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (174, 300144, 'USU011', 'M_PACIENTE', TO_DATE('2026-06-10 17:57:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (175, 300115, 'USU030', 'M_CONTA', TO_DATE('2026-06-03 19:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (176, 300100, 'USU029', 'M_CONTA', TO_DATE('2026-06-26 08:46:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (177, 300113, 'USU001', 'M_PACIENTE', TO_DATE('2026-07-21 22:13:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (178, 300194, 'USU007', 'M_ATENDIME', TO_DATE('2026-05-01 15:09:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (179, 300062, 'USU030', 'M_PACIENTE', TO_DATE('2026-08-26 10:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (180, 300023, 'USU025', 'M_ATENDIME', TO_DATE('2026-07-17 21:14:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (181, 300148, 'USU034', 'M_CONTA', TO_DATE('2026-05-19 13:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (182, 300095, 'USU020', 'M_CONTA', TO_DATE('2026-05-17 06:36:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (183, 300152, 'USU023', 'M_PACIENTE', TO_DATE('2026-07-01 23:50:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (184, 300124, 'USU017', 'M_CONTA', TO_DATE('2026-07-22 17:47:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (185, 300031, 'USU008', 'M_ATENDIME', TO_DATE('2026-07-30 04:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (186, 300231, 'USU021', 'M_ATENDIME', TO_DATE('2026-07-15 14:13:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (187, 300114, 'USU007', 'M_ATENDIME', TO_DATE('2026-05-31 04:18:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (188, 300003, 'USU007', 'M_ATENDIME', TO_DATE('2026-07-19 20:37:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (189, 300040, 'USU039', 'M_CONTA', TO_DATE('2026-07-10 23:06:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (190, 300041, 'USU012', 'M_PACIENTE', TO_DATE('2026-09-11 22:58:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (191, 300035, 'USU003', 'M_ATENDIME', TO_DATE('2026-06-02 15:07:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (192, 300128, 'USU025', 'M_PACIENTE', TO_DATE('2026-07-02 20:17:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (193, 300219, 'USU021', 'M_ATENDIME', TO_DATE('2026-07-13 16:35:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (194, 300057, 'USU021', 'M_PACIENTE', TO_DATE('2026-05-31 08:19:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (195, 300067, 'USU025', 'M_PACIENTE', TO_DATE('2026-09-10 07:34:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (196, 300145, 'USU018', 'M_ATENDIME', TO_DATE('2026-07-31 22:33:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (197, 300231, 'USU011', 'M_PACIENTE', TO_DATE('2026-08-24 03:05:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (198, 300054, 'USU001', 'M_PACIENTE', TO_DATE('2026-08-09 01:33:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (199, 300030, 'USU034', 'M_CONTA', TO_DATE('2026-07-06 00:24:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (200, 300000, 'USU033', 'M_PACIENTE', TO_DATE('2026-08-10 14:29:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;
INSERT ALL
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (201, 300009, 'USU021', 'M_ATENDIME', TO_DATE('2026-05-21 10:26:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (202, 300169, 'USU025', 'M_CONTA', TO_DATE('2026-08-25 05:50:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (203, 300222, 'USU001', 'M_CONTA', TO_DATE('2026-08-10 10:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (204, 300179, 'USU039', 'M_PACIENTE', TO_DATE('2026-06-01 07:37:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (205, 300029, 'USU015', 'M_ATENDIME', TO_DATE('2026-06-14 18:32:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (206, 300123, 'USU012', 'M_ATENDIME', TO_DATE('2026-07-20 11:02:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (207, 300193, 'USU012', 'M_ATENDIME', TO_DATE('2026-09-06 02:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (208, 300135, 'USU009', 'M_PACIENTE', TO_DATE('2026-06-25 18:37:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (209, 300006, 'USU018', 'M_CONTA', TO_DATE('2026-07-23 10:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (210, 300031, 'USU021', 'M_CONTA', TO_DATE('2026-07-08 13:54:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (211, 300102, 'USU015', 'M_CONTA', TO_DATE('2026-05-10 00:34:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (212, 300207, 'USU018', 'M_ATENDIME', TO_DATE('2026-06-12 02:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (213, 300034, 'USU027', 'M_ATENDIME', TO_DATE('2026-07-22 01:47:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (214, 300095, 'USU016', 'M_CONTA', TO_DATE('2026-09-03 13:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (215, 300223, 'USU012', 'M_PACIENTE', TO_DATE('2026-06-30 02:31:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (216, 300139, 'USU010', 'M_PACIENTE', TO_DATE('2026-09-04 20:12:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (217, 300109, 'USU028', 'M_CONTA', TO_DATE('2026-07-29 12:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (218, 300135, 'USU019', 'M_ATENDIME', TO_DATE('2026-08-27 18:54:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (219, 300154, 'USU005', 'M_PACIENTE', TO_DATE('2026-09-11 16:47:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (220, 300163, 'USU011', 'M_CONTA', TO_DATE('2026-07-30 14:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (221, 300003, 'USU039', 'M_PACIENTE', TO_DATE('2026-05-02 03:06:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (222, 300096, 'USU016', 'M_ATENDIME', TO_DATE('2026-07-09 17:19:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (223, 300060, 'USU004', 'M_CONTA', TO_DATE('2026-08-08 01:44:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (224, 300006, 'USU035', 'M_PACIENTE', TO_DATE('2026-06-06 07:24:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (225, 300192, 'USU002', 'M_PACIENTE', TO_DATE('2026-07-09 01:10:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (226, 300147, 'USU014', 'M_ATENDIME', TO_DATE('2026-09-01 13:29:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (227, 300085, 'USU015', 'M_PACIENTE', TO_DATE('2026-06-26 01:59:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (228, 300014, 'USU036', 'M_PACIENTE', TO_DATE('2026-05-25 07:03:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (229, 300039, 'USU034', 'M_PACIENTE', TO_DATE('2026-07-10 13:39:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (230, 300208, 'USU004', 'M_PACIENTE', TO_DATE('2026-06-17 03:10:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (231, 300212, 'USU036', 'M_CONTA', TO_DATE('2026-08-15 08:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (232, 300211, 'USU028', 'M_CONTA', TO_DATE('2026-09-03 15:31:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (233, 300126, 'USU006', 'M_PACIENTE', TO_DATE('2026-08-16 10:04:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (234, 300052, 'USU026', 'M_ATENDIME', TO_DATE('2026-07-27 16:18:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (235, 300054, 'USU013', 'M_CONTA', TO_DATE('2026-09-10 09:17:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (236, 300204, 'USU026', 'M_PACIENTE', TO_DATE('2026-05-13 09:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (237, 300035, 'USU003', 'M_CONTA', TO_DATE('2026-07-20 20:33:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (238, 300131, 'USU031', 'M_ATENDIME', TO_DATE('2026-08-30 20:34:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (239, 300160, 'USU035', 'M_PACIENTE', TO_DATE('2026-06-01 00:44:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (240, 300008, 'USU018', 'M_ATENDIME', TO_DATE('2026-05-26 11:14:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (241, 300111, 'USU010', 'M_ATENDIME', TO_DATE('2026-06-04 03:43:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (242, 300066, 'USU037', 'M_CONTA', TO_DATE('2026-07-10 02:26:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (243, 300231, 'USU002', 'M_ATENDIME', TO_DATE('2026-06-09 23:44:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (244, 300203, 'USU022', 'M_PACIENTE', TO_DATE('2026-05-07 15:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (245, 300188, 'USU034', 'M_PACIENTE', TO_DATE('2026-07-08 21:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (246, 300036, 'USU038', 'M_ATENDIME', TO_DATE('2026-08-22 04:01:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (247, 300198, 'USU035', 'M_CONTA', TO_DATE('2026-08-02 13:19:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (248, 300238, 'USU020', 'M_PACIENTE', TO_DATE('2026-09-08 23:14:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (249, 300024, 'USU002', 'M_PACIENTE', TO_DATE('2026-09-04 06:43:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (250, 300185, 'USU040', 'M_PACIENTE', TO_DATE('2026-05-08 16:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (251, 300120, 'USU016', 'M_CONTA', TO_DATE('2026-06-19 09:47:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (252, 300137, 'USU010', 'M_CONTA', TO_DATE('2026-08-13 11:17:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (253, 300023, 'USU009', 'M_PACIENTE', TO_DATE('2026-09-03 03:29:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (254, 300230, 'USU022', 'M_CONTA', TO_DATE('2026-09-02 20:02:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (255, 300168, 'USU027', 'M_CONTA', TO_DATE('2026-08-28 20:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (256, 300039, 'USU038', 'M_PACIENTE', TO_DATE('2026-07-08 09:12:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (257, 300156, 'USU040', 'M_PACIENTE', TO_DATE('2026-08-22 12:02:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (258, 300208, 'USU008', 'M_PACIENTE', TO_DATE('2026-05-06 13:06:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (259, 300163, 'USU031', 'M_CONTA', TO_DATE('2026-05-06 00:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (260, 300119, 'USU031', 'M_ATENDIME', TO_DATE('2026-06-19 13:09:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (261, 300231, 'USU004', 'M_PACIENTE', TO_DATE('2026-08-21 18:05:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (262, 300012, 'USU034', 'M_CONTA', TO_DATE('2026-05-20 17:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (263, 300032, 'USU036', 'M_ATENDIME', TO_DATE('2026-07-15 01:24:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (264, 300033, 'USU006', 'M_CONTA', TO_DATE('2026-08-04 05:50:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (265, 300186, 'USU022', 'M_ATENDIME', TO_DATE('2026-06-22 19:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (266, 300181, 'USU022', 'M_PACIENTE', TO_DATE('2026-06-14 19:19:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (267, 300041, 'USU021', 'M_ATENDIME', TO_DATE('2026-05-25 23:39:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (268, 300207, 'USU020', 'M_ATENDIME', TO_DATE('2026-05-19 14:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (269, 300126, 'USU005', 'M_PACIENTE', TO_DATE('2026-06-24 06:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (270, 300153, 'USU021', 'M_PACIENTE', TO_DATE('2026-09-02 02:19:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (271, 300135, 'USU010', 'M_PACIENTE', TO_DATE('2026-08-24 20:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (272, 300088, 'USU030', 'M_PACIENTE', TO_DATE('2026-07-13 14:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (273, 300219, 'USU002', 'M_PACIENTE', TO_DATE('2026-05-16 16:35:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (274, 300130, 'USU025', 'M_CONTA', TO_DATE('2026-06-25 21:17:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (275, 300141, 'USU009', 'M_ATENDIME', TO_DATE('2026-08-31 08:08:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (276, 300097, 'USU018', 'M_PACIENTE', TO_DATE('2026-05-28 11:36:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (277, 300098, 'USU017', 'M_CONTA', TO_DATE('2026-05-14 08:54:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (278, 300134, 'USU006', 'M_CONTA', TO_DATE('2026-06-27 10:21:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (279, 300179, 'USU012', 'M_ATENDIME', TO_DATE('2026-08-09 11:49:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (280, 300177, 'USU010', 'M_CONTA', TO_DATE('2026-07-29 14:39:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (281, 300012, 'USU023', 'M_CONTA', TO_DATE('2026-07-11 14:51:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (282, 300229, 'USU017', 'M_ATENDIME', TO_DATE('2026-07-06 03:18:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (283, 300024, 'USU020', 'M_CONTA', TO_DATE('2026-08-30 15:46:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (284, 300006, 'USU025', 'M_ATENDIME', TO_DATE('2026-05-31 12:56:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (285, 300151, 'USU034', 'M_CONTA', TO_DATE('2026-08-22 16:03:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (286, 300183, 'USU034', 'M_CONTA', TO_DATE('2026-09-11 21:59:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (287, 300199, 'USU015', 'M_CONTA', TO_DATE('2026-06-19 10:56:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (288, 300044, 'USU025', 'M_ATENDIME', TO_DATE('2026-07-11 02:21:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (289, 300207, 'USU012', 'M_PACIENTE', TO_DATE('2026-07-30 23:46:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (290, 300022, 'USU012', 'M_CONTA', TO_DATE('2026-05-09 17:51:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (291, 300171, 'USU027', 'M_ATENDIME', TO_DATE('2026-08-06 10:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (292, 300219, 'USU016', 'M_PACIENTE', TO_DATE('2026-07-16 01:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (293, 300011, 'USU034', 'M_CONTA', TO_DATE('2026-07-30 18:50:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (294, 300017, 'USU006', 'M_ATENDIME', TO_DATE('2026-05-18 20:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (295, 300239, 'USU027', 'M_CONTA', TO_DATE('2026-07-19 19:35:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (296, 300209, 'USU033', 'M_ATENDIME', TO_DATE('2026-08-26 20:02:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (297, 300028, 'USU023', 'M_CONTA', TO_DATE('2026-08-19 10:30:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (298, 300069, 'USU007', 'M_PACIENTE', TO_DATE('2026-09-03 04:35:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (299, 300121, 'USU001', 'M_PACIENTE', TO_DATE('2026-07-14 06:31:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (300, 300208, 'USU022', 'M_ATENDIME', TO_DATE('2026-05-18 04:59:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (301, 300003, 'USU024', 'M_PACIENTE', TO_DATE('2026-07-17 09:04:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (302, 300194, 'USU018', 'M_ATENDIME', TO_DATE('2026-07-04 11:13:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (303, 300219, 'USU002', 'M_CONTA', TO_DATE('2026-07-21 10:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (304, 300210, 'USU032', 'M_CONTA', TO_DATE('2026-08-03 21:59:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (305, 300229, 'USU020', 'M_CONTA', TO_DATE('2026-05-30 05:43:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (306, 300066, 'USU030', 'M_PACIENTE', TO_DATE('2026-07-07 14:32:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (307, 300151, 'USU002', 'M_ATENDIME', TO_DATE('2026-07-12 03:32:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (308, 300032, 'USU021', 'M_PACIENTE', TO_DATE('2026-06-07 02:59:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (309, 300123, 'USU016', 'M_CONTA', TO_DATE('2026-06-30 10:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (310, 300104, 'USU005', 'M_ATENDIME', TO_DATE('2026-08-23 07:12:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (311, 300190, 'USU015', 'M_PACIENTE', TO_DATE('2026-05-27 11:54:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (312, 300067, 'USU031', 'M_CONTA', TO_DATE('2026-06-03 17:44:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (313, 300027, 'USU034', 'M_CONTA', TO_DATE('2026-08-05 15:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (314, 300148, 'USU022', 'M_PACIENTE', TO_DATE('2026-07-22 03:32:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (315, 300094, 'USU028', 'M_ATENDIME', TO_DATE('2026-08-20 16:01:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (316, 300235, 'USU018', 'M_PACIENTE', TO_DATE('2026-07-12 09:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (317, 300035, 'USU003', 'M_ATENDIME', TO_DATE('2026-05-27 12:12:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (318, 300234, 'USU035', 'M_PACIENTE', TO_DATE('2026-08-01 14:19:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (319, 300175, 'USU034', 'M_ATENDIME', TO_DATE('2026-07-10 10:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (320, 300029, 'USU026', 'M_ATENDIME', TO_DATE('2026-05-04 11:58:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (321, 300198, 'USU022', 'M_CONTA', TO_DATE('2026-05-16 11:05:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (322, 300164, 'USU008', 'M_CONTA', TO_DATE('2026-09-06 16:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (323, 300121, 'USU035', 'M_ATENDIME', TO_DATE('2026-07-04 02:15:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (324, 300037, 'USU036', 'M_PACIENTE', TO_DATE('2026-05-06 14:41:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (325, 300020, 'USU036', 'M_CONTA', TO_DATE('2026-06-25 20:59:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (326, 300199, 'USU012', 'M_ATENDIME', TO_DATE('2026-08-01 22:57:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (327, 300178, 'USU014', 'M_ATENDIME', TO_DATE('2026-09-13 15:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (328, 300158, 'USU015', 'M_PACIENTE', TO_DATE('2026-06-22 16:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (329, 300143, 'USU004', 'M_ATENDIME', TO_DATE('2026-05-03 17:04:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (330, 300077, 'USU029', 'M_PACIENTE', TO_DATE('2026-05-10 02:01:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (331, 300184, 'USU030', 'M_ATENDIME', TO_DATE('2026-08-08 11:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (332, 300029, 'USU035', 'M_ATENDIME', TO_DATE('2026-07-25 19:24:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (333, 300095, 'USU038', 'M_PACIENTE', TO_DATE('2026-09-12 23:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (334, 300202, 'USU004', 'M_PACIENTE', TO_DATE('2026-08-05 19:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (335, 300109, 'USU018', 'M_ATENDIME', TO_DATE('2026-08-09 05:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (336, 300081, 'USU031', 'M_CONTA', TO_DATE('2026-09-13 19:51:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (337, 300072, 'USU034', 'M_CONTA', TO_DATE('2026-06-21 08:06:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (338, 300075, 'USU015', 'M_PACIENTE', TO_DATE('2026-09-01 00:54:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (339, 300102, 'USU023', 'M_ATENDIME', TO_DATE('2026-05-04 21:47:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (340, 300233, 'USU004', 'M_CONTA', TO_DATE('2026-06-16 17:41:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (341, 300126, 'USU008', 'M_PACIENTE', TO_DATE('2026-07-28 19:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (342, 300082, 'USU024', 'M_ATENDIME', TO_DATE('2026-09-05 08:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (343, 300239, 'USU016', 'M_CONTA', TO_DATE('2026-05-07 14:08:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (344, 300029, 'USU037', 'M_PACIENTE', TO_DATE('2026-06-25 05:41:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (345, 300173, 'USU004', 'M_ATENDIME', TO_DATE('2026-05-15 00:30:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (346, 300231, 'USU016', 'M_ATENDIME', TO_DATE('2026-05-22 08:47:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (347, 300153, 'USU034', 'M_CONTA', TO_DATE('2026-08-22 10:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (348, 300224, 'USU040', 'M_CONTA', TO_DATE('2026-08-07 09:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (349, 300133, 'USU021', 'M_ATENDIME', TO_DATE('2026-05-01 01:19:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (350, 300013, 'USU023', 'M_PACIENTE', TO_DATE('2026-09-02 05:18:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (351, 300169, 'USU031', 'M_PACIENTE', TO_DATE('2026-07-10 21:56:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (352, 300205, 'USU037', 'M_PACIENTE', TO_DATE('2026-08-15 01:21:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (353, 300098, 'USU009', 'M_ATENDIME', TO_DATE('2026-05-03 13:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (354, 300062, 'USU027', 'M_PACIENTE', TO_DATE('2026-07-27 00:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (355, 300160, 'USU004', 'M_CONTA', TO_DATE('2026-08-26 07:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (356, 300098, 'USU013', 'M_CONTA', TO_DATE('2026-05-27 06:24:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (357, 300127, 'USU017', 'M_ATENDIME', TO_DATE('2026-07-07 00:57:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (358, 300012, 'USU002', 'M_ATENDIME', TO_DATE('2026-05-03 10:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (359, 300143, 'USU002', 'M_ATENDIME', TO_DATE('2026-08-11 22:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (360, 300039, 'USU039', 'M_CONTA', TO_DATE('2026-08-22 00:41:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (361, 300142, 'USU032', 'M_CONTA', TO_DATE('2026-06-12 12:13:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (362, 300103, 'USU024', 'M_PACIENTE', TO_DATE('2026-07-24 14:08:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (363, 300162, 'USU021', 'M_CONTA', TO_DATE('2026-06-05 01:05:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (364, 300113, 'USU005', 'M_CONTA', TO_DATE('2026-06-23 16:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (365, 300008, 'USU010', 'M_PACIENTE', TO_DATE('2026-05-18 12:03:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (366, 300057, 'USU016', 'M_PACIENTE', TO_DATE('2026-06-22 04:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (367, 300001, 'USU034', 'M_PACIENTE', TO_DATE('2026-06-12 13:02:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (368, 300030, 'USU008', 'M_PACIENTE', TO_DATE('2026-08-27 00:58:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (369, 300217, 'USU015', 'M_CONTA', TO_DATE('2026-06-19 03:30:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (370, 300103, 'USU005', 'M_CONTA', TO_DATE('2026-06-02 02:35:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (371, 300069, 'USU014', 'M_CONTA', TO_DATE('2026-08-01 05:44:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (372, 300031, 'USU022', 'M_ATENDIME', TO_DATE('2026-06-24 19:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (373, 300098, 'USU032', 'M_PACIENTE', TO_DATE('2026-05-22 22:37:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (374, 300068, 'USU017', 'M_CONTA', TO_DATE('2026-05-07 18:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (375, 300014, 'USU006', 'M_CONTA', TO_DATE('2026-06-26 05:43:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (376, 300082, 'USU004', 'M_CONTA', TO_DATE('2026-09-10 09:19:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (377, 300202, 'USU009', 'M_CONTA', TO_DATE('2026-05-29 10:12:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (378, 300233, 'USU028', 'M_ATENDIME', TO_DATE('2026-09-01 06:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (379, 300222, 'USU027', 'M_PACIENTE', TO_DATE('2026-07-31 22:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (380, 300232, 'USU005', 'M_ATENDIME', TO_DATE('2026-07-30 01:49:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (381, 300056, 'USU030', 'M_PACIENTE', TO_DATE('2026-05-13 22:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (382, 300202, 'USU006', 'M_PACIENTE', TO_DATE('2026-08-24 03:41:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (383, 300220, 'USU015', 'M_CONTA', TO_DATE('2026-07-04 23:55:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (384, 300090, 'USU012', 'M_CONTA', TO_DATE('2026-07-28 08:24:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (385, 300203, 'USU036', 'M_CONTA', TO_DATE('2026-06-28 05:12:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (386, 300059, 'USU009', 'M_ATENDIME', TO_DATE('2026-06-08 11:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (387, 300105, 'USU022', 'M_CONTA', TO_DATE('2026-06-01 09:59:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (388, 300085, 'USU036', 'M_PACIENTE', TO_DATE('2026-06-28 14:55:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (389, 300119, 'USU016', 'M_ATENDIME', TO_DATE('2026-09-14 13:16:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (390, 300124, 'USU029', 'M_PACIENTE', TO_DATE('2026-06-14 16:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (391, 300016, 'USU032', 'M_CONTA', TO_DATE('2026-08-01 17:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (392, 300154, 'USU015', 'M_CONTA', TO_DATE('2026-07-03 14:40:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (393, 300052, 'USU014', 'M_PACIENTE', TO_DATE('2026-05-17 17:06:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (394, 300153, 'USU002', 'M_PACIENTE', TO_DATE('2026-05-28 23:15:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (395, 300057, 'USU023', 'M_PACIENTE', TO_DATE('2026-05-14 12:23:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (396, 300039, 'USU036', 'M_PACIENTE', TO_DATE('2026-08-06 04:41:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (397, 300181, 'USU030', 'M_ATENDIME', TO_DATE('2026-06-15 21:07:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (398, 300208, 'USU034', 'M_CONTA', TO_DATE('2026-06-29 09:31:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (399, 300230, 'USU026', 'M_ATENDIME', TO_DATE('2026-06-21 20:44:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (400, 300213, 'USU021', 'M_CONTA', TO_DATE('2026-05-28 19:18:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;
INSERT ALL
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (401, 300098, 'USU031', 'M_PACIENTE', TO_DATE('2026-06-05 04:12:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (402, 300085, 'USU029', 'M_CONTA', TO_DATE('2026-08-07 22:44:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (403, 300143, 'USU034', 'M_PACIENTE', TO_DATE('2026-07-04 13:46:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (404, 300100, 'USU016', 'M_CONTA', TO_DATE('2026-08-17 03:53:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (405, 300001, 'USU010', 'M_ATENDIME', TO_DATE('2026-07-23 03:52:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (406, 300091, 'USU039', 'M_PACIENTE', TO_DATE('2026-06-18 21:09:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (407, 300158, 'USU021', 'M_PACIENTE', TO_DATE('2026-09-02 10:33:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (408, 300050, 'USU025', 'M_CONTA', TO_DATE('2026-06-25 14:58:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (409, 300099, 'USU013', 'M_PACIENTE', TO_DATE('2026-06-17 06:40:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (410, 300129, 'USU032', 'M_PACIENTE', TO_DATE('2026-08-18 15:41:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (411, 300126, 'USU035', 'M_ATENDIME', TO_DATE('2026-09-10 20:37:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (412, 300180, 'USU006', 'M_CONTA', TO_DATE('2026-07-10 11:37:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (413, 300086, 'USU033', 'M_ATENDIME', TO_DATE('2026-07-30 06:33:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (414, 300084, 'USU022', 'M_PACIENTE', TO_DATE('2026-08-27 14:08:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (415, 300213, 'USU004', 'M_PACIENTE', TO_DATE('2026-08-30 19:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (416, 300232, 'USU031', 'M_ATENDIME', TO_DATE('2026-05-10 05:32:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (417, 300028, 'USU014', 'M_PACIENTE', TO_DATE('2026-09-06 18:58:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (418, 300180, 'USU015', 'M_ATENDIME', TO_DATE('2026-05-01 14:52:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (419, 300101, 'USU030', 'M_PACIENTE', TO_DATE('2026-05-18 13:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (420, 300074, 'USU018', 'M_ATENDIME', TO_DATE('2026-06-26 19:40:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (421, 300069, 'USU013', 'M_PACIENTE', TO_DATE('2026-05-04 02:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (422, 300160, 'USU028', 'M_ATENDIME', TO_DATE('2026-05-26 03:50:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (423, 300019, 'USU018', 'M_ATENDIME', TO_DATE('2026-09-15 07:02:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (424, 300069, 'USU034', 'M_CONTA', TO_DATE('2026-07-13 22:50:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (425, 300153, 'USU028', 'M_PACIENTE', TO_DATE('2026-08-26 06:56:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (426, 300176, 'USU020', 'M_CONTA', TO_DATE('2026-07-16 21:54:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (427, 300209, 'USU007', 'M_CONTA', TO_DATE('2026-08-17 13:08:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (428, 300206, 'USU019', 'M_ATENDIME', TO_DATE('2026-09-14 08:40:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (429, 300020, 'USU011', 'M_CONTA', TO_DATE('2026-05-03 21:42:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (430, 300144, 'USU033', 'M_CONTA', TO_DATE('2026-06-04 05:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (431, 300148, 'USU026', 'M_ATENDIME', TO_DATE('2026-07-22 12:54:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (432, 300051, 'USU003', 'M_ATENDIME', TO_DATE('2026-07-21 20:26:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (433, 300186, 'USU022', 'M_PACIENTE', TO_DATE('2026-08-26 06:37:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (434, 300117, 'USU026', 'M_PACIENTE', TO_DATE('2026-05-23 10:56:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (435, 300127, 'USU024', 'M_ATENDIME', TO_DATE('2026-05-18 04:53:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (436, 300009, 'USU018', 'M_CONTA', TO_DATE('2026-09-09 03:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (437, 300078, 'USU034', 'M_PACIENTE', TO_DATE('2026-06-02 06:59:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (438, 300204, 'USU033', 'M_PACIENTE', TO_DATE('2026-06-01 03:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (439, 300088, 'USU035', 'M_PACIENTE', TO_DATE('2026-07-20 11:31:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (440, 300071, 'USU011', 'M_CONTA', TO_DATE('2026-06-25 22:55:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (441, 300087, 'USU010', 'M_ATENDIME', TO_DATE('2026-07-27 06:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (442, 300019, 'USU021', 'M_PACIENTE', TO_DATE('2026-08-30 13:27:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (443, 300032, 'USU006', 'M_PACIENTE', TO_DATE('2026-09-09 10:22:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (444, 300178, 'USU001', 'M_PACIENTE', TO_DATE('2026-08-21 00:24:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (445, 300207, 'USU034', 'M_PACIENTE', TO_DATE('2026-08-31 15:46:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (446, 300074, 'USU002', 'M_ATENDIME', TO_DATE('2026-05-25 09:10:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (447, 300118, 'USU011', 'M_ATENDIME', TO_DATE('2026-06-25 15:52:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (448, 300187, 'USU002', 'M_PACIENTE', TO_DATE('2026-05-24 10:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (449, 300002, 'USU024', 'M_PACIENTE', TO_DATE('2026-05-05 02:18:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (450, 300190, 'USU038', 'M_CONTA', TO_DATE('2026-07-28 19:03:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (451, 300073, 'USU038', 'M_ATENDIME', TO_DATE('2026-05-26 00:18:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (452, 300000, 'USU037', 'M_PACIENTE', TO_DATE('2026-05-08 12:07:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (453, 300076, 'USU001', 'M_CONTA', TO_DATE('2026-05-24 18:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (454, 300064, 'USU029', 'M_CONTA', TO_DATE('2026-07-03 19:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (455, 300239, 'USU001', 'M_ATENDIME', TO_DATE('2026-05-17 18:49:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (456, 300041, 'USU019', 'M_ATENDIME', TO_DATE('2026-07-10 23:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (457, 300094, 'USU004', 'M_ATENDIME', TO_DATE('2026-05-26 13:58:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (458, 300170, 'USU017', 'M_CONTA', TO_DATE('2026-05-18 22:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (459, 300006, 'USU005', 'M_PACIENTE', TO_DATE('2026-06-30 01:46:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (460, 300189, 'USU036', 'M_CONTA', TO_DATE('2026-08-26 02:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (461, 300077, 'USU028', 'M_ATENDIME', TO_DATE('2026-06-24 13:28:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (462, 300024, 'USU034', 'M_CONTA', TO_DATE('2026-09-04 23:14:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (463, 300233, 'USU002', 'M_PACIENTE', TO_DATE('2026-09-14 09:36:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (464, 300195, 'USU019', 'M_CONTA', TO_DATE('2026-07-08 17:48:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (465, 300083, 'USU024', 'M_CONTA', TO_DATE('2026-05-30 02:47:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (466, 300044, 'USU006', 'M_ATENDIME', TO_DATE('2026-06-14 03:49:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (467, 300007, 'USU006', 'M_PACIENTE', TO_DATE('2026-07-12 10:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (468, 300144, 'USU015', 'M_PACIENTE', TO_DATE('2026-05-02 14:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (469, 300204, 'USU022', 'M_PACIENTE', TO_DATE('2026-05-18 01:30:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (470, 300121, 'USU018', 'M_CONTA', TO_DATE('2026-09-04 10:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (471, 300025, 'USU004', 'M_CONTA', TO_DATE('2026-06-09 05:30:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (472, 300102, 'USU006', 'M_CONTA', TO_DATE('2026-09-12 21:49:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (473, 300143, 'USU004', 'M_ATENDIME', TO_DATE('2026-09-01 01:39:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (474, 300087, 'USU017', 'M_CONTA', TO_DATE('2026-06-08 11:20:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (475, 300127, 'USU039', 'M_PACIENTE', TO_DATE('2026-08-28 15:49:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (476, 300045, 'USU022', 'M_CONTA', TO_DATE('2026-05-17 19:07:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (477, 300136, 'USU036', 'M_PACIENTE', TO_DATE('2026-06-09 11:36:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (478, 300217, 'USU009', 'M_PACIENTE', TO_DATE('2026-09-11 00:26:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (479, 300178, 'USU039', 'M_CONTA', TO_DATE('2026-07-22 19:45:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (480, 300164, 'USU002', 'M_ATENDIME', TO_DATE('2026-08-29 17:21:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (481, 300113, 'USU001', 'M_PACIENTE', TO_DATE('2026-06-02 11:11:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (482, 300024, 'USU030', 'M_PACIENTE', TO_DATE('2026-07-06 16:12:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (483, 300170, 'USU010', 'M_CONTA', TO_DATE('2026-07-11 02:51:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (484, 300211, 'USU005', 'M_ATENDIME', TO_DATE('2026-08-06 16:57:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (485, 300209, 'USU014', 'M_PACIENTE', TO_DATE('2026-08-18 13:39:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (486, 300145, 'USU009', 'M_PACIENTE', TO_DATE('2026-09-16 19:21:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (487, 300205, 'USU018', 'M_ATENDIME', TO_DATE('2026-06-25 09:26:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (488, 300152, 'USU004', 'M_PACIENTE', TO_DATE('2026-06-01 05:05:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (489, 300105, 'USU029', 'M_CONTA', TO_DATE('2026-07-10 17:56:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (490, 300132, 'USU035', 'M_CONTA', TO_DATE('2026-07-23 22:55:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (491, 300013, 'USU011', 'M_PACIENTE', TO_DATE('2026-05-23 22:38:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (492, 300193, 'USU027', 'M_ATENDIME', TO_DATE('2026-05-23 02:50:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (493, 300020, 'USU026', 'M_ATENDIME', TO_DATE('2026-06-27 02:36:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (494, 300049, 'USU001', 'M_ATENDIME', TO_DATE('2026-06-20 12:51:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (495, 300036, 'USU032', 'M_ATENDIME', TO_DATE('2026-05-30 21:32:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (496, 300197, 'USU038', 'M_CONTA', TO_DATE('2026-07-12 16:52:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (497, 300105, 'USU032', 'M_ATENDIME', TO_DATE('2026-05-09 17:12:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (498, 300071, 'USU025', 'M_CONTA', TO_DATE('2026-08-15 13:47:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (499, 300202, 'USU033', 'M_ATENDIME', TO_DATE('2026-08-10 05:25:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_acesso_paciente (cd_log, cd_paciente, nm_usuario, ds_tela, dt_acesso) VALUES (500, 300013, 'USU012', 'M_PACIENTE', TO_DATE('2026-07-10 23:26:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_img_lote (cd_img_lote NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_img_lote PRIMARY KEY (cd_img_lote));
GRANT SELECT ON tmp_img_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_img_lote FOR dbamv.tmp_img_lote;

CREATE TABLE cfg_sup_impressao (cd_sup_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_sup_impressao PRIMARY KEY (cd_sup_impressao));
GRANT SELECT ON cfg_sup_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_sup_impressao FOR dbamv.cfg_sup_impressao;

-- cfg_sup_impressao: 30 linhas
INSERT ALL
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU007', TO_DATE('2026-09-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU029', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU024', TO_DATE('2026-05-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU023', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU008', TO_DATE('2026-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU030', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU004', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU020', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU012', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU002', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU022', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU004', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU027', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU030', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU036', TO_DATE('2026-09-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU030', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU039', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU004', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU034', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU006', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU020', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU009', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU017', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU015', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU017', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU024', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU007', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU012', TO_DATE('2026-11-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU035', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sup_impressao (cd_sup_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU005', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_est_exportacao (cd_est_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_est_exportacao PRIMARY KEY (cd_est_exportacao));
GRANT SELECT ON aud_est_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_est_exportacao FOR dbamv.aud_est_exportacao;

CREATE TABLE hist_fin_acesso (cd_fin_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_fin_acesso PRIMARY KEY (cd_fin_acesso));
GRANT SELECT ON hist_fin_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_fin_acesso FOR dbamv.hist_fin_acesso;

CREATE TABLE tmp_age_tela (cd_age_tela NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_age_tela PRIMARY KEY (cd_age_tela));
GRANT SELECT ON tmp_age_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_age_tela FOR dbamv.tmp_age_tela;

CREATE TABLE log_sup_config (cd_sup_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_sup_config PRIMARY KEY (cd_sup_config));
GRANT SELECT ON log_sup_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_sup_config FOR dbamv.log_sup_config;

CREATE TABLE aud_nut_fila (cd_nut_fila NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_nut_fila PRIMARY KEY (cd_nut_fila));
GRANT SELECT ON aud_nut_fila TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_nut_fila FOR dbamv.aud_nut_fila;

CREATE TABLE hist_nut_fila (cd_nut_fila NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_nut_fila PRIMARY KEY (cd_nut_fila));
GRANT SELECT ON hist_nut_fila TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_nut_fila FOR dbamv.hist_nut_fila;

CREATE TABLE aud_lab_importacao (cd_lab_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_lab_importacao PRIMARY KEY (cd_lab_importacao));
GRANT SELECT ON aud_lab_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_lab_importacao FOR dbamv.aud_lab_importacao;

CREATE TABLE cfg_fin_importacao (cd_fin_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_fin_importacao PRIMARY KEY (cd_fin_importacao));
GRANT SELECT ON cfg_fin_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_fin_importacao FOR dbamv.cfg_fin_importacao;

-- cfg_fin_importacao: 33 linhas
INSERT ALL
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU038', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU005', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU031', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU022', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU007', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU008', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU008', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU014', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU007', TO_DATE('2026-09-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU007', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU040', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU027', TO_DATE('2026-06-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU011', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU024', TO_DATE('2026-08-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU035', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU016', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU006', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU001', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU035', TO_DATE('2026-06-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU037', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU040', TO_DATE('2026-09-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU005', TO_DATE('2026-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU032', TO_DATE('2026-06-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU032', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU017', TO_DATE('2026-09-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU010', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU027', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU016', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU019', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU004', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU016', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'S', 'USU037', TO_DATE('2026-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_importacao (cd_fin_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU014', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE hist_pss_usuario (cd_pss_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_pss_usuario PRIMARY KEY (cd_pss_usuario));
GRANT SELECT ON hist_pss_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_pss_usuario FOR dbamv.hist_pss_usuario;

CREATE TABLE aud_far_perfil (cd_far_perfil NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_far_perfil PRIMARY KEY (cd_far_perfil));
GRANT SELECT ON aud_far_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_far_perfil FOR dbamv.aud_far_perfil;

CREATE TABLE tmp_int_perfil (cd_int_perfil NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_int_perfil PRIMARY KEY (cd_int_perfil));
GRANT SELECT ON tmp_int_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_int_perfil FOR dbamv.tmp_int_perfil;

CREATE TABLE tmp_sam_tela (cd_sam_tela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_sam_tela PRIMARY KEY (cd_sam_tela));
GRANT SELECT ON tmp_sam_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_sam_tela FOR dbamv.tmp_sam_tela;

CREATE TABLE log_fin_regra (cd_fin_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_fin_regra PRIMARY KEY (cd_fin_regra));
GRANT SELECT ON log_fin_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_fin_regra FOR dbamv.log_fin_regra;

-- log_fin_regra: 11 linhas
INSERT ALL
  INTO log_fin_regra (cd_fin_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU001', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fin_regra (cd_fin_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU037', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fin_regra (cd_fin_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU021', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fin_regra (cd_fin_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU024', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fin_regra (cd_fin_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU040', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fin_regra (cd_fin_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU016', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fin_regra (cd_fin_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU021', TO_DATE('2026-05-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fin_regra (cd_fin_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU022', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fin_regra (cd_fin_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU031', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fin_regra (cd_fin_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU040', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fin_regra (cd_fin_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU001', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_ate_impressao (cd_ate_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_ate_impressao PRIMARY KEY (cd_ate_impressao));
GRANT SELECT ON log_ate_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_ate_impressao FOR dbamv.log_ate_impressao;

CREATE TABLE aud_nut_usuario (cd_nut_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_nut_usuario PRIMARY KEY (cd_nut_usuario));
GRANT SELECT ON aud_nut_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_nut_usuario FOR dbamv.aud_nut_usuario;

-- aud_nut_usuario: 11 linhas
INSERT ALL
  INTO aud_nut_usuario (cd_nut_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU007', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_usuario (cd_nut_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU032', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_usuario (cd_nut_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU018', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_usuario (cd_nut_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU010', TO_DATE('2026-07-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_usuario (cd_nut_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU015', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_usuario (cd_nut_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU020', TO_DATE('2026-09-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_usuario (cd_nut_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU017', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_usuario (cd_nut_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU028', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_usuario (cd_nut_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU027', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_usuario (cd_nut_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU005', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_usuario (cd_nut_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU006', TO_DATE('2026-06-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_ate_fila (cd_ate_fila NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_ate_fila PRIMARY KEY (cd_ate_fila));
GRANT SELECT ON aud_ate_fila TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_ate_fila FOR dbamv.aud_ate_fila;

CREATE TABLE hist_cme_job (cd_cme_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_cme_job PRIMARY KEY (cd_cme_job));
GRANT SELECT ON hist_cme_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_cme_job FOR dbamv.hist_cme_job;

-- hist_cme_job: 9 linhas
INSERT ALL
  INTO hist_cme_job (cd_cme_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU029', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_job (cd_cme_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU007', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_job (cd_cme_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU033', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_job (cd_cme_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU004', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_job (cd_cme_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU028', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_job (cd_cme_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU036', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_job (cd_cme_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU022', TO_DATE('2026-10-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_job (cd_cme_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU016', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_job (cd_cme_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU031', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE hist_ate_exportacao (cd_ate_exportacao NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_ate_exportacao PRIMARY KEY (cd_ate_exportacao));
GRANT SELECT ON hist_ate_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_ate_exportacao FOR dbamv.hist_ate_exportacao;

CREATE TABLE tmp_fin_turno (cd_fin_turno NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_fin_turno PRIMARY KEY (cd_fin_turno));
GRANT SELECT ON tmp_fin_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_fin_turno FOR dbamv.tmp_fin_turno;

CREATE TABLE aud_pss_mensagem (cd_pss_mensagem NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_pss_mensagem PRIMARY KEY (cd_pss_mensagem));
GRANT SELECT ON aud_pss_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_pss_mensagem FOR dbamv.aud_pss_mensagem;

CREATE TABLE cfg_est_erro (cd_est_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_est_erro PRIMARY KEY (cd_est_erro));
GRANT SELECT ON cfg_est_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_est_erro FOR dbamv.cfg_est_erro;

-- cfg_est_erro: 47 linhas
INSERT ALL
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU003', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU029', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU036', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU014', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU023', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU001', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU034', TO_DATE('2026-08-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU036', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU026', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU018', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU007', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU013', TO_DATE('2026-10-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU034', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU008', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU011', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU040', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU026', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU008', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU030', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU029', TO_DATE('2026-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU032', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU031', TO_DATE('2026-07-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU033', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU008', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU038', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU039', TO_DATE('2026-09-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU032', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU034', TO_DATE('2026-09-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU016', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU034', TO_DATE('2026-06-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU024', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'S', 'USU028', TO_DATE('2026-10-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU001', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU033', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU009', TO_DATE('2026-07-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU009', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU014', TO_DATE('2026-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'N', 'USU021', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU034', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU013', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU030', TO_DATE('2026-08-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'N', 'USU016', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU029', TO_DATE('2026-11-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'S', 'USU032', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'N', 'USU040', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'N', 'USU004', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_est_erro (cd_est_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'S', 'USU012', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_est_rotina (cd_est_rotina NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_est_rotina PRIMARY KEY (cd_est_rotina));
GRANT SELECT ON log_est_rotina TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_est_rotina FOR dbamv.log_est_rotina;

-- log_est_rotina: 8 linhas
INSERT ALL
  INTO log_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU013', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU038', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU038', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU014', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU024', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU017', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU025', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU016', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_est_impressao (cd_est_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_est_impressao PRIMARY KEY (cd_est_impressao));
GRANT SELECT ON par_est_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_est_impressao FOR dbamv.par_est_impressao;

CREATE TABLE aud_age_perfil (cd_age_perfil NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_age_perfil PRIMARY KEY (cd_age_perfil));
GRANT SELECT ON aud_age_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_age_perfil FOR dbamv.aud_age_perfil;

CREATE TABLE aud_nut_job (cd_nut_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_nut_job PRIMARY KEY (cd_nut_job));
GRANT SELECT ON aud_nut_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_nut_job FOR dbamv.aud_nut_job;

-- aud_nut_job: 47 linhas
INSERT ALL
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU020', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU020', TO_DATE('2026-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU015', TO_DATE('2026-05-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU030', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU019', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU036', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU037', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU012', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU014', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU019', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU032', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU021', TO_DATE('2026-10-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU006', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU037', TO_DATE('2026-07-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU015', TO_DATE('2026-07-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU003', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU026', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU008', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU008', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU007', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU036', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU032', TO_DATE('2026-09-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU039', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU039', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU010', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU015', TO_DATE('2026-07-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU002', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU039', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU021', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU040', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU025', TO_DATE('2026-07-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU006', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU016', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU004', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU008', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU029', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU014', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU040', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU003', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU001', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU034', TO_DATE('2026-10-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU014', TO_DATE('2026-09-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'N', 'USU031', TO_DATE('2026-09-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'S', 'USU008', TO_DATE('2026-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'N', 'USU033', TO_DATE('2026-05-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'S', 'USU018', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_nut_job (cd_nut_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'S', 'USU012', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aux_sam_mensagem (cd_sam_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_sam_mensagem PRIMARY KEY (cd_sam_mensagem));
GRANT SELECT ON aux_sam_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_sam_mensagem FOR dbamv.aux_sam_mensagem;

-- aux_sam_mensagem: 34 linhas
INSERT ALL
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU022', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU027', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU015', TO_DATE('2026-05-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU025', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU002', TO_DATE('2026-07-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU028', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU038', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU014', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU038', TO_DATE('2026-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU036', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU038', TO_DATE('2026-06-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU039', TO_DATE('2026-10-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU010', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU008', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU029', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU039', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU009', TO_DATE('2026-07-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU019', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU011', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU037', TO_DATE('2026-10-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU021', TO_DATE('2026-07-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU039', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU003', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU008', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU016', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU028', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU027', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU017', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU017', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU033', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU019', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'S', 'USU014', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU031', TO_DATE('2026-07-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_mensagem (cd_sam_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU033', TO_DATE('2026-08-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_est_importacao (cd_est_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_est_importacao PRIMARY KEY (cd_est_importacao));
GRANT SELECT ON log_est_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_est_importacao FOR dbamv.log_est_importacao;

CREATE TABLE cfg_sam_impressao (cd_sam_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_sam_impressao PRIMARY KEY (cd_sam_impressao));
GRANT SELECT ON cfg_sam_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_sam_impressao FOR dbamv.cfg_sam_impressao;

CREATE TABLE cfg_pss_impressao (cd_pss_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_pss_impressao PRIMARY KEY (cd_pss_impressao));
GRANT SELECT ON cfg_pss_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_pss_impressao FOR dbamv.cfg_pss_impressao;

-- cfg_pss_impressao: 49 linhas
INSERT ALL
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU008', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU035', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU021', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU038', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU036', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU016', TO_DATE('2026-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU036', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU002', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU036', TO_DATE('2026-10-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU011', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU030', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU037', TO_DATE('2026-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU026', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU027', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU003', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU033', TO_DATE('2026-09-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU013', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU021', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU039', TO_DATE('2026-08-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU019', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU006', TO_DATE('2026-08-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU009', TO_DATE('2026-09-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU031', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU017', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU009', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU024', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU040', TO_DATE('2026-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU039', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU029', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU007', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU009', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU024', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU036', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU038', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU002', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU034', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'S', 'USU025', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU032', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU030', TO_DATE('2026-10-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU006', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'S', 'USU032', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU019', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU006', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'N', 'USU029', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'N', 'USU020', TO_DATE('2026-08-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'N', 'USU008', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'N', 'USU018', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 'VALOR 48', 'N', 'USU032', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_pss_impressao (cd_pss_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 'VALOR 49', 'N', 'USU022', TO_DATE('2026-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE hist_int_campo (cd_int_campo NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_int_campo PRIMARY KEY (cd_int_campo));
GRANT SELECT ON hist_int_campo TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_int_campo FOR dbamv.hist_int_campo;

CREATE TABLE aux_ctb_campo (cd_ctb_campo NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_ctb_campo PRIMARY KEY (cd_ctb_campo));
GRANT SELECT ON aux_ctb_campo TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_ctb_campo FOR dbamv.aux_ctb_campo;

CREATE TABLE par_pss_rotina (cd_pss_rotina NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_pss_rotina PRIMARY KEY (cd_pss_rotina));
GRANT SELECT ON par_pss_rotina TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_pss_rotina FOR dbamv.par_pss_rotina;

CREATE TABLE tmp_age_config (cd_age_config NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_age_config PRIMARY KEY (cd_age_config));
GRANT SELECT ON tmp_age_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_age_config FOR dbamv.tmp_age_config;

-- tmp_age_config: 6 linhas
INSERT ALL
  INTO tmp_age_config (cd_age_config, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 20, 'VALOR 1', 'N', 'USU021', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_config (cd_age_config, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 10, 'VALOR 2', 'N', 'USU014', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_config (cd_age_config, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 20, 'VALOR 3', 'S', 'USU029', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_config (cd_age_config, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 90, 'VALOR 4', 'N', 'USU018', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_config (cd_age_config, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 90, 'VALOR 5', 'S', 'USU002', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_config (cd_age_config, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 90, 'VALOR 6', 'N', 'USU026', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE hist_age_rotina (cd_age_rotina NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_age_rotina PRIMARY KEY (cd_age_rotina));
GRANT SELECT ON hist_age_rotina TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_age_rotina FOR dbamv.hist_age_rotina;

CREATE TABLE log_ate_turno (cd_ate_turno NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_ate_turno PRIMARY KEY (cd_ate_turno));
GRANT SELECT ON log_ate_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_ate_turno FOR dbamv.log_ate_turno;

CREATE TABLE aud_img_tabela (cd_img_tabela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_img_tabela PRIMARY KEY (cd_img_tabela));
GRANT SELECT ON aud_img_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_img_tabela FOR dbamv.aud_img_tabela;

CREATE TABLE hist_age_job (cd_age_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_age_job PRIMARY KEY (cd_age_job));
GRANT SELECT ON hist_age_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_age_job FOR dbamv.hist_age_job;

CREATE TABLE log_pss_config (cd_pss_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_pss_config PRIMARY KEY (cd_pss_config));
GRANT SELECT ON log_pss_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_pss_config FOR dbamv.log_pss_config;

CREATE TABLE aud_est_tabela (cd_est_tabela NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_est_tabela PRIMARY KEY (cd_est_tabela));
GRANT SELECT ON aud_est_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_est_tabela FOR dbamv.aud_est_tabela;

CREATE TABLE aux_cme_mensagem (cd_cme_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_cme_mensagem PRIMARY KEY (cd_cme_mensagem));
GRANT SELECT ON aux_cme_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_cme_mensagem FOR dbamv.aux_cme_mensagem;

CREATE TABLE aux_est_turno (cd_est_turno NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_est_turno PRIMARY KEY (cd_est_turno));
GRANT SELECT ON aux_est_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_est_turno FOR dbamv.aux_est_turno;

-- aux_est_turno: 23 linhas
INSERT ALL
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU008', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU032', TO_DATE('2026-05-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU006', TO_DATE('2026-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU037', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU005', TO_DATE('2026-07-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU018', TO_DATE('2026-10-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU040', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU009', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU033', TO_DATE('2026-05-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU021', TO_DATE('2026-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU006', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU026', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU030', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU012', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU011', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU004', TO_DATE('2026-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU006', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU009', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU015', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU013', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU032', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU029', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_turno (cd_est_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU032', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_far_usuario (cd_far_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_far_usuario PRIMARY KEY (cd_far_usuario));
GRANT SELECT ON tmp_far_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_far_usuario FOR dbamv.tmp_far_usuario;

CREATE TABLE cfg_fat_exportacao (cd_fat_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_fat_exportacao PRIMARY KEY (cd_fat_exportacao));
GRANT SELECT ON cfg_fat_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_fat_exportacao FOR dbamv.cfg_fat_exportacao;

CREATE TABLE par_int_mensagem (cd_int_mensagem NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_int_mensagem PRIMARY KEY (cd_int_mensagem));
GRANT SELECT ON par_int_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_int_mensagem FOR dbamv.par_int_mensagem;

CREATE TABLE par_fin_job (cd_fin_job NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_fin_job PRIMARY KEY (cd_fin_job));
GRANT SELECT ON par_fin_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_fin_job FOR dbamv.par_fin_job;

-- par_fin_job: 29 linhas
INSERT ALL
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 30, 'VALOR 1', 'N', 'USU005', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 20, 'VALOR 2', 'S', 'USU032', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 30, 'VALOR 3', 'N', 'USU026', TO_DATE('2026-09-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 90, 'VALOR 4', 'S', 'USU009', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 90, 'VALOR 5', 'N', 'USU040', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 20, 'VALOR 6', 'S', 'USU023', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 10, 'VALOR 7', 'S', 'USU005', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 10, 'VALOR 8', 'S', 'USU032', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 90, 'VALOR 9', 'S', 'USU035', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 10, 'VALOR 10', 'S', 'USU034', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 10, 'VALOR 11', 'S', 'USU002', TO_DATE('2026-05-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 30, 'VALOR 12', 'N', 'USU030', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 90, 'VALOR 13', 'N', 'USU035', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 10, 'VALOR 14', 'N', 'USU001', TO_DATE('2026-08-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 20, 'VALOR 15', 'N', 'USU035', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 20, 'VALOR 16', 'N', 'USU026', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 30, 'VALOR 17', 'N', 'USU012', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 20, 'VALOR 18', 'S', 'USU005', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 90, 'VALOR 19', 'N', 'USU036', TO_DATE('2026-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 30, 'VALOR 20', 'S', 'USU003', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 10, 'VALOR 21', 'S', 'USU014', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 10, 'VALOR 22', 'N', 'USU039', TO_DATE('2026-10-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 10, 'VALOR 23', 'S', 'USU005', TO_DATE('2026-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 30, 'VALOR 24', 'S', 'USU019', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 20, 'VALOR 25', 'N', 'USU013', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 30, 'VALOR 26', 'N', 'USU008', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 10, 'VALOR 27', 'S', 'USU040', TO_DATE('2026-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 10, 'VALOR 28', 'N', 'USU014', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fin_job (cd_fin_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 30, 'VALOR 29', 'S', 'USU009', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_lab_regra (cd_lab_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_lab_regra PRIMARY KEY (cd_lab_regra));
GRANT SELECT ON aud_lab_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_lab_regra FOR dbamv.aud_lab_regra;

CREATE TABLE tmp_int_lote (cd_int_lote NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_int_lote PRIMARY KEY (cd_int_lote));
GRANT SELECT ON tmp_int_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_int_lote FOR dbamv.tmp_int_lote;

CREATE TABLE hist_lab_regra (cd_lab_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_lab_regra PRIMARY KEY (cd_lab_regra));
GRANT SELECT ON hist_lab_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_lab_regra FOR dbamv.hist_lab_regra;

CREATE TABLE aux_age_campo (cd_age_campo NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_age_campo PRIMARY KEY (cd_age_campo));
GRANT SELECT ON aux_age_campo TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_age_campo FOR dbamv.aux_age_campo;

CREATE TABLE hist_far_acesso (cd_far_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_far_acesso PRIMARY KEY (cd_far_acesso));
GRANT SELECT ON hist_far_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_far_acesso FOR dbamv.hist_far_acesso;

-- hist_far_acesso: 14 linhas
INSERT ALL
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU012', TO_DATE('2026-08-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU031', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU032', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU040', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU032', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU031', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU031', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU040', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU007', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU018', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU005', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU036', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU018', TO_DATE('2026-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_far_acesso (cd_far_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU006', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE cfg_fat_tabela (cd_fat_tabela NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_fat_tabela PRIMARY KEY (cd_fat_tabela));
GRANT SELECT ON cfg_fat_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_fat_tabela FOR dbamv.cfg_fat_tabela;

-- cfg_fat_tabela: 30 linhas
INSERT ALL
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 90, 'VALOR 1', 'N', 'USU022', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 90, 'VALOR 2', 'N', 'USU027', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 30, 'VALOR 3', 'N', 'USU006', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 30, 'VALOR 4', 'N', 'USU035', TO_DATE('2026-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 20, 'VALOR 5', 'S', 'USU027', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 90, 'VALOR 6', 'S', 'USU012', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 20, 'VALOR 7', 'S', 'USU020', TO_DATE('2026-07-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 30, 'VALOR 8', 'N', 'USU006', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 30, 'VALOR 9', 'S', 'USU022', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 30, 'VALOR 10', 'S', 'USU012', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 20, 'VALOR 11', 'N', 'USU035', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 10, 'VALOR 12', 'S', 'USU019', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 30, 'VALOR 13', 'S', 'USU030', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 10, 'VALOR 14', 'N', 'USU026', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 20, 'VALOR 15', 'S', 'USU034', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 90, 'VALOR 16', 'S', 'USU014', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 90, 'VALOR 17', 'N', 'USU007', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 10, 'VALOR 18', 'S', 'USU019', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 30, 'VALOR 19', 'S', 'USU007', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 30, 'VALOR 20', 'S', 'USU038', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 20, 'VALOR 21', 'S', 'USU035', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 90, 'VALOR 22', 'S', 'USU003', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 20, 'VALOR 23', 'S', 'USU038', TO_DATE('2026-07-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 20, 'VALOR 24', 'N', 'USU029', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 20, 'VALOR 25', 'N', 'USU015', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 20, 'VALOR 26', 'N', 'USU019', TO_DATE('2026-06-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 90, 'VALOR 27', 'S', 'USU013', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 10, 'VALOR 28', 'S', 'USU021', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 10, 'VALOR 29', 'S', 'USU010', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_tabela (cd_fat_tabela, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 20, 'VALOR 30', 'N', 'USU027', TO_DATE('2026-10-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_img_job (cd_img_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_img_job PRIMARY KEY (cd_img_job));
GRANT SELECT ON tmp_img_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_img_job FOR dbamv.tmp_img_job;

CREATE TABLE tmp_far_fila (cd_far_fila NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_far_fila PRIMARY KEY (cd_far_fila));
GRANT SELECT ON tmp_far_fila TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_far_fila FOR dbamv.tmp_far_fila;

CREATE TABLE par_img_usuario (cd_img_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_img_usuario PRIMARY KEY (cd_img_usuario));
GRANT SELECT ON par_img_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_img_usuario FOR dbamv.par_img_usuario;

CREATE TABLE hist_age_tela (cd_age_tela NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_age_tela PRIMARY KEY (cd_age_tela));
GRANT SELECT ON hist_age_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_age_tela FOR dbamv.hist_age_tela;

CREATE TABLE par_sam_config (cd_sam_config NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_sam_config PRIMARY KEY (cd_sam_config));
GRANT SELECT ON par_sam_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_sam_config FOR dbamv.par_sam_config;

CREATE TABLE tmp_nut_perfil (cd_nut_perfil NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_nut_perfil PRIMARY KEY (cd_nut_perfil));
GRANT SELECT ON tmp_nut_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_nut_perfil FOR dbamv.tmp_nut_perfil;

CREATE TABLE cfg_cme_setor (cd_cme_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_cme_setor PRIMARY KEY (cd_cme_setor));
GRANT SELECT ON cfg_cme_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_cme_setor FOR dbamv.cfg_cme_setor;

CREATE TABLE aud_cme_regra (cd_cme_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_cme_regra PRIMARY KEY (cd_cme_regra));
GRANT SELECT ON aud_cme_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_cme_regra FOR dbamv.aud_cme_regra;

CREATE TABLE log_int_perfil (cd_int_perfil NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_int_perfil PRIMARY KEY (cd_int_perfil));
GRANT SELECT ON log_int_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_int_perfil FOR dbamv.log_int_perfil;

CREATE TABLE aud_sam_exportacao (cd_sam_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_sam_exportacao PRIMARY KEY (cd_sam_exportacao));
GRANT SELECT ON aud_sam_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_sam_exportacao FOR dbamv.aud_sam_exportacao;

-- aud_sam_exportacao: 47 linhas
INSERT ALL
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU035', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU007', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU034', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU030', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU034', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU011', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU027', TO_DATE('2026-09-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU032', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU014', TO_DATE('2026-10-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU011', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU005', TO_DATE('2026-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU021', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU036', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU039', TO_DATE('2026-10-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU015', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU024', TO_DATE('2026-08-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU035', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU023', TO_DATE('2026-06-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU025', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU021', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU015', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU007', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU009', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU035', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU029', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU008', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU005', TO_DATE('2026-10-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU021', TO_DATE('2026-11-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU018', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU016', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU010', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU004', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU004', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU025', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU036', TO_DATE('2026-07-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU003', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU020', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU027', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU001', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU038', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'S', 'USU012', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU004', TO_DATE('2026-09-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'N', 'USU019', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'N', 'USU021', TO_DATE('2026-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'N', 'USU018', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'N', 'USU022', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'N', 'USU038', TO_DATE('2026-10-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_img_tela (cd_img_tela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_img_tela PRIMARY KEY (cd_img_tela));
GRANT SELECT ON tmp_img_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_img_tela FOR dbamv.tmp_img_tela;

-- tmp_img_tela: 41 linhas
INSERT ALL
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU003', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU006', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU031', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU009', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU010', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU001', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU004', TO_DATE('2026-07-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU018', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU017', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU027', TO_DATE('2026-08-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU020', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU023', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU034', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU031', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU038', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU003', TO_DATE('2026-10-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU015', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU018', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU029', TO_DATE('2026-08-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU021', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU039', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU011', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU003', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU009', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU025', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU040', TO_DATE('2026-05-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU034', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU006', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU021', TO_DATE('2026-05-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU032', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU001', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU013', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU020', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU016', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU030', TO_DATE('2026-07-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU004', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU028', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'N', 'USU019', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'S', 'USU011', TO_DATE('2026-09-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU007', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_tela (cd_img_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'S', 'USU016', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aux_nut_erro (cd_nut_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_nut_erro PRIMARY KEY (cd_nut_erro));
GRANT SELECT ON aux_nut_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_nut_erro FOR dbamv.aux_nut_erro;

CREATE TABLE tmp_cme_rotina (cd_cme_rotina NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_cme_rotina PRIMARY KEY (cd_cme_rotina));
GRANT SELECT ON tmp_cme_rotina TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_cme_rotina FOR dbamv.tmp_cme_rotina;

-- tmp_cme_rotina: 3 linhas
INSERT ALL
  INTO tmp_cme_rotina (cd_cme_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU011', TO_DATE('2026-09-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_cme_rotina (cd_cme_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU032', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_cme_rotina (cd_cme_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU026', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE cfg_ate_tela (cd_ate_tela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_ate_tela PRIMARY KEY (cd_ate_tela));
GRANT SELECT ON cfg_ate_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_ate_tela FOR dbamv.cfg_ate_tela;

CREATE TABLE log_age_campo (cd_age_campo NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_age_campo PRIMARY KEY (cd_age_campo));
GRANT SELECT ON log_age_campo TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_age_campo FOR dbamv.log_age_campo;

CREATE TABLE aud_nut_exportacao (cd_nut_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_nut_exportacao PRIMARY KEY (cd_nut_exportacao));
GRANT SELECT ON aud_nut_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_nut_exportacao FOR dbamv.aud_nut_exportacao;

CREATE TABLE par_nut_usuario (cd_nut_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_nut_usuario PRIMARY KEY (cd_nut_usuario));
GRANT SELECT ON par_nut_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_nut_usuario FOR dbamv.par_nut_usuario;

CREATE TABLE tmp_pss_turno (cd_pss_turno NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_pss_turno PRIMARY KEY (cd_pss_turno));
GRANT SELECT ON tmp_pss_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_pss_turno FOR dbamv.tmp_pss_turno;

-- tmp_pss_turno: 7 linhas
INSERT ALL
  INTO tmp_pss_turno (cd_pss_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU013', TO_DATE('2026-10-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_turno (cd_pss_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU030', TO_DATE('2026-09-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_turno (cd_pss_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU017', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_turno (cd_pss_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU022', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_turno (cd_pss_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU030', TO_DATE('2026-08-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_turno (cd_pss_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU037', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_turno (cd_pss_turno, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU007', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_lab_config (cd_lab_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_lab_config PRIMARY KEY (cd_lab_config));
GRANT SELECT ON tmp_lab_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_lab_config FOR dbamv.tmp_lab_config;

-- tmp_lab_config: 35 linhas
INSERT ALL
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU034', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU006', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU036', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU002', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU020', TO_DATE('2026-06-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU040', TO_DATE('2026-07-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU011', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU001', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU002', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU011', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU009', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU038', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU016', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU011', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU005', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU033', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU025', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU005', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU037', TO_DATE('2026-07-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU037', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU036', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU017', TO_DATE('2026-05-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU002', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU036', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU010', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU030', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU013', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU026', TO_DATE('2026-06-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU026', TO_DATE('2026-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU029', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU036', TO_DATE('2026-11-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU033', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU017', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU010', TO_DATE('2026-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_config (cd_lab_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU012', TO_DATE('2026-10-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_int_campo (cd_int_campo NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_int_campo PRIMARY KEY (cd_int_campo));
GRANT SELECT ON par_int_campo TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_int_campo FOR dbamv.par_int_campo;

CREATE TABLE hist_img_turno (cd_img_turno NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_img_turno PRIMARY KEY (cd_img_turno));
GRANT SELECT ON hist_img_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_img_turno FOR dbamv.hist_img_turno;

-- hist_img_turno: 8 linhas
INSERT ALL
  INTO hist_img_turno (cd_img_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 20, 'VALOR 1', 'S', 'USU025', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_turno (cd_img_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 20, 'VALOR 2', 'S', 'USU026', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_turno (cd_img_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 30, 'VALOR 3', 'S', 'USU005', TO_DATE('2026-09-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_turno (cd_img_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 20, 'VALOR 4', 'N', 'USU040', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_turno (cd_img_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 20, 'VALOR 5', 'N', 'USU027', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_turno (cd_img_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 30, 'VALOR 6', 'N', 'USU004', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_turno (cd_img_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 10, 'VALOR 7', 'N', 'USU026', TO_DATE('2026-10-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_turno (cd_img_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 20, 'VALOR 8', 'N', 'USU004', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_ate_setor (cd_ate_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_ate_setor PRIMARY KEY (cd_ate_setor));
GRANT SELECT ON tmp_ate_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_ate_setor FOR dbamv.tmp_ate_setor;

CREATE TABLE tmp_img_acesso (cd_img_acesso NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_img_acesso PRIMARY KEY (cd_img_acesso));
GRANT SELECT ON tmp_img_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_img_acesso FOR dbamv.tmp_img_acesso;

-- tmp_img_acesso: 53 linhas
INSERT ALL
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 10, 'VALOR 1', 'S', 'USU039', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 10, 'VALOR 2', 'S', 'USU012', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 20, 'VALOR 3', 'N', 'USU020', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 10, 'VALOR 4', 'S', 'USU008', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 10, 'VALOR 5', 'S', 'USU008', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 90, 'VALOR 6', 'N', 'USU015', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 10, 'VALOR 7', 'N', 'USU020', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 30, 'VALOR 8', 'S', 'USU007', TO_DATE('2026-07-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 30, 'VALOR 9', 'S', 'USU021', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 20, 'VALOR 10', 'N', 'USU020', TO_DATE('2026-07-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 30, 'VALOR 11', 'S', 'USU022', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 10, 'VALOR 12', 'N', 'USU033', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 10, 'VALOR 13', 'S', 'USU038', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 90, 'VALOR 14', 'N', 'USU012', TO_DATE('2026-11-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 30, 'VALOR 15', 'S', 'USU036', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 20, 'VALOR 16', 'N', 'USU031', TO_DATE('2026-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 20, 'VALOR 17', 'N', 'USU001', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 30, 'VALOR 18', 'N', 'USU033', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 20, 'VALOR 19', 'S', 'USU040', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 90, 'VALOR 20', 'N', 'USU016', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 90, 'VALOR 21', 'S', 'USU019', TO_DATE('2026-08-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 30, 'VALOR 22', 'S', 'USU004', TO_DATE('2026-07-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 20, 'VALOR 23', 'S', 'USU011', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 30, 'VALOR 24', 'S', 'USU026', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 10, 'VALOR 25', 'N', 'USU010', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 30, 'VALOR 26', 'S', 'USU009', TO_DATE('2026-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 90, 'VALOR 27', 'N', 'USU011', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 10, 'VALOR 28', 'S', 'USU029', TO_DATE('2026-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 10, 'VALOR 29', 'S', 'USU016', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 90, 'VALOR 30', 'N', 'USU029', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 10, 'VALOR 31', 'S', 'USU017', TO_DATE('2026-08-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 90, 'VALOR 32', 'S', 'USU012', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 20, 'VALOR 33', 'S', 'USU005', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 20, 'VALOR 34', 'N', 'USU013', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 10, 'VALOR 35', 'S', 'USU014', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 20, 'VALOR 36', 'S', 'USU008', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 20, 'VALOR 37', 'S', 'USU031', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 30, 'VALOR 38', 'N', 'USU027', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 10, 'VALOR 39', 'N', 'USU005', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 10, 'VALOR 40', 'N', 'USU035', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 30, 'VALOR 41', 'S', 'USU004', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 10, 'VALOR 42', 'S', 'USU016', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 30, 'VALOR 43', 'N', 'USU014', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 10, 'VALOR 44', 'S', 'USU040', TO_DATE('2026-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 30, 'VALOR 45', 'S', 'USU040', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 30, 'VALOR 46', 'S', 'USU003', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 30, 'VALOR 47', 'S', 'USU001', TO_DATE('2026-07-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 20, 'VALOR 48', 'N', 'USU014', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 90, 'VALOR 49', 'N', 'USU029', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (50, 90, 'VALOR 50', 'N', 'USU003', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (51, 10, 'VALOR 51', 'N', 'USU018', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (52, 10, 'VALOR 52', 'S', 'USU022', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_acesso (cd_img_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (53, 90, 'VALOR 53', 'S', 'USU030', TO_DATE('2026-09-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_img_mensagem (cd_img_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_img_mensagem PRIMARY KEY (cd_img_mensagem));
GRANT SELECT ON tmp_img_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_img_mensagem FOR dbamv.tmp_img_mensagem;

-- tmp_img_mensagem: 37 linhas
INSERT ALL
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU006', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU033', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU023', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU004', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU012', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU035', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU010', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU028', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU020', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU039', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU026', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU030', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU001', TO_DATE('2026-09-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU006', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU033', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU011', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU009', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU014', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU007', TO_DATE('2026-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU025', TO_DATE('2026-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU037', TO_DATE('2026-05-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU021', TO_DATE('2026-06-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU036', TO_DATE('2026-07-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU008', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU005', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU032', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU015', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU024', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU026', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU032', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU030', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU005', TO_DATE('2026-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU015', TO_DATE('2026-07-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU003', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU024', TO_DATE('2026-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU039', TO_DATE('2026-05-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'S', 'USU011', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_ctb_job (cd_ctb_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_ctb_job PRIMARY KEY (cd_ctb_job));
GRANT SELECT ON log_ctb_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_ctb_job FOR dbamv.log_ctb_job;

CREATE TABLE log_far_tabela (cd_far_tabela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_far_tabela PRIMARY KEY (cd_far_tabela));
GRANT SELECT ON log_far_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_far_tabela FOR dbamv.log_far_tabela;

-- log_far_tabela: 4 linhas
INSERT ALL
  INTO log_far_tabela (cd_far_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU003', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_far_tabela (cd_far_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU016', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_far_tabela (cd_far_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU030', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_far_tabela (cd_far_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU034', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_est_tela (cd_est_tela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_est_tela PRIMARY KEY (cd_est_tela));
GRANT SELECT ON log_est_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_est_tela FOR dbamv.log_est_tela;

-- log_est_tela: 48 linhas
INSERT ALL
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU026', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU020', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU040', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU009', TO_DATE('2026-07-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU027', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU029', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU027', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU022', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU039', TO_DATE('2026-07-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU008', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU033', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU032', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU036', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU018', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU028', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU018', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU015', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU023', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU030', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU038', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU022', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU007', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU023', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU027', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU027', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU010', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU011', TO_DATE('2026-09-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU003', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU009', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU034', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU027', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU029', TO_DATE('2026-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU002', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU040', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU031', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU021', TO_DATE('2026-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU023', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU027', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'S', 'USU007', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU025', TO_DATE('2026-10-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU018', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU005', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU026', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'S', 'USU014', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'N', 'USU035', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'S', 'USU028', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'N', 'USU004', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 'VALOR 48', 'S', 'USU014', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_img_job (cd_img_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_img_job PRIMARY KEY (cd_img_job));
GRANT SELECT ON par_img_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_img_job FOR dbamv.par_img_job;

CREATE TABLE hist_ate_job (cd_ate_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_ate_job PRIMARY KEY (cd_ate_job));
GRANT SELECT ON hist_ate_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_ate_job FOR dbamv.hist_ate_job;

CREATE TABLE hist_ate_turno (cd_ate_turno NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_ate_turno PRIMARY KEY (cd_ate_turno));
GRANT SELECT ON hist_ate_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_ate_turno FOR dbamv.hist_ate_turno;

CREATE TABLE par_far_tabela (cd_far_tabela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_far_tabela PRIMARY KEY (cd_far_tabela));
GRANT SELECT ON par_far_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_far_tabela FOR dbamv.par_far_tabela;

CREATE TABLE log_est_config (cd_est_config NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_est_config PRIMARY KEY (cd_est_config));
GRANT SELECT ON log_est_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_est_config FOR dbamv.log_est_config;

-- log_est_config: 3 linhas
INSERT ALL
  INTO log_est_config (cd_est_config, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 20, 'VALOR 1', 'S', 'USU034', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_config (cd_est_config, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 20, 'VALOR 2', 'S', 'USU011', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_config (cd_est_config, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 30, 'VALOR 3', 'S', 'USU012', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_img_job (cd_img_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_img_job PRIMARY KEY (cd_img_job));
GRANT SELECT ON aud_img_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_img_job FOR dbamv.aud_img_job;

CREATE TABLE tmp_pss_impressao (cd_pss_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_pss_impressao PRIMARY KEY (cd_pss_impressao));
GRANT SELECT ON tmp_pss_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_pss_impressao FOR dbamv.tmp_pss_impressao;

CREATE TABLE log_ctb_lote (cd_ctb_lote NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_ctb_lote PRIMARY KEY (cd_ctb_lote));
GRANT SELECT ON log_ctb_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_ctb_lote FOR dbamv.log_ctb_lote;

CREATE TABLE hist_sam_erro (cd_sam_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_sam_erro PRIMARY KEY (cd_sam_erro));
GRANT SELECT ON hist_sam_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_sam_erro FOR dbamv.hist_sam_erro;

CREATE TABLE hist_sup_erro (cd_sup_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_sup_erro PRIMARY KEY (cd_sup_erro));
GRANT SELECT ON hist_sup_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_sup_erro FOR dbamv.hist_sup_erro;

CREATE TABLE aud_img_usuario (cd_img_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_img_usuario PRIMARY KEY (cd_img_usuario));
GRANT SELECT ON aud_img_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_img_usuario FOR dbamv.aud_img_usuario;

CREATE TABLE aud_pss_erro (cd_pss_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_pss_erro PRIMARY KEY (cd_pss_erro));
GRANT SELECT ON aud_pss_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_pss_erro FOR dbamv.aud_pss_erro;

CREATE TABLE cfg_fin_job (cd_fin_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_fin_job PRIMARY KEY (cd_fin_job));
GRANT SELECT ON cfg_fin_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_fin_job FOR dbamv.cfg_fin_job;

-- cfg_fin_job: 58 linhas
INSERT ALL
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU019', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU010', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU001', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU003', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU025', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU026', TO_DATE('2026-05-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU021', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU016', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU031', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU040', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU023', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU018', TO_DATE('2026-05-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU019', TO_DATE('2026-08-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU032', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU033', TO_DATE('2026-07-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU016', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU030', TO_DATE('2026-05-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU009', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU022', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU024', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU018', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU010', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU032', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU017', TO_DATE('2026-07-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU034', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU023', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU020', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU016', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU034', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU033', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU003', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU010', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU019', TO_DATE('2026-10-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU036', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU039', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU034', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'S', 'USU019', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU006', TO_DATE('2026-09-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU039', TO_DATE('2026-08-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU012', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU024', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'N', 'USU004', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU036', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'S', 'USU009', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'N', 'USU039', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'S', 'USU012', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'N', 'USU036', TO_DATE('2026-09-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 'VALOR 48', 'S', 'USU028', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 'VALOR 49', 'S', 'USU035', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (50, 'VALOR 50', 'S', 'USU003', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (51, 'VALOR 51', 'N', 'USU032', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (52, 'VALOR 52', 'S', 'USU019', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (53, 'VALOR 53', 'N', 'USU021', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (54, 'VALOR 54', 'N', 'USU016', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (55, 'VALOR 55', 'S', 'USU012', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (56, 'VALOR 56', 'N', 'USU008', TO_DATE('2026-10-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (57, 'VALOR 57', 'N', 'USU035', TO_DATE('2026-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fin_job (cd_fin_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (58, 'VALOR 58', 'N', 'USU015', TO_DATE('2026-07-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_cme_setor (cd_cme_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_cme_setor PRIMARY KEY (cd_cme_setor));
GRANT SELECT ON tmp_cme_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_cme_setor FOR dbamv.tmp_cme_setor;

CREATE TABLE cfg_cme_job (cd_cme_job NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_cme_job PRIMARY KEY (cd_cme_job));
GRANT SELECT ON cfg_cme_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_cme_job FOR dbamv.cfg_cme_job;

CREATE TABLE aux_est_config (cd_est_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_est_config PRIMARY KEY (cd_est_config));
GRANT SELECT ON aux_est_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_est_config FOR dbamv.aux_est_config;

-- aux_est_config: 12 linhas
INSERT ALL
  INTO aux_est_config (cd_est_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU005', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_config (cd_est_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU029', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_config (cd_est_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU005', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_config (cd_est_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU007', TO_DATE('2026-09-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_config (cd_est_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU008', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_config (cd_est_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU028', TO_DATE('2026-10-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_config (cd_est_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU031', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_config (cd_est_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU007', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_config (cd_est_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU033', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_config (cd_est_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU006', TO_DATE('2026-08-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_config (cd_est_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU038', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_est_config (cd_est_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU002', TO_DATE('2026-09-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_ctb_config (cd_ctb_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_ctb_config PRIMARY KEY (cd_ctb_config));
GRANT SELECT ON par_ctb_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_ctb_config FOR dbamv.par_ctb_config;

CREATE TABLE tmp_sup_regra (cd_sup_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_sup_regra PRIMARY KEY (cd_sup_regra));
GRANT SELECT ON tmp_sup_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_sup_regra FOR dbamv.tmp_sup_regra;

CREATE TABLE aud_far_regra (cd_far_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_far_regra PRIMARY KEY (cd_far_regra));
GRANT SELECT ON aud_far_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_far_regra FOR dbamv.aud_far_regra;

CREATE TABLE aux_sam_fila (cd_sam_fila NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_sam_fila PRIMARY KEY (cd_sam_fila));
GRANT SELECT ON aux_sam_fila TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_sam_fila FOR dbamv.aux_sam_fila;

CREATE TABLE tmp_fin_importacao (cd_fin_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_fin_importacao PRIMARY KEY (cd_fin_importacao));
GRANT SELECT ON tmp_fin_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_fin_importacao FOR dbamv.tmp_fin_importacao;

CREATE TABLE log_lab_acesso (cd_lab_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_lab_acesso PRIMARY KEY (cd_lab_acesso));
GRANT SELECT ON log_lab_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_lab_acesso FOR dbamv.log_lab_acesso;

-- log_lab_acesso: 34 linhas
INSERT ALL
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU026', TO_DATE('2026-05-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU040', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU021', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU037', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU006', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU017', TO_DATE('2026-05-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU006', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU008', TO_DATE('2026-05-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU032', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU001', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU032', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU032', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU033', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU007', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU014', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU011', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU010', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU031', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU014', TO_DATE('2026-09-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU023', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU030', TO_DATE('2026-10-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU024', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU035', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU028', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU003', TO_DATE('2026-09-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU007', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU006', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU018', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU028', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU009', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU038', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU018', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU003', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_lab_acesso (cd_lab_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU038', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_ctb_acesso (cd_ctb_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_ctb_acesso PRIMARY KEY (cd_ctb_acesso));
GRANT SELECT ON par_ctb_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_ctb_acesso FOR dbamv.par_ctb_acesso;

CREATE TABLE aud_age_mensagem (cd_age_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_age_mensagem PRIMARY KEY (cd_age_mensagem));
GRANT SELECT ON aud_age_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_age_mensagem FOR dbamv.aud_age_mensagem;

-- aud_age_mensagem: 47 linhas
INSERT ALL
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU027', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU001', TO_DATE('2026-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU001', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU027', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU009', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU010', TO_DATE('2026-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU035', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU006', TO_DATE('2026-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU036', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU032', TO_DATE('2026-10-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU028', TO_DATE('2026-05-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU009', TO_DATE('2026-10-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU018', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU015', TO_DATE('2026-10-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU009', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU012', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU022', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU019', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU022', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU036', TO_DATE('2026-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU032', TO_DATE('2026-06-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU004', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU029', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU019', TO_DATE('2026-07-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU008', TO_DATE('2026-07-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU021', TO_DATE('2026-10-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU004', TO_DATE('2026-06-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU030', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU027', TO_DATE('2026-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU026', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU001', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU021', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU014', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU020', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU031', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU015', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU028', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'N', 'USU020', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU039', TO_DATE('2026-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU010', TO_DATE('2026-07-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU038', TO_DATE('2026-09-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU005', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU031', TO_DATE('2026-05-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'N', 'USU025', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'S', 'USU014', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'N', 'USU007', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_age_mensagem (cd_age_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'S', 'USU021', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE hist_ctb_regra (cd_ctb_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_ctb_regra PRIMARY KEY (cd_ctb_regra));
GRANT SELECT ON hist_ctb_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_ctb_regra FOR dbamv.hist_ctb_regra;

-- hist_ctb_regra: 18 linhas
INSERT ALL
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU006', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU034', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU019', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU007', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU039', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU008', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU020', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU021', TO_DATE('2026-07-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU038', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU021', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU039', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU011', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU011', TO_DATE('2026-08-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU005', TO_DATE('2026-07-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU024', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU019', TO_DATE('2026-07-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU022', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_regra (cd_ctb_regra, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU022', TO_DATE('2026-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aux_far_job (cd_far_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_far_job PRIMARY KEY (cd_far_job));
GRANT SELECT ON aux_far_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_far_job FOR dbamv.aux_far_job;

CREATE TABLE aud_sup_perfil (cd_sup_perfil NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_sup_perfil PRIMARY KEY (cd_sup_perfil));
GRANT SELECT ON aud_sup_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_sup_perfil FOR dbamv.aud_sup_perfil;

CREATE TABLE tmp_ctb_job (cd_ctb_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_ctb_job PRIMARY KEY (cd_ctb_job));
GRANT SELECT ON tmp_ctb_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_ctb_job FOR dbamv.tmp_ctb_job;

CREATE TABLE aud_sam_tela (cd_sam_tela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_sam_tela PRIMARY KEY (cd_sam_tela));
GRANT SELECT ON aud_sam_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_sam_tela FOR dbamv.aud_sam_tela;

-- aud_sam_tela: 8 linhas
INSERT ALL
  INTO aud_sam_tela (cd_sam_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU013', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_tela (cd_sam_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU014', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_tela (cd_sam_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU027', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_tela (cd_sam_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU003', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_tela (cd_sam_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU007', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_tela (cd_sam_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU014', TO_DATE('2026-05-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_tela (cd_sam_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU007', TO_DATE('2026-10-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_sam_tela (cd_sam_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU031', TO_DATE('2026-05-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_lab_job (cd_lab_job NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_lab_job PRIMARY KEY (cd_lab_job));
GRANT SELECT ON tmp_lab_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_lab_job FOR dbamv.tmp_lab_job;

CREATE TABLE cfg_far_mensagem (cd_far_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_far_mensagem PRIMARY KEY (cd_far_mensagem));
GRANT SELECT ON cfg_far_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_far_mensagem FOR dbamv.cfg_far_mensagem;

CREATE TABLE par_cme_perfil (cd_cme_perfil NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_cme_perfil PRIMARY KEY (cd_cme_perfil));
GRANT SELECT ON par_cme_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_cme_perfil FOR dbamv.par_cme_perfil;

-- par_cme_perfil: 17 linhas
INSERT ALL
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU023', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU019', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU039', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU022', TO_DATE('2026-07-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU006', TO_DATE('2026-11-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU027', TO_DATE('2026-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU003', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU040', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU036', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU013', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU013', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU001', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU032', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU004', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU024', TO_DATE('2026-08-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU018', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_cme_perfil (cd_cme_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU013', TO_DATE('2026-10-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_far_lote (cd_far_lote NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_far_lote PRIMARY KEY (cd_far_lote));
GRANT SELECT ON par_far_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_far_lote FOR dbamv.par_far_lote;

CREATE TABLE log_fat_exportacao (cd_fat_exportacao NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_fat_exportacao PRIMARY KEY (cd_fat_exportacao));
GRANT SELECT ON log_fat_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_fat_exportacao FOR dbamv.log_fat_exportacao;

CREATE TABLE aux_int_exportacao (cd_int_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_int_exportacao PRIMARY KEY (cd_int_exportacao));
GRANT SELECT ON aux_int_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_int_exportacao FOR dbamv.aux_int_exportacao;

CREATE TABLE cfg_sam_setor (cd_sam_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_sam_setor PRIMARY KEY (cd_sam_setor));
GRANT SELECT ON cfg_sam_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_sam_setor FOR dbamv.cfg_sam_setor;

-- cfg_sam_setor: 24 linhas
INSERT ALL
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU015', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU001', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU002', TO_DATE('2026-08-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU034', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU023', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU025', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU008', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU025', TO_DATE('2026-08-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU024', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU007', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU029', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU025', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU031', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU027', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU040', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU016', TO_DATE('2026-09-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU001', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU030', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU038', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU035', TO_DATE('2026-10-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU036', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU011', TO_DATE('2026-07-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU037', TO_DATE('2026-05-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_setor (cd_sam_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU012', TO_DATE('2026-10-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_nut_erro (cd_nut_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_nut_erro PRIMARY KEY (cd_nut_erro));
GRANT SELECT ON aud_nut_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_nut_erro FOR dbamv.aud_nut_erro;

CREATE TABLE aux_fat_impressao (cd_fat_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_fat_impressao PRIMARY KEY (cd_fat_impressao));
GRANT SELECT ON aux_fat_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_fat_impressao FOR dbamv.aux_fat_impressao;

-- aux_fat_impressao: 24 linhas
INSERT ALL
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU017', TO_DATE('2026-05-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU018', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU022', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU009', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU026', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU029', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU024', TO_DATE('2026-10-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU004', TO_DATE('2026-10-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU022', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU007', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU028', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU005', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU018', TO_DATE('2026-08-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU020', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU005', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU028', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU013', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU015', TO_DATE('2026-05-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU002', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU037', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU027', TO_DATE('2026-10-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU004', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU033', TO_DATE('2026-07-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_fat_impressao (cd_fat_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU033', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE cfg_fat_erro (cd_fat_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_fat_erro PRIMARY KEY (cd_fat_erro));
GRANT SELECT ON cfg_fat_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_fat_erro FOR dbamv.cfg_fat_erro;

-- cfg_fat_erro: 43 linhas
INSERT ALL
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU026', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU033', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU023', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU016', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU018', TO_DATE('2026-05-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU034', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU028', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU019', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU040', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU011', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU027', TO_DATE('2026-05-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU040', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU028', TO_DATE('2026-08-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU015', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU007', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU012', TO_DATE('2026-08-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU025', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU016', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU023', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU012', TO_DATE('2026-10-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU005', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU036', TO_DATE('2026-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU010', TO_DATE('2026-09-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU008', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU040', TO_DATE('2026-10-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU027', TO_DATE('2026-05-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU006', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU023', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU024', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU011', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU033', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU003', TO_DATE('2026-09-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU008', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU027', TO_DATE('2026-10-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU018', TO_DATE('2026-07-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU038', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'S', 'USU009', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'N', 'USU002', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU029', TO_DATE('2026-09-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU034', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU021', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'N', 'USU008', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_fat_erro (cd_fat_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU012', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aux_far_erro (cd_far_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_far_erro PRIMARY KEY (cd_far_erro));
GRANT SELECT ON aux_far_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_far_erro FOR dbamv.aux_far_erro;

CREATE TABLE log_far_impressao (cd_far_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_far_impressao PRIMARY KEY (cd_far_impressao));
GRANT SELECT ON log_far_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_far_impressao FOR dbamv.log_far_impressao;

CREATE TABLE tmp_img_usuario (cd_img_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_img_usuario PRIMARY KEY (cd_img_usuario));
GRANT SELECT ON tmp_img_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_img_usuario FOR dbamv.tmp_img_usuario;

CREATE TABLE par_ctb_campo (cd_ctb_campo NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_ctb_campo PRIMARY KEY (cd_ctb_campo));
GRANT SELECT ON par_ctb_campo TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_ctb_campo FOR dbamv.par_ctb_campo;

-- par_ctb_campo: 27 linhas
INSERT ALL
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU001', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU022', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU012', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU004', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU033', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU017', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU024', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU013', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU030', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU019', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU007', TO_DATE('2026-08-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU022', TO_DATE('2026-05-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU025', TO_DATE('2026-05-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU013', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU015', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU018', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU039', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU029', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU003', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU012', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU014', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU029', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU013', TO_DATE('2026-10-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU006', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU008', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU023', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_campo (cd_ctb_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU034', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_cme_usuario (cd_cme_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_cme_usuario PRIMARY KEY (cd_cme_usuario));
GRANT SELECT ON aud_cme_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_cme_usuario FOR dbamv.aud_cme_usuario;

-- aud_cme_usuario: 29 linhas
INSERT ALL
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU019', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU030', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU027', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU002', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU013', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU024', TO_DATE('2026-07-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU014', TO_DATE('2026-06-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU012', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU023', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU017', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU037', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU036', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU024', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU013', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU032', TO_DATE('2026-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU006', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU029', TO_DATE('2026-08-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU008', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU032', TO_DATE('2026-05-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU012', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU004', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU014', TO_DATE('2026-05-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU032', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU039', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU029', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU010', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU019', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU002', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU029', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_far_importacao (cd_far_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_far_importacao PRIMARY KEY (cd_far_importacao));
GRANT SELECT ON aud_far_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_far_importacao FOR dbamv.aud_far_importacao;

CREATE TABLE hist_ctb_lote (cd_ctb_lote NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_ctb_lote PRIMARY KEY (cd_ctb_lote));
GRANT SELECT ON hist_ctb_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_ctb_lote FOR dbamv.hist_ctb_lote;

-- hist_ctb_lote: 14 linhas
INSERT ALL
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 10, 'VALOR 1', 'S', 'USU008', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 20, 'VALOR 2', 'S', 'USU021', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 30, 'VALOR 3', 'S', 'USU017', TO_DATE('2026-06-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 20, 'VALOR 4', 'S', 'USU036', TO_DATE('2026-10-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 30, 'VALOR 5', 'S', 'USU028', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 20, 'VALOR 6', 'S', 'USU004', TO_DATE('2026-10-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 10, 'VALOR 7', 'S', 'USU035', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 90, 'VALOR 8', 'S', 'USU040', TO_DATE('2026-07-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 10, 'VALOR 9', 'S', 'USU008', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 30, 'VALOR 10', 'N', 'USU036', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 30, 'VALOR 11', 'S', 'USU004', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 20, 'VALOR 12', 'S', 'USU015', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 20, 'VALOR 13', 'N', 'USU032', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_lote (cd_ctb_lote, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 10, 'VALOR 14', 'N', 'USU011', TO_DATE('2026-09-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_cme_erro (cd_cme_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_cme_erro PRIMARY KEY (cd_cme_erro));
GRANT SELECT ON aud_cme_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_cme_erro FOR dbamv.aud_cme_erro;

-- aud_cme_erro: 27 linhas
INSERT ALL
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU033', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU004', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU031', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU007', TO_DATE('2026-05-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU039', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU005', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU001', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU001', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU012', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU032', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU020', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU038', TO_DATE('2026-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU013', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU024', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU017', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU021', TO_DATE('2026-10-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU030', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU007', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU039', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU029', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU014', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU004', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU040', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU009', TO_DATE('2026-05-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU010', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU021', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_cme_erro (cd_cme_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU006', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_sam_perfil (cd_sam_perfil NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_sam_perfil PRIMARY KEY (cd_sam_perfil));
GRANT SELECT ON par_sam_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_sam_perfil FOR dbamv.par_sam_perfil;

-- par_sam_perfil: 43 linhas
INSERT ALL
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 30, 'VALOR 1', 'N', 'USU016', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 90, 'VALOR 2', 'S', 'USU025', TO_DATE('2026-09-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 10, 'VALOR 3', 'S', 'USU015', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 90, 'VALOR 4', 'N', 'USU040', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 10, 'VALOR 5', 'S', 'USU025', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 10, 'VALOR 6', 'N', 'USU018', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 30, 'VALOR 7', 'S', 'USU032', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 30, 'VALOR 8', 'S', 'USU014', TO_DATE('2026-07-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 10, 'VALOR 9', 'S', 'USU012', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 90, 'VALOR 10', 'N', 'USU017', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 30, 'VALOR 11', 'S', 'USU005', TO_DATE('2026-06-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 10, 'VALOR 12', 'S', 'USU013', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 10, 'VALOR 13', 'S', 'USU005', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 30, 'VALOR 14', 'S', 'USU025', TO_DATE('2026-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 90, 'VALOR 15', 'S', 'USU030', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 30, 'VALOR 16', 'S', 'USU019', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 20, 'VALOR 17', 'N', 'USU018', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 10, 'VALOR 18', 'N', 'USU005', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 10, 'VALOR 19', 'S', 'USU017', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 10, 'VALOR 20', 'S', 'USU026', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 90, 'VALOR 21', 'S', 'USU030', TO_DATE('2026-07-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 20, 'VALOR 22', 'N', 'USU037', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 20, 'VALOR 23', 'S', 'USU010', TO_DATE('2026-10-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 30, 'VALOR 24', 'N', 'USU017', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 90, 'VALOR 25', 'S', 'USU013', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 90, 'VALOR 26', 'S', 'USU035', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 10, 'VALOR 27', 'N', 'USU032', TO_DATE('2026-05-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 10, 'VALOR 28', 'S', 'USU007', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 90, 'VALOR 29', 'N', 'USU013', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 10, 'VALOR 30', 'S', 'USU020', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 90, 'VALOR 31', 'S', 'USU038', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 20, 'VALOR 32', 'S', 'USU040', TO_DATE('2026-05-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 30, 'VALOR 33', 'N', 'USU010', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 20, 'VALOR 34', 'S', 'USU031', TO_DATE('2026-11-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 10, 'VALOR 35', 'S', 'USU017', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 90, 'VALOR 36', 'N', 'USU039', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 90, 'VALOR 37', 'N', 'USU003', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 30, 'VALOR 38', 'N', 'USU034', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 30, 'VALOR 39', 'N', 'USU039', TO_DATE('2026-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 90, 'VALOR 40', 'S', 'USU031', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 20, 'VALOR 41', 'N', 'USU005', TO_DATE('2026-09-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 90, 'VALOR 42', 'N', 'USU024', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sam_perfil (cd_sam_perfil, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 10, 'VALOR 43', 'S', 'USU009', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE hist_age_erro (cd_age_erro NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_age_erro PRIMARY KEY (cd_age_erro));
GRANT SELECT ON hist_age_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_age_erro FOR dbamv.hist_age_erro;

CREATE TABLE aud_lab_fila (cd_lab_fila NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_lab_fila PRIMARY KEY (cd_lab_fila));
GRANT SELECT ON aud_lab_fila TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_lab_fila FOR dbamv.aud_lab_fila;

-- aud_lab_fila: 29 linhas
INSERT ALL
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU026', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU026', TO_DATE('2026-07-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU031', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU006', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU021', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU022', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU004', TO_DATE('2026-09-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU025', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU031', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU037', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU011', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU008', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU034', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU017', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU028', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU004', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU030', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU008', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU009', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU034', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU012', TO_DATE('2026-05-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU033', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU002', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU040', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU026', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU018', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU009', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU018', TO_DATE('2026-09-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_lab_fila (cd_lab_fila, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU008', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_int_impressao (cd_int_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_int_impressao PRIMARY KEY (cd_int_impressao));
GRANT SELECT ON tmp_int_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_int_impressao FOR dbamv.tmp_int_impressao;

CREATE TABLE aud_pss_exportacao (cd_pss_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_pss_exportacao PRIMARY KEY (cd_pss_exportacao));
GRANT SELECT ON aud_pss_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_pss_exportacao FOR dbamv.aud_pss_exportacao;

-- aud_pss_exportacao: 14 linhas
INSERT ALL
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU026', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU016', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU014', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU026', TO_DATE('2026-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU034', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU010', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU005', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU036', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU038', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU007', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU017', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU020', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU005', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_pss_exportacao (cd_pss_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU025', TO_DATE('2026-10-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_cme_erro (cd_cme_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_cme_erro PRIMARY KEY (cd_cme_erro));
GRANT SELECT ON log_cme_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_cme_erro FOR dbamv.log_cme_erro;

CREATE TABLE aud_fin_tabela (cd_fin_tabela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_fin_tabela PRIMARY KEY (cd_fin_tabela));
GRANT SELECT ON aud_fin_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_fin_tabela FOR dbamv.aud_fin_tabela;

CREATE TABLE tmp_img_importacao (cd_img_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_img_importacao PRIMARY KEY (cd_img_importacao));
GRANT SELECT ON tmp_img_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_img_importacao FOR dbamv.tmp_img_importacao;

-- tmp_img_importacao: 54 linhas
INSERT ALL
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU009', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU018', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU039', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU030', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU014', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU020', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU003', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU034', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU008', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU014', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU014', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU019', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU009', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU030', TO_DATE('2026-10-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU020', TO_DATE('2026-05-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU024', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU019', TO_DATE('2026-06-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU025', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU032', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU008', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU006', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU015', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU010', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU033', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU027', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU036', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU012', TO_DATE('2026-05-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU006', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU009', TO_DATE('2026-09-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU010', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU016', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'S', 'USU021', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU002', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU012', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU013', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU024', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'S', 'USU038', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU015', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU032', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU033', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU033', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU010', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU004', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'S', 'USU013', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'S', 'USU011', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'S', 'USU021', TO_DATE('2026-07-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'N', 'USU001', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 'VALOR 48', 'N', 'USU022', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 'VALOR 49', 'S', 'USU036', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (50, 'VALOR 50', 'S', 'USU025', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (51, 'VALOR 51', 'S', 'USU026', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (52, 'VALOR 52', 'N', 'USU032', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (53, 'VALOR 53', 'S', 'USU029', TO_DATE('2026-07-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_img_importacao (cd_img_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (54, 'VALOR 54', 'N', 'USU035', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_sam_setor (cd_sam_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_sam_setor PRIMARY KEY (cd_sam_setor));
GRANT SELECT ON log_sam_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_sam_setor FOR dbamv.log_sam_setor;

CREATE TABLE log_age_config (cd_age_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_age_config PRIMARY KEY (cd_age_config));
GRANT SELECT ON log_age_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_age_config FOR dbamv.log_age_config;

-- log_age_config: 4 linhas
INSERT ALL
  INTO log_age_config (cd_age_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU032', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_config (cd_age_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU003', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_config (cd_age_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU022', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_config (cd_age_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU022', TO_DATE('2026-07-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_img_exportacao (cd_img_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_img_exportacao PRIMARY KEY (cd_img_exportacao));
GRANT SELECT ON aud_img_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_img_exportacao FOR dbamv.aud_img_exportacao;

CREATE TABLE log_sup_lote (cd_sup_lote NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_sup_lote PRIMARY KEY (cd_sup_lote));
GRANT SELECT ON log_sup_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_sup_lote FOR dbamv.log_sup_lote;

CREATE TABLE log_int_tabela (cd_int_tabela NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_int_tabela PRIMARY KEY (cd_int_tabela));
GRANT SELECT ON log_int_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_int_tabela FOR dbamv.log_int_tabela;

CREATE TABLE par_est_rotina (cd_est_rotina NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_est_rotina PRIMARY KEY (cd_est_rotina));
GRANT SELECT ON par_est_rotina TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_est_rotina FOR dbamv.par_est_rotina;

-- par_est_rotina: 58 linhas
INSERT ALL
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU019', TO_DATE('2026-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU011', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU016', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU007', TO_DATE('2026-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU020', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU010', TO_DATE('2026-09-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU035', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU021', TO_DATE('2026-11-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU015', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU020', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU034', TO_DATE('2026-08-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU011', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU019', TO_DATE('2026-07-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU017', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU014', TO_DATE('2026-05-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU010', TO_DATE('2026-08-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU021', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU014', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU024', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU010', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU040', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU037', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU013', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU024', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU002', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU009', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU020', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU030', TO_DATE('2026-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU038', TO_DATE('2026-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU029', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU027', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU004', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU023', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU019', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU031', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU031', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU001', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU016', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU029', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU023', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU027', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU017', TO_DATE('2026-10-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'N', 'USU014', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'N', 'USU039', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'S', 'USU017', TO_DATE('2026-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'S', 'USU031', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'S', 'USU017', TO_DATE('2026-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 'VALOR 48', 'S', 'USU008', TO_DATE('2026-06-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 'VALOR 49', 'N', 'USU017', TO_DATE('2026-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (50, 'VALOR 50', 'N', 'USU016', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (51, 'VALOR 51', 'S', 'USU022', TO_DATE('2026-05-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (52, 'VALOR 52', 'N', 'USU007', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (53, 'VALOR 53', 'N', 'USU032', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (54, 'VALOR 54', 'N', 'USU033', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (55, 'VALOR 55', 'N', 'USU013', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (56, 'VALOR 56', 'N', 'USU027', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (57, 'VALOR 57', 'N', 'USU027', TO_DATE('2026-10-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_rotina (cd_est_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (58, 'VALOR 58', 'N', 'USU028', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_pss_campo (cd_pss_campo NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_pss_campo PRIMARY KEY (cd_pss_campo));
GRANT SELECT ON tmp_pss_campo TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_pss_campo FOR dbamv.tmp_pss_campo;

CREATE TABLE aux_pss_mensagem (cd_pss_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_pss_mensagem PRIMARY KEY (cd_pss_mensagem));
GRANT SELECT ON aux_pss_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_pss_mensagem FOR dbamv.aux_pss_mensagem;

-- aux_pss_mensagem: 42 linhas
INSERT ALL
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU033', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU013', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU035', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU017', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU023', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU027', TO_DATE('2026-10-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU024', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU024', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU001', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU021', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU008', TO_DATE('2026-05-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU015', TO_DATE('2026-06-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU024', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU032', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU003', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU030', TO_DATE('2026-09-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU025', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU025', TO_DATE('2026-07-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU005', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU010', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU008', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU004', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU019', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU011', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU030', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU038', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU012', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU028', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU039', TO_DATE('2026-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU023', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU019', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU038', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU016', TO_DATE('2026-05-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU036', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU017', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU024', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'S', 'USU017', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU030', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU023', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU029', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU016', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_mensagem (cd_pss_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU030', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE hist_far_lote (cd_far_lote NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_far_lote PRIMARY KEY (cd_far_lote));
GRANT SELECT ON hist_far_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_far_lote FOR dbamv.hist_far_lote;

CREATE TABLE hist_est_tela (cd_est_tela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_est_tela PRIMARY KEY (cd_est_tela));
GRANT SELECT ON hist_est_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_est_tela FOR dbamv.hist_est_tela;

-- hist_est_tela: 43 linhas
INSERT ALL
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU035', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU029', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU014', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU016', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU004', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU022', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU004', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU025', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU014', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU029', TO_DATE('2026-06-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU035', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU020', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU013', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU012', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU040', TO_DATE('2026-08-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU003', TO_DATE('2026-09-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU017', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU010', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU040', TO_DATE('2026-08-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU012', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU022', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU015', TO_DATE('2026-08-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU036', TO_DATE('2026-10-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU014', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU032', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU021', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU023', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU018', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU024', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU005', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU034', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU031', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU019', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU007', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU018', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU016', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'S', 'USU007', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU002', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'S', 'USU028', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU009', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'S', 'USU003', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU003', TO_DATE('2026-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_est_tela (cd_est_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU015', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_pss_setor (cd_pss_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_pss_setor PRIMARY KEY (cd_pss_setor));
GRANT SELECT ON tmp_pss_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_pss_setor FOR dbamv.tmp_pss_setor;

-- tmp_pss_setor: 45 linhas
INSERT ALL
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU026', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU031', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU031', TO_DATE('2026-05-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU016', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU034', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU024', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU029', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU031', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU029', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU008', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU018', TO_DATE('2026-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU024', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU040', TO_DATE('2026-06-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU032', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU027', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU032', TO_DATE('2026-09-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU015', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU030', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU005', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU002', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU014', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU036', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU029', TO_DATE('2026-10-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU021', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU006', TO_DATE('2026-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU012', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU016', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU028', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU038', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU003', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU030', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'S', 'USU022', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU038', TO_DATE('2026-09-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU019', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU029', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU012', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU014', TO_DATE('2026-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'N', 'USU008', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU016', TO_DATE('2026-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU017', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU008', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'N', 'USU028', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'N', 'USU011', TO_DATE('2026-09-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'S', 'USU028', TO_DATE('2026-09-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_setor (cd_pss_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'N', 'USU007', TO_DATE('2026-07-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_ate_exportacao (cd_ate_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_ate_exportacao PRIMARY KEY (cd_ate_exportacao));
GRANT SELECT ON tmp_ate_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_ate_exportacao FOR dbamv.tmp_ate_exportacao;

CREATE TABLE par_ctb_perfil (cd_ctb_perfil NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_ctb_perfil PRIMARY KEY (cd_ctb_perfil));
GRANT SELECT ON par_ctb_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_ctb_perfil FOR dbamv.par_ctb_perfil;

-- par_ctb_perfil: 18 linhas
INSERT ALL
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU001', TO_DATE('2026-06-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU010', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU032', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU032', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU023', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU030', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU012', TO_DATE('2026-11-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU008', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU035', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU032', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU035', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU032', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU001', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU040', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU018', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU009', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU036', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ctb_perfil (cd_ctb_perfil, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU036', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE cfg_nut_impressao (cd_nut_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_nut_impressao PRIMARY KEY (cd_nut_impressao));
GRANT SELECT ON cfg_nut_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_nut_impressao FOR dbamv.cfg_nut_impressao;

CREATE TABLE tmp_far_impressao (cd_far_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_far_impressao PRIMARY KEY (cd_far_impressao));
GRANT SELECT ON tmp_far_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_far_impressao FOR dbamv.tmp_far_impressao;

CREATE TABLE aud_nut_turno (cd_nut_turno NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_nut_turno PRIMARY KEY (cd_nut_turno));
GRANT SELECT ON aud_nut_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_nut_turno FOR dbamv.aud_nut_turno;

CREATE TABLE hist_cme_tabela (cd_cme_tabela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_cme_tabela PRIMARY KEY (cd_cme_tabela));
GRANT SELECT ON hist_cme_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_cme_tabela FOR dbamv.hist_cme_tabela;

-- hist_cme_tabela: 52 linhas
INSERT ALL
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU009', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU008', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU034', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU006', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU039', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU027', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU017', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU013', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU024', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU001', TO_DATE('2026-09-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU035', TO_DATE('2026-06-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU007', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU030', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU022', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU012', TO_DATE('2026-10-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU029', TO_DATE('2026-07-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU012', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU030', TO_DATE('2026-08-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU006', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU010', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU008', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU021', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU036', TO_DATE('2026-05-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU021', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU027', TO_DATE('2026-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU017', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU012', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU008', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU005', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU012', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU011', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'S', 'USU028', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU012', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU003', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU024', TO_DATE('2026-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU040', TO_DATE('2026-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'S', 'USU033', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'N', 'USU029', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'S', 'USU004', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU038', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU023', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU037', TO_DATE('2026-10-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU001', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'S', 'USU003', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'N', 'USU026', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'N', 'USU016', TO_DATE('2026-05-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'S', 'USU035', TO_DATE('2026-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 'VALOR 48', 'S', 'USU028', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 'VALOR 49', 'N', 'USU040', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (50, 'VALOR 50', 'S', 'USU011', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (51, 'VALOR 51', 'N', 'USU038', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_tabela (cd_cme_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (52, 'VALOR 52', 'N', 'USU040', TO_DATE('2026-05-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE hist_fin_impressao (cd_fin_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_fin_impressao PRIMARY KEY (cd_fin_impressao));
GRANT SELECT ON hist_fin_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_fin_impressao FOR dbamv.hist_fin_impressao;

CREATE TABLE hist_pss_tabela (cd_pss_tabela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_pss_tabela PRIMARY KEY (cd_pss_tabela));
GRANT SELECT ON hist_pss_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_pss_tabela FOR dbamv.hist_pss_tabela;

CREATE TABLE cfg_lab_exportacao (cd_lab_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_lab_exportacao PRIMARY KEY (cd_lab_exportacao));
GRANT SELECT ON cfg_lab_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_lab_exportacao FOR dbamv.cfg_lab_exportacao;

CREATE TABLE hist_far_integracao (cd_far_integracao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_far_integracao PRIMARY KEY (cd_far_integracao));
GRANT SELECT ON hist_far_integracao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_far_integracao FOR dbamv.hist_far_integracao;

CREATE TABLE tmp_lab_setor (cd_lab_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_lab_setor PRIMARY KEY (cd_lab_setor));
GRANT SELECT ON tmp_lab_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_lab_setor FOR dbamv.tmp_lab_setor;

-- tmp_lab_setor: 26 linhas
INSERT ALL
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU028', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU008', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU016', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU016', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU023', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU015', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU029', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU025', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU031', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU010', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU020', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU033', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU004', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU013', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU038', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU039', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU019', TO_DATE('2026-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU001', TO_DATE('2026-09-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU027', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU007', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU001', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU008', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU010', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU023', TO_DATE('2026-07-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU013', TO_DATE('2026-09-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_setor (cd_lab_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU008', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE cfg_nut_tela (cd_nut_tela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_nut_tela PRIMARY KEY (cd_nut_tela));
GRANT SELECT ON cfg_nut_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_nut_tela FOR dbamv.cfg_nut_tela;

CREATE TABLE tmp_nut_acesso (cd_nut_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_nut_acesso PRIMARY KEY (cd_nut_acesso));
GRANT SELECT ON tmp_nut_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_nut_acesso FOR dbamv.tmp_nut_acesso;

CREATE TABLE hist_est_setor (cd_est_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_est_setor PRIMARY KEY (cd_est_setor));
GRANT SELECT ON hist_est_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_est_setor FOR dbamv.hist_est_setor;

CREATE TABLE log_far_exportacao (cd_far_exportacao NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_far_exportacao PRIMARY KEY (cd_far_exportacao));
GRANT SELECT ON log_far_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_far_exportacao FOR dbamv.log_far_exportacao;

CREATE TABLE hist_sup_lote (cd_sup_lote NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_sup_lote PRIMARY KEY (cd_sup_lote));
GRANT SELECT ON hist_sup_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_sup_lote FOR dbamv.hist_sup_lote;

-- hist_sup_lote: 57 linhas
INSERT ALL
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU040', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU030', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU009', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU020', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU018', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU029', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU013', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU009', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU036', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU012', TO_DATE('2026-10-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU021', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU022', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU021', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU017', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU034', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU027', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU040', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU021', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU026', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU018', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU010', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU010', TO_DATE('2026-09-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU031', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU003', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU038', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU019', TO_DATE('2026-10-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU011', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU003', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU002', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU012', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU025', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU016', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU005', TO_DATE('2026-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU018', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU014', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU009', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU016', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU013', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'S', 'USU002', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU005', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU037', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'N', 'USU026', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU006', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'S', 'USU018', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'S', 'USU020', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'N', 'USU001', TO_DATE('2026-07-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'N', 'USU030', TO_DATE('2026-08-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 'VALOR 48', 'N', 'USU033', TO_DATE('2026-06-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 'VALOR 49', 'S', 'USU032', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (50, 'VALOR 50', 'N', 'USU037', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (51, 'VALOR 51', 'N', 'USU030', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (52, 'VALOR 52', 'S', 'USU002', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (53, 'VALOR 53', 'S', 'USU034', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (54, 'VALOR 54', 'S', 'USU030', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (55, 'VALOR 55', 'N', 'USU009', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (56, 'VALOR 56', 'S', 'USU027', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (57, 'VALOR 57', 'N', 'USU038', TO_DATE('2026-09-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_cme_exportacao (cd_cme_exportacao NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_cme_exportacao PRIMARY KEY (cd_cme_exportacao));
GRANT SELECT ON par_cme_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_cme_exportacao FOR dbamv.par_cme_exportacao;

CREATE TABLE cfg_ate_impressao (cd_ate_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_ate_impressao PRIMARY KEY (cd_ate_impressao));
GRANT SELECT ON cfg_ate_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_ate_impressao FOR dbamv.cfg_ate_impressao;

CREATE TABLE aux_lab_erro (cd_lab_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_lab_erro PRIMARY KEY (cd_lab_erro));
GRANT SELECT ON aux_lab_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_lab_erro FOR dbamv.aux_lab_erro;

CREATE TABLE aud_fin_rotina (cd_fin_rotina NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_fin_rotina PRIMARY KEY (cd_fin_rotina));
GRANT SELECT ON aud_fin_rotina TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_fin_rotina FOR dbamv.aud_fin_rotina;

CREATE TABLE hist_ctb_importacao (cd_ctb_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_ctb_importacao PRIMARY KEY (cd_ctb_importacao));
GRANT SELECT ON hist_ctb_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_ctb_importacao FOR dbamv.hist_ctb_importacao;

-- hist_ctb_importacao: 39 linhas
INSERT ALL
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU036', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU023', TO_DATE('2026-08-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU039', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU017', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU012', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU039', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU028', TO_DATE('2026-05-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU037', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU006', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU004', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU011', TO_DATE('2026-08-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU006', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU035', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU006', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU011', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU038', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU032', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU029', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU018', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU040', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU011', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU023', TO_DATE('2026-09-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU021', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU024', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU040', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU009', TO_DATE('2026-07-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU011', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU026', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU029', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU005', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU036', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'S', 'USU028', TO_DATE('2026-08-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU036', TO_DATE('2026-07-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU038', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU010', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU028', TO_DATE('2026-10-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU009', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU014', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_importacao (cd_ctb_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'S', 'USU018', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_age_acesso (cd_age_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_age_acesso PRIMARY KEY (cd_age_acesso));
GRANT SELECT ON tmp_age_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_age_acesso FOR dbamv.tmp_age_acesso;

CREATE TABLE tmp_est_job (cd_est_job NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_est_job PRIMARY KEY (cd_est_job));
GRANT SELECT ON tmp_est_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_est_job FOR dbamv.tmp_est_job;

CREATE TABLE aux_nut_fila (cd_nut_fila NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_nut_fila PRIMARY KEY (cd_nut_fila));
GRANT SELECT ON aux_nut_fila TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_nut_fila FOR dbamv.aux_nut_fila;

CREATE TABLE cfg_cme_impressao (cd_cme_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_cme_impressao PRIMARY KEY (cd_cme_impressao));
GRANT SELECT ON cfg_cme_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_cme_impressao FOR dbamv.cfg_cme_impressao;

-- cfg_cme_impressao: 12 linhas
INSERT ALL
  INTO cfg_cme_impressao (cd_cme_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU022', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_cme_impressao (cd_cme_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU040', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_cme_impressao (cd_cme_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU021', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_cme_impressao (cd_cme_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU034', TO_DATE('2026-06-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_cme_impressao (cd_cme_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU030', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_cme_impressao (cd_cme_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU027', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_cme_impressao (cd_cme_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU039', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_cme_impressao (cd_cme_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU008', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_cme_impressao (cd_cme_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU022', TO_DATE('2026-09-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_cme_impressao (cd_cme_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU018', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_cme_impressao (cd_cme_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU025', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_cme_impressao (cd_cme_impressao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU029', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_fin_integracao (cd_fin_integracao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_fin_integracao PRIMARY KEY (cd_fin_integracao));
GRANT SELECT ON log_fin_integracao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_fin_integracao FOR dbamv.log_fin_integracao;

CREATE TABLE cfg_lab_regra (cd_lab_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_lab_regra PRIMARY KEY (cd_lab_regra));
GRANT SELECT ON cfg_lab_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_lab_regra FOR dbamv.cfg_lab_regra;

CREATE TABLE hist_ctb_usuario (cd_ctb_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_ctb_usuario PRIMARY KEY (cd_ctb_usuario));
GRANT SELECT ON hist_ctb_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_ctb_usuario FOR dbamv.hist_ctb_usuario;

-- hist_ctb_usuario: 22 linhas
INSERT ALL
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU012', TO_DATE('2026-09-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU022', TO_DATE('2026-07-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU011', TO_DATE('2026-07-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU002', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU015', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU002', TO_DATE('2026-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU017', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU029', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU032', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU023', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU007', TO_DATE('2026-09-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU002', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU001', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU037', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU019', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU018', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU040', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU023', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU023', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU004', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU001', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_usuario (cd_ctb_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU028', TO_DATE('2026-08-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aux_age_config (cd_age_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_age_config PRIMARY KEY (cd_age_config));
GRANT SELECT ON aux_age_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_age_config FOR dbamv.aux_age_config;

CREATE TABLE aud_est_impressao (cd_est_impressao NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_est_impressao PRIMARY KEY (cd_est_impressao));
GRANT SELECT ON aud_est_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_est_impressao FOR dbamv.aud_est_impressao;

-- aud_est_impressao: 30 linhas
INSERT ALL
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 10, 'VALOR 1', 'N', 'USU028', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 90, 'VALOR 2', 'S', 'USU015', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 20, 'VALOR 3', 'N', 'USU007', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 30, 'VALOR 4', 'N', 'USU007', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 20, 'VALOR 5', 'S', 'USU003', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 90, 'VALOR 6', 'N', 'USU025', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 90, 'VALOR 7', 'S', 'USU007', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 30, 'VALOR 8', 'N', 'USU019', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 90, 'VALOR 9', 'N', 'USU009', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 10, 'VALOR 10', 'N', 'USU019', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 30, 'VALOR 11', 'S', 'USU023', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 10, 'VALOR 12', 'N', 'USU019', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 90, 'VALOR 13', 'S', 'USU025', TO_DATE('2026-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 20, 'VALOR 14', 'N', 'USU004', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 90, 'VALOR 15', 'S', 'USU037', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 90, 'VALOR 16', 'N', 'USU019', TO_DATE('2026-10-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 90, 'VALOR 17', 'S', 'USU014', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 90, 'VALOR 18', 'N', 'USU034', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 10, 'VALOR 19', 'N', 'USU022', TO_DATE('2026-08-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 10, 'VALOR 20', 'S', 'USU001', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 20, 'VALOR 21', 'S', 'USU030', TO_DATE('2026-09-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 90, 'VALOR 22', 'S', 'USU006', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 30, 'VALOR 23', 'S', 'USU019', TO_DATE('2026-10-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 20, 'VALOR 24', 'S', 'USU002', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 90, 'VALOR 25', 'S', 'USU021', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 30, 'VALOR 26', 'N', 'USU035', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 90, 'VALOR 27', 'N', 'USU006', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 30, 'VALOR 28', 'N', 'USU008', TO_DATE('2026-07-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 90, 'VALOR 29', 'S', 'USU017', TO_DATE('2026-06-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_est_impressao (cd_est_impressao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 90, 'VALOR 30', 'N', 'USU028', TO_DATE('2026-11-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_sup_usuario (cd_sup_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_sup_usuario PRIMARY KEY (cd_sup_usuario));
GRANT SELECT ON par_sup_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_sup_usuario FOR dbamv.par_sup_usuario;

CREATE TABLE tmp_cme_impressao (cd_cme_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_cme_impressao PRIMARY KEY (cd_cme_impressao));
GRANT SELECT ON tmp_cme_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_cme_impressao FOR dbamv.tmp_cme_impressao;

CREATE TABLE cfg_cme_exportacao (cd_cme_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_cme_exportacao PRIMARY KEY (cd_cme_exportacao));
GRANT SELECT ON cfg_cme_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_cme_exportacao FOR dbamv.cfg_cme_exportacao;

CREATE TABLE aud_pss_integracao (cd_pss_integracao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_pss_integracao PRIMARY KEY (cd_pss_integracao));
GRANT SELECT ON aud_pss_integracao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_pss_integracao FOR dbamv.aud_pss_integracao;

CREATE TABLE hist_sup_tabela (cd_sup_tabela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_sup_tabela PRIMARY KEY (cd_sup_tabela));
GRANT SELECT ON hist_sup_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_sup_tabela FOR dbamv.hist_sup_tabela;

CREATE TABLE par_cme_campo (cd_cme_campo NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_cme_campo PRIMARY KEY (cd_cme_campo));
GRANT SELECT ON par_cme_campo TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_cme_campo FOR dbamv.par_cme_campo;

CREATE TABLE hist_cme_mensagem (cd_cme_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_cme_mensagem PRIMARY KEY (cd_cme_mensagem));
GRANT SELECT ON hist_cme_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_cme_mensagem FOR dbamv.hist_cme_mensagem;

CREATE TABLE par_fin_acesso (cd_fin_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_fin_acesso PRIMARY KEY (cd_fin_acesso));
GRANT SELECT ON par_fin_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_fin_acesso FOR dbamv.par_fin_acesso;

CREATE TABLE tmp_lab_erro (cd_lab_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_lab_erro PRIMARY KEY (cd_lab_erro));
GRANT SELECT ON tmp_lab_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_lab_erro FOR dbamv.tmp_lab_erro;

-- tmp_lab_erro: 3 linhas
INSERT ALL
  INTO tmp_lab_erro (cd_lab_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU006', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_erro (cd_lab_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU034', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_lab_erro (cd_lab_erro, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU013', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_pss_job (cd_pss_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_pss_job PRIMARY KEY (cd_pss_job));
GRANT SELECT ON aud_pss_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_pss_job FOR dbamv.aud_pss_job;

CREATE TABLE tmp_est_campo (cd_est_campo NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_est_campo PRIMARY KEY (cd_est_campo));
GRANT SELECT ON tmp_est_campo TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_est_campo FOR dbamv.tmp_est_campo;

-- tmp_est_campo: 54 linhas
INSERT ALL
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU032', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU040', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU008', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU002', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU016', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU001', TO_DATE('2026-08-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU029', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU034', TO_DATE('2026-05-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU026', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU005', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU008', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU012', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU012', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU027', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU027', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU015', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU019', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU001', TO_DATE('2026-10-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU005', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU014', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU012', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU015', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU024', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU014', TO_DATE('2026-06-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU021', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU029', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU015', TO_DATE('2026-08-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU037', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU031', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU010', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU031', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU005', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU029', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU038', TO_DATE('2026-05-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU033', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU024', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'S', 'USU029', TO_DATE('2026-07-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU015', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'S', 'USU035', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU034', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU029', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU025', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'N', 'USU004', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'N', 'USU001', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'N', 'USU003', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'N', 'USU040', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'N', 'USU014', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 'VALOR 48', 'N', 'USU018', TO_DATE('2026-08-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 'VALOR 49', 'S', 'USU036', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (50, 'VALOR 50', 'S', 'USU008', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (51, 'VALOR 51', 'S', 'USU025', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (52, 'VALOR 52', 'N', 'USU007', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (53, 'VALOR 53', 'S', 'USU031', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_est_campo (cd_est_campo, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (54, 'VALOR 54', 'N', 'USU040', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_cme_config (cd_cme_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_cme_config PRIMARY KEY (cd_cme_config));
GRANT SELECT ON log_cme_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_cme_config FOR dbamv.log_cme_config;

CREATE TABLE log_sam_integracao (cd_sam_integracao NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_sam_integracao PRIMARY KEY (cd_sam_integracao));
GRANT SELECT ON log_sam_integracao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_sam_integracao FOR dbamv.log_sam_integracao;

CREATE TABLE aud_pss_turno (cd_pss_turno NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_pss_turno PRIMARY KEY (cd_pss_turno));
GRANT SELECT ON aud_pss_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_pss_turno FOR dbamv.aud_pss_turno;

CREATE TABLE cfg_fin_erro (cd_fin_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_fin_erro PRIMARY KEY (cd_fin_erro));
GRANT SELECT ON cfg_fin_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_fin_erro FOR dbamv.cfg_fin_erro;

CREATE TABLE aud_ctb_tabela (cd_ctb_tabela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_ctb_tabela PRIMARY KEY (cd_ctb_tabela));
GRANT SELECT ON aud_ctb_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_ctb_tabela FOR dbamv.aud_ctb_tabela;

CREATE TABLE aux_sup_tela (cd_sup_tela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_sup_tela PRIMARY KEY (cd_sup_tela));
GRANT SELECT ON aux_sup_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_sup_tela FOR dbamv.aux_sup_tela;

-- aux_sup_tela: 4 linhas
INSERT ALL
  INTO aux_sup_tela (cd_sup_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU033', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_tela (cd_sup_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU015', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_tela (cd_sup_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU013', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_tela (cd_sup_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU005', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_est_fila (cd_est_fila NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_est_fila PRIMARY KEY (cd_est_fila));
GRANT SELECT ON tmp_est_fila TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_est_fila FOR dbamv.tmp_est_fila;

CREATE TABLE log_fat_turno (cd_fat_turno NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_fat_turno PRIMARY KEY (cd_fat_turno));
GRANT SELECT ON log_fat_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_fat_turno FOR dbamv.log_fat_turno;

CREATE TABLE tmp_age_setor (cd_age_setor NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_age_setor PRIMARY KEY (cd_age_setor));
GRANT SELECT ON tmp_age_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_age_setor FOR dbamv.tmp_age_setor;

-- tmp_age_setor: 41 linhas
INSERT ALL
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 20, 'VALOR 1', 'S', 'USU025', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 30, 'VALOR 2', 'N', 'USU023', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 90, 'VALOR 3', 'N', 'USU001', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 20, 'VALOR 4', 'S', 'USU032', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 10, 'VALOR 5', 'S', 'USU015', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 10, 'VALOR 6', 'N', 'USU030', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 90, 'VALOR 7', 'S', 'USU013', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 10, 'VALOR 8', 'S', 'USU003', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 30, 'VALOR 9', 'S', 'USU025', TO_DATE('2026-08-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 90, 'VALOR 10', 'S', 'USU037', TO_DATE('2026-06-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 10, 'VALOR 11', 'N', 'USU007', TO_DATE('2026-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 90, 'VALOR 12', 'N', 'USU006', TO_DATE('2026-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 90, 'VALOR 13', 'N', 'USU016', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 90, 'VALOR 14', 'S', 'USU013', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 20, 'VALOR 15', 'S', 'USU038', TO_DATE('2026-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 20, 'VALOR 16', 'S', 'USU029', TO_DATE('2026-08-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 10, 'VALOR 17', 'N', 'USU018', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 30, 'VALOR 18', 'S', 'USU037', TO_DATE('2026-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 90, 'VALOR 19', 'S', 'USU035', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 90, 'VALOR 20', 'N', 'USU013', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 30, 'VALOR 21', 'N', 'USU008', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 10, 'VALOR 22', 'N', 'USU008', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 30, 'VALOR 23', 'N', 'USU002', TO_DATE('2026-07-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 10, 'VALOR 24', 'N', 'USU034', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 90, 'VALOR 25', 'S', 'USU034', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 90, 'VALOR 26', 'N', 'USU009', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 20, 'VALOR 27', 'N', 'USU003', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 10, 'VALOR 28', 'S', 'USU017', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 90, 'VALOR 29', 'N', 'USU013', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 10, 'VALOR 30', 'S', 'USU039', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 90, 'VALOR 31', 'N', 'USU007', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 10, 'VALOR 32', 'S', 'USU032', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 30, 'VALOR 33', 'S', 'USU006', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 10, 'VALOR 34', 'N', 'USU024', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 30, 'VALOR 35', 'N', 'USU021', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 90, 'VALOR 36', 'S', 'USU010', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 20, 'VALOR 37', 'S', 'USU039', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 30, 'VALOR 38', 'S', 'USU015', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 20, 'VALOR 39', 'N', 'USU014', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 10, 'VALOR 40', 'N', 'USU013', TO_DATE('2026-08-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_setor (cd_age_setor, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 30, 'VALOR 41', 'N', 'USU022', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_cme_fila (cd_cme_fila NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_cme_fila PRIMARY KEY (cd_cme_fila));
GRANT SELECT ON par_cme_fila TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_cme_fila FOR dbamv.par_cme_fila;

CREATE TABLE log_sup_rotina (cd_sup_rotina NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_sup_rotina PRIMARY KEY (cd_sup_rotina));
GRANT SELECT ON log_sup_rotina TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_sup_rotina FOR dbamv.log_sup_rotina;

-- log_sup_rotina: 2 linhas
INSERT ALL
  INTO log_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU001', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU030', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_nut_usuario (cd_nut_usuario NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_nut_usuario PRIMARY KEY (cd_nut_usuario));
GRANT SELECT ON tmp_nut_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_nut_usuario FOR dbamv.tmp_nut_usuario;

CREATE TABLE aud_est_setor (cd_est_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_est_setor PRIMARY KEY (cd_est_setor));
GRANT SELECT ON aud_est_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_est_setor FOR dbamv.aud_est_setor;

CREATE TABLE cfg_img_exportacao (cd_img_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_img_exportacao PRIMARY KEY (cd_img_exportacao));
GRANT SELECT ON cfg_img_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_img_exportacao FOR dbamv.cfg_img_exportacao;

-- cfg_img_exportacao: 45 linhas
INSERT ALL
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU013', TO_DATE('2026-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU020', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU003', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU034', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU019', TO_DATE('2026-07-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU010', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU038', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU033', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU036', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU009', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU009', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU037', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU007', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU005', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU022', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU038', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU028', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU028', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU038', TO_DATE('2026-07-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU023', TO_DATE('2026-07-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU029', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU016', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU036', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU018', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU005', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU036', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU013', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU038', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU012', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU040', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU040', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU006', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU025', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU032', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU027', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU022', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU028', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU003', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'S', 'USU016', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU007', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'S', 'USU040', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'N', 'USU032', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'N', 'USU037', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'N', 'USU009', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_exportacao (cd_img_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'S', 'USU032', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_fat_mensagem (cd_fat_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_fat_mensagem PRIMARY KEY (cd_fat_mensagem));
GRANT SELECT ON log_fat_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_fat_mensagem FOR dbamv.log_fat_mensagem;

-- log_fat_mensagem: 25 linhas
INSERT ALL
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU014', TO_DATE('2026-05-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU013', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU007', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU008', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU014', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU004', TO_DATE('2026-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU038', TO_DATE('2026-05-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU012', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU033', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU020', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU035', TO_DATE('2026-05-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU011', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU019', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU018', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU004', TO_DATE('2026-10-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU034', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU025', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU016', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU011', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU003', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU028', TO_DATE('2026-10-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU025', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU017', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU019', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU019', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE cfg_ate_turno (cd_ate_turno NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_ate_turno PRIMARY KEY (cd_ate_turno));
GRANT SELECT ON cfg_ate_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_ate_turno FOR dbamv.cfg_ate_turno;

CREATE TABLE tmp_sam_regra (cd_sam_regra NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_sam_regra PRIMARY KEY (cd_sam_regra));
GRANT SELECT ON tmp_sam_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_sam_regra FOR dbamv.tmp_sam_regra;

-- tmp_sam_regra: 33 linhas
INSERT ALL
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 10, 'VALOR 1', 'S', 'USU003', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 10, 'VALOR 2', 'S', 'USU038', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 10, 'VALOR 3', 'N', 'USU016', TO_DATE('2026-09-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 90, 'VALOR 4', 'N', 'USU002', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 10, 'VALOR 5', 'S', 'USU027', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 90, 'VALOR 6', 'N', 'USU012', TO_DATE('2026-08-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 90, 'VALOR 7', 'N', 'USU030', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 20, 'VALOR 8', 'N', 'USU024', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 90, 'VALOR 9', 'S', 'USU007', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 30, 'VALOR 10', 'N', 'USU034', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 20, 'VALOR 11', 'N', 'USU024', TO_DATE('2026-08-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 20, 'VALOR 12', 'N', 'USU029', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 30, 'VALOR 13', 'N', 'USU036', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 20, 'VALOR 14', 'S', 'USU020', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 20, 'VALOR 15', 'S', 'USU018', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 30, 'VALOR 16', 'S', 'USU011', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 30, 'VALOR 17', 'N', 'USU018', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 20, 'VALOR 18', 'S', 'USU038', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 90, 'VALOR 19', 'N', 'USU035', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 30, 'VALOR 20', 'N', 'USU029', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 90, 'VALOR 21', 'N', 'USU028', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 20, 'VALOR 22', 'S', 'USU014', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 90, 'VALOR 23', 'N', 'USU027', TO_DATE('2026-05-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 10, 'VALOR 24', 'S', 'USU011', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 10, 'VALOR 25', 'S', 'USU002', TO_DATE('2026-11-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 20, 'VALOR 26', 'N', 'USU019', TO_DATE('2026-09-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 30, 'VALOR 27', 'S', 'USU005', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 10, 'VALOR 28', 'N', 'USU022', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 90, 'VALOR 29', 'S', 'USU031', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 10, 'VALOR 30', 'S', 'USU010', TO_DATE('2026-09-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 30, 'VALOR 31', 'N', 'USU006', TO_DATE('2026-06-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 20, 'VALOR 32', 'N', 'USU009', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_sam_regra (cd_sam_regra, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 10, 'VALOR 33', 'S', 'USU030', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_nut_exportacao (cd_nut_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_nut_exportacao PRIMARY KEY (cd_nut_exportacao));
GRANT SELECT ON tmp_nut_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_nut_exportacao FOR dbamv.tmp_nut_exportacao;

CREATE TABLE hist_img_setor (cd_img_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_img_setor PRIMARY KEY (cd_img_setor));
GRANT SELECT ON hist_img_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_img_setor FOR dbamv.hist_img_setor;

-- hist_img_setor: 38 linhas
INSERT ALL
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU034', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU036', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU007', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU025', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU014', TO_DATE('2026-05-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU002', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU009', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU015', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU037', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU002', TO_DATE('2026-10-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU033', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU008', TO_DATE('2026-07-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU010', TO_DATE('2026-05-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU040', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU039', TO_DATE('2026-05-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU010', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU036', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU029', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU031', TO_DATE('2026-06-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU035', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU008', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU003', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU015', TO_DATE('2026-10-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU038', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU035', TO_DATE('2026-05-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU017', TO_DATE('2026-05-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU018', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU017', TO_DATE('2026-07-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU022', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU035', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU040', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU035', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU008', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU015', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU031', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU040', TO_DATE('2026-10-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU034', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_img_setor (cd_img_setor, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU012', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aux_pss_erro (cd_pss_erro NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_pss_erro PRIMARY KEY (cd_pss_erro));
GRANT SELECT ON aux_pss_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_pss_erro FOR dbamv.aux_pss_erro;

-- aux_pss_erro: 54 linhas
INSERT ALL
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 30, 'VALOR 1', 'N', 'USU014', TO_DATE('2026-08-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 90, 'VALOR 2', 'N', 'USU038', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 30, 'VALOR 3', 'S', 'USU033', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 90, 'VALOR 4', 'S', 'USU011', TO_DATE('2026-07-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 20, 'VALOR 5', 'S', 'USU008', TO_DATE('2026-10-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 90, 'VALOR 6', 'S', 'USU004', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 90, 'VALOR 7', 'N', 'USU020', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 90, 'VALOR 8', 'S', 'USU037', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 20, 'VALOR 9', 'N', 'USU035', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 90, 'VALOR 10', 'S', 'USU015', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 30, 'VALOR 11', 'S', 'USU008', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 20, 'VALOR 12', 'S', 'USU012', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 20, 'VALOR 13', 'N', 'USU017', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 30, 'VALOR 14', 'S', 'USU013', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 10, 'VALOR 15', 'S', 'USU040', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 90, 'VALOR 16', 'N', 'USU004', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 10, 'VALOR 17', 'S', 'USU019', TO_DATE('2026-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 30, 'VALOR 18', 'N', 'USU021', TO_DATE('2026-07-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 90, 'VALOR 19', 'N', 'USU033', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 10, 'VALOR 20', 'S', 'USU040', TO_DATE('2026-08-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 10, 'VALOR 21', 'N', 'USU030', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 30, 'VALOR 22', 'S', 'USU032', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 10, 'VALOR 23', 'N', 'USU038', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 30, 'VALOR 24', 'S', 'USU022', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 30, 'VALOR 25', 'N', 'USU036', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 10, 'VALOR 26', 'N', 'USU031', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 10, 'VALOR 27', 'N', 'USU026', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 30, 'VALOR 28', 'S', 'USU020', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 90, 'VALOR 29', 'S', 'USU005', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 20, 'VALOR 30', 'N', 'USU027', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 90, 'VALOR 31', 'N', 'USU017', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 90, 'VALOR 32', 'S', 'USU012', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 30, 'VALOR 33', 'N', 'USU035', TO_DATE('2026-05-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 30, 'VALOR 34', 'N', 'USU005', TO_DATE('2026-08-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 10, 'VALOR 35', 'N', 'USU015', TO_DATE('2026-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 10, 'VALOR 36', 'S', 'USU022', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 30, 'VALOR 37', 'S', 'USU010', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 10, 'VALOR 38', 'S', 'USU022', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 30, 'VALOR 39', 'S', 'USU018', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 20, 'VALOR 40', 'S', 'USU030', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 90, 'VALOR 41', 'N', 'USU034', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 20, 'VALOR 42', 'S', 'USU015', TO_DATE('2026-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 20, 'VALOR 43', 'N', 'USU024', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 20, 'VALOR 44', 'S', 'USU015', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 20, 'VALOR 45', 'S', 'USU013', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 30, 'VALOR 46', 'N', 'USU024', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 20, 'VALOR 47', 'N', 'USU036', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 20, 'VALOR 48', 'S', 'USU004', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 20, 'VALOR 49', 'N', 'USU028', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (50, 10, 'VALOR 50', 'N', 'USU010', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (51, 90, 'VALOR 51', 'N', 'USU034', TO_DATE('2026-05-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (52, 10, 'VALOR 52', 'S', 'USU009', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (53, 20, 'VALOR 53', 'N', 'USU006', TO_DATE('2026-08-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_pss_erro (cd_pss_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (54, 10, 'VALOR 54', 'N', 'USU008', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_far_tabela (cd_far_tabela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_far_tabela PRIMARY KEY (cd_far_tabela));
GRANT SELECT ON tmp_far_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_far_tabela FOR dbamv.tmp_far_tabela;

-- tmp_far_tabela: 8 linhas
INSERT ALL
  INTO tmp_far_tabela (cd_far_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU025', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_far_tabela (cd_far_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU034', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_far_tabela (cd_far_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU018', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_far_tabela (cd_far_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU024', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_far_tabela (cd_far_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU037', TO_DATE('2026-09-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_far_tabela (cd_far_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU021', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_far_tabela (cd_far_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU012', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_far_tabela (cd_far_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU034', TO_DATE('2026-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE cfg_sam_exportacao (cd_sam_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_sam_exportacao PRIMARY KEY (cd_sam_exportacao));
GRANT SELECT ON cfg_sam_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_sam_exportacao FOR dbamv.cfg_sam_exportacao;

-- cfg_sam_exportacao: 2 linhas
INSERT ALL
  INTO cfg_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU012', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_sam_exportacao (cd_sam_exportacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU009', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE cfg_fat_usuario (cd_fat_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_fat_usuario PRIMARY KEY (cd_fat_usuario));
GRANT SELECT ON cfg_fat_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_fat_usuario FOR dbamv.cfg_fat_usuario;

CREATE TABLE cfg_ate_job (cd_ate_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_ate_job PRIMARY KEY (cd_ate_job));
GRANT SELECT ON cfg_ate_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_ate_job FOR dbamv.cfg_ate_job;

CREATE TABLE cfg_fat_config (cd_fat_config NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_fat_config PRIMARY KEY (cd_fat_config));
GRANT SELECT ON cfg_fat_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_fat_config FOR dbamv.cfg_fat_config;

CREATE TABLE par_pss_acesso (cd_pss_acesso NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_pss_acesso PRIMARY KEY (cd_pss_acesso));
GRANT SELECT ON par_pss_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_pss_acesso FOR dbamv.par_pss_acesso;

-- par_pss_acesso: 38 linhas
INSERT ALL
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 10, 'VALOR 1', 'N', 'USU012', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 20, 'VALOR 2', 'N', 'USU029', TO_DATE('2026-10-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 10, 'VALOR 3', 'S', 'USU020', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 30, 'VALOR 4', 'N', 'USU001', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 30, 'VALOR 5', 'N', 'USU020', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 30, 'VALOR 6', 'N', 'USU010', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 90, 'VALOR 7', 'N', 'USU003', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 20, 'VALOR 8', 'S', 'USU033', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 20, 'VALOR 9', 'N', 'USU012', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 30, 'VALOR 10', 'N', 'USU025', TO_DATE('2026-06-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 30, 'VALOR 11', 'N', 'USU020', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 90, 'VALOR 12', 'S', 'USU035', TO_DATE('2026-09-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 10, 'VALOR 13', 'S', 'USU027', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 30, 'VALOR 14', 'S', 'USU011', TO_DATE('2026-10-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 20, 'VALOR 15', 'S', 'USU027', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 30, 'VALOR 16', 'N', 'USU017', TO_DATE('2026-07-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 30, 'VALOR 17', 'N', 'USU030', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 10, 'VALOR 18', 'S', 'USU038', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 20, 'VALOR 19', 'S', 'USU030', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 20, 'VALOR 20', 'N', 'USU032', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 90, 'VALOR 21', 'N', 'USU020', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 10, 'VALOR 22', 'N', 'USU033', TO_DATE('2026-05-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 90, 'VALOR 23', 'S', 'USU027', TO_DATE('2026-10-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 90, 'VALOR 24', 'N', 'USU014', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 10, 'VALOR 25', 'N', 'USU012', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 10, 'VALOR 26', 'N', 'USU025', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 30, 'VALOR 27', 'S', 'USU017', TO_DATE('2026-05-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 20, 'VALOR 28', 'S', 'USU023', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 30, 'VALOR 29', 'N', 'USU023', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 20, 'VALOR 30', 'S', 'USU029', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 20, 'VALOR 31', 'N', 'USU035', TO_DATE('2026-10-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 20, 'VALOR 32', 'S', 'USU022', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 10, 'VALOR 33', 'N', 'USU001', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 30, 'VALOR 34', 'S', 'USU025', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 30, 'VALOR 35', 'N', 'USU034', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 30, 'VALOR 36', 'S', 'USU015', TO_DATE('2026-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 20, 'VALOR 37', 'N', 'USU017', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_pss_acesso (cd_pss_acesso, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 10, 'VALOR 38', 'N', 'USU020', TO_DATE('2026-06-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_est_config (cd_est_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_est_config PRIMARY KEY (cd_est_config));
GRANT SELECT ON par_est_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_est_config FOR dbamv.par_est_config;

CREATE TABLE aux_fin_acesso (cd_fin_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_fin_acesso PRIMARY KEY (cd_fin_acesso));
GRANT SELECT ON aux_fin_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_fin_acesso FOR dbamv.aux_fin_acesso;

CREATE TABLE log_est_setor (cd_est_setor NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_est_setor PRIMARY KEY (cd_est_setor));
GRANT SELECT ON log_est_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_est_setor FOR dbamv.log_est_setor;

CREATE TABLE log_sup_integracao (cd_sup_integracao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_sup_integracao PRIMARY KEY (cd_sup_integracao));
GRANT SELECT ON log_sup_integracao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_sup_integracao FOR dbamv.log_sup_integracao;

CREATE TABLE tmp_sam_lote (cd_sam_lote NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_sam_lote PRIMARY KEY (cd_sam_lote));
GRANT SELECT ON tmp_sam_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_sam_lote FOR dbamv.tmp_sam_lote;

CREATE TABLE log_lab_regra (cd_lab_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_lab_regra PRIMARY KEY (cd_lab_regra));
GRANT SELECT ON log_lab_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_lab_regra FOR dbamv.log_lab_regra;

CREATE TABLE hist_int_config (cd_int_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_int_config PRIMARY KEY (cd_int_config));
GRANT SELECT ON hist_int_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_int_config FOR dbamv.hist_int_config;

CREATE TABLE hist_ctb_rotina (cd_ctb_rotina NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_ctb_rotina PRIMARY KEY (cd_ctb_rotina));
GRANT SELECT ON hist_ctb_rotina TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_ctb_rotina FOR dbamv.hist_ctb_rotina;

-- hist_ctb_rotina: 12 linhas
INSERT ALL
  INTO hist_ctb_rotina (cd_ctb_rotina, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 90, 'VALOR 1', 'N', 'USU039', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_rotina (cd_ctb_rotina, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 90, 'VALOR 2', 'S', 'USU005', TO_DATE('2026-05-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_rotina (cd_ctb_rotina, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 30, 'VALOR 3', 'N', 'USU031', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_rotina (cd_ctb_rotina, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 90, 'VALOR 4', 'N', 'USU007', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_rotina (cd_ctb_rotina, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 90, 'VALOR 5', 'N', 'USU003', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_rotina (cd_ctb_rotina, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 10, 'VALOR 6', 'S', 'USU031', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_rotina (cd_ctb_rotina, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 20, 'VALOR 7', 'S', 'USU019', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_rotina (cd_ctb_rotina, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 30, 'VALOR 8', 'N', 'USU019', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_rotina (cd_ctb_rotina, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 90, 'VALOR 9', 'N', 'USU025', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_rotina (cd_ctb_rotina, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 20, 'VALOR 10', 'N', 'USU028', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_rotina (cd_ctb_rotina, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 90, 'VALOR 11', 'S', 'USU008', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_ctb_rotina (cd_ctb_rotina, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 20, 'VALOR 12', 'N', 'USU010', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_pss_acesso (cd_pss_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_pss_acesso PRIMARY KEY (cd_pss_acesso));
GRANT SELECT ON log_pss_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_pss_acesso FOR dbamv.log_pss_acesso;

CREATE TABLE log_img_config (cd_img_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_img_config PRIMARY KEY (cd_img_config));
GRANT SELECT ON log_img_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_img_config FOR dbamv.log_img_config;

-- log_img_config: 42 linhas
INSERT ALL
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU029', TO_DATE('2026-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU034', TO_DATE('2026-09-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU015', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU023', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU019', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU022', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU007', TO_DATE('2026-07-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU040', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU027', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU039', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU017', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU032', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU008', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU009', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU014', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU035', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU025', TO_DATE('2026-10-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU004', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU013', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU040', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU013', TO_DATE('2026-10-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU039', TO_DATE('2026-05-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU030', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU013', TO_DATE('2026-05-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU040', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU030', TO_DATE('2026-07-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU008', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU013', TO_DATE('2026-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU031', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU005', TO_DATE('2026-08-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU040', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'S', 'USU018', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU014', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU026', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU037', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU004', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'S', 'USU004', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU022', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU013', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU010', TO_DATE('2026-08-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'S', 'USU020', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_img_config (cd_img_config, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU009', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE cfg_far_regra (cd_far_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_far_regra PRIMARY KEY (cd_far_regra));
GRANT SELECT ON cfg_far_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_far_regra FOR dbamv.cfg_far_regra;

CREATE TABLE aud_est_importacao (cd_est_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_est_importacao PRIMARY KEY (cd_est_importacao));
GRANT SELECT ON aud_est_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_est_importacao FOR dbamv.aud_est_importacao;

CREATE TABLE cfg_lab_erro (cd_lab_erro NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_lab_erro PRIMARY KEY (cd_lab_erro));
GRANT SELECT ON cfg_lab_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_lab_erro FOR dbamv.cfg_lab_erro;

CREATE TABLE aux_cme_turno (cd_cme_turno NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_cme_turno PRIMARY KEY (cd_cme_turno));
GRANT SELECT ON aux_cme_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_cme_turno FOR dbamv.aux_cme_turno;

-- aux_cme_turno: 8 linhas
INSERT ALL
  INTO aux_cme_turno (cd_cme_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 20, 'VALOR 1', 'S', 'USU040', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_cme_turno (cd_cme_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 90, 'VALOR 2', 'S', 'USU039', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_cme_turno (cd_cme_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 90, 'VALOR 3', 'N', 'USU001', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_cme_turno (cd_cme_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 10, 'VALOR 4', 'S', 'USU003', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_cme_turno (cd_cme_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 10, 'VALOR 5', 'N', 'USU024', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_cme_turno (cd_cme_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 90, 'VALOR 6', 'S', 'USU038', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_cme_turno (cd_cme_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 20, 'VALOR 7', 'S', 'USU007', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_cme_turno (cd_cme_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 30, 'VALOR 8', 'S', 'USU005', TO_DATE('2026-10-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_fin_usuario (cd_fin_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_fin_usuario PRIMARY KEY (cd_fin_usuario));
GRANT SELECT ON par_fin_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_fin_usuario FOR dbamv.par_fin_usuario;

CREATE TABLE aux_age_acesso (cd_age_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_age_acesso PRIMARY KEY (cd_age_acesso));
GRANT SELECT ON aux_age_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_age_acesso FOR dbamv.aux_age_acesso;

CREATE TABLE aux_ate_job (cd_ate_job NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_ate_job PRIMARY KEY (cd_ate_job));
GRANT SELECT ON aux_ate_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_ate_job FOR dbamv.aux_ate_job;

-- aux_ate_job: 37 linhas
INSERT ALL
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 20, 'VALOR 1', 'N', 'USU021', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 90, 'VALOR 2', 'S', 'USU019', TO_DATE('2026-09-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 30, 'VALOR 3', 'S', 'USU004', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 30, 'VALOR 4', 'N', 'USU030', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 90, 'VALOR 5', 'S', 'USU029', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 90, 'VALOR 6', 'N', 'USU007', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 10, 'VALOR 7', 'S', 'USU031', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 30, 'VALOR 8', 'S', 'USU032', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 30, 'VALOR 9', 'N', 'USU012', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 20, 'VALOR 10', 'N', 'USU017', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 10, 'VALOR 11', 'S', 'USU014', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 20, 'VALOR 12', 'S', 'USU017', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 10, 'VALOR 13', 'N', 'USU018', TO_DATE('2026-08-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 20, 'VALOR 14', 'S', 'USU037', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 30, 'VALOR 15', 'S', 'USU031', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 20, 'VALOR 16', 'N', 'USU001', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 20, 'VALOR 17', 'N', 'USU025', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 10, 'VALOR 18', 'N', 'USU014', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 20, 'VALOR 19', 'N', 'USU011', TO_DATE('2026-05-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 90, 'VALOR 20', 'N', 'USU002', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 10, 'VALOR 21', 'N', 'USU012', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 10, 'VALOR 22', 'S', 'USU025', TO_DATE('2026-09-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 20, 'VALOR 23', 'S', 'USU013', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 90, 'VALOR 24', 'N', 'USU014', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 30, 'VALOR 25', 'N', 'USU026', TO_DATE('2026-05-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 30, 'VALOR 26', 'N', 'USU021', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 30, 'VALOR 27', 'S', 'USU040', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 10, 'VALOR 28', 'N', 'USU029', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 90, 'VALOR 29', 'N', 'USU026', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 20, 'VALOR 30', 'S', 'USU005', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 30, 'VALOR 31', 'N', 'USU018', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 10, 'VALOR 32', 'N', 'USU019', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 10, 'VALOR 33', 'N', 'USU018', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 30, 'VALOR 34', 'S', 'USU012', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 30, 'VALOR 35', 'S', 'USU013', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 30, 'VALOR 36', 'S', 'USU013', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_ate_job (cd_ate_job, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 90, 'VALOR 37', 'S', 'USU008', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_sup_fila (cd_sup_fila NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_sup_fila PRIMARY KEY (cd_sup_fila));
GRANT SELECT ON log_sup_fila TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_sup_fila FOR dbamv.log_sup_fila;

CREATE TABLE log_nut_regra (cd_nut_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_nut_regra PRIMARY KEY (cd_nut_regra));
GRANT SELECT ON log_nut_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_nut_regra FOR dbamv.log_nut_regra;

CREATE TABLE par_sam_acesso (cd_sam_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_sam_acesso PRIMARY KEY (cd_sam_acesso));
GRANT SELECT ON par_sam_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_sam_acesso FOR dbamv.par_sam_acesso;

CREATE TABLE hist_age_perfil (cd_age_perfil NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_age_perfil PRIMARY KEY (cd_age_perfil));
GRANT SELECT ON hist_age_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_age_perfil FOR dbamv.hist_age_perfil;

CREATE TABLE aux_pss_exportacao (cd_pss_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_pss_exportacao PRIMARY KEY (cd_pss_exportacao));
GRANT SELECT ON aux_pss_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_pss_exportacao FOR dbamv.aux_pss_exportacao;

CREATE TABLE log_sam_rotina (cd_sam_rotina NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_sam_rotina PRIMARY KEY (cd_sam_rotina));
GRANT SELECT ON log_sam_rotina TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_sam_rotina FOR dbamv.log_sam_rotina;

CREATE TABLE tmp_cme_fila (cd_cme_fila NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_cme_fila PRIMARY KEY (cd_cme_fila));
GRANT SELECT ON tmp_cme_fila TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_cme_fila FOR dbamv.tmp_cme_fila;

CREATE TABLE par_far_turno (cd_far_turno NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_far_turno PRIMARY KEY (cd_far_turno));
GRANT SELECT ON par_far_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_far_turno FOR dbamv.par_far_turno;

CREATE TABLE tmp_age_usuario (cd_age_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_age_usuario PRIMARY KEY (cd_age_usuario));
GRANT SELECT ON tmp_age_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_age_usuario FOR dbamv.tmp_age_usuario;

-- tmp_age_usuario: 20 linhas
INSERT ALL
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU030', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU016', TO_DATE('2026-05-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU034', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU002', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU032', TO_DATE('2026-06-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU040', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU039', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU020', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU002', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU002', TO_DATE('2026-05-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU011', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU038', TO_DATE('2026-10-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU036', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU027', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU014', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU012', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU013', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU025', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU007', TO_DATE('2026-05-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_age_usuario (cd_age_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU004', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_int_tela (cd_int_tela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_int_tela PRIMARY KEY (cd_int_tela));
GRANT SELECT ON log_int_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_int_tela FOR dbamv.log_int_tela;

-- log_int_tela: 24 linhas
INSERT ALL
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU014', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU003', TO_DATE('2026-07-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU029', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU036', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU022', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU002', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU034', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU021', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU002', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU010', TO_DATE('2026-09-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU028', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU010', TO_DATE('2026-07-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU003', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU012', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU004', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU013', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU008', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU013', TO_DATE('2026-06-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU025', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU032', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU028', TO_DATE('2026-09-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU008', TO_DATE('2026-10-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU025', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_int_tela (cd_int_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU023', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_ate_mensagem (cd_ate_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_ate_mensagem PRIMARY KEY (cd_ate_mensagem));
GRANT SELECT ON aud_ate_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_ate_mensagem FOR dbamv.aud_ate_mensagem;

CREATE TABLE par_fin_mensagem (cd_fin_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_fin_mensagem PRIMARY KEY (cd_fin_mensagem));
GRANT SELECT ON par_fin_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_fin_mensagem FOR dbamv.par_fin_mensagem;

CREATE TABLE log_ctb_config (cd_ctb_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_ctb_config PRIMARY KEY (cd_ctb_config));
GRANT SELECT ON log_ctb_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_ctb_config FOR dbamv.log_ctb_config;

CREATE TABLE aud_fat_regra (cd_fat_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_fat_regra PRIMARY KEY (cd_fat_regra));
GRANT SELECT ON aud_fat_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_fat_regra FOR dbamv.aud_fat_regra;

CREATE TABLE tmp_ctb_rotina (cd_ctb_rotina NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_ctb_rotina PRIMARY KEY (cd_ctb_rotina));
GRANT SELECT ON tmp_ctb_rotina TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_ctb_rotina FOR dbamv.tmp_ctb_rotina;

CREATE TABLE cfg_nut_importacao (cd_nut_importacao NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_nut_importacao PRIMARY KEY (cd_nut_importacao));
GRANT SELECT ON cfg_nut_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_nut_importacao FOR dbamv.cfg_nut_importacao;

-- cfg_nut_importacao: 20 linhas
INSERT ALL
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 30, 'VALOR 1', 'S', 'USU014', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 10, 'VALOR 2', 'S', 'USU024', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 90, 'VALOR 3', 'S', 'USU011', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 90, 'VALOR 4', 'S', 'USU023', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 90, 'VALOR 5', 'S', 'USU031', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 30, 'VALOR 6', 'N', 'USU021', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 30, 'VALOR 7', 'S', 'USU004', TO_DATE('2026-06-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 90, 'VALOR 8', 'S', 'USU014', TO_DATE('2026-09-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 20, 'VALOR 9', 'S', 'USU034', TO_DATE('2026-07-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 10, 'VALOR 10', 'N', 'USU026', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 90, 'VALOR 11', 'S', 'USU014', TO_DATE('2026-10-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 90, 'VALOR 12', 'S', 'USU007', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 90, 'VALOR 13', 'S', 'USU003', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 10, 'VALOR 14', 'S', 'USU035', TO_DATE('2026-06-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 30, 'VALOR 15', 'N', 'USU040', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 90, 'VALOR 16', 'N', 'USU031', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 90, 'VALOR 17', 'S', 'USU021', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 30, 'VALOR 18', 'S', 'USU006', TO_DATE('2026-07-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 10, 'VALOR 19', 'S', 'USU005', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_nut_importacao (cd_nut_importacao, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 20, 'VALOR 20', 'N', 'USU012', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE cfg_fat_setor (cd_fat_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_fat_setor PRIMARY KEY (cd_fat_setor));
GRANT SELECT ON cfg_fat_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_fat_setor FOR dbamv.cfg_fat_setor;

CREATE TABLE hist_far_config (cd_far_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_far_config PRIMARY KEY (cd_far_config));
GRANT SELECT ON hist_far_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_far_config FOR dbamv.hist_far_config;

CREATE TABLE log_nut_setor (cd_nut_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_nut_setor PRIMARY KEY (cd_nut_setor));
GRANT SELECT ON log_nut_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_nut_setor FOR dbamv.log_nut_setor;

CREATE TABLE tmp_fin_job (cd_fin_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_fin_job PRIMARY KEY (cd_fin_job));
GRANT SELECT ON tmp_fin_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_fin_job FOR dbamv.tmp_fin_job;

CREATE TABLE aux_sam_job (cd_sam_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_sam_job PRIMARY KEY (cd_sam_job));
GRANT SELECT ON aux_sam_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_sam_job FOR dbamv.aux_sam_job;

-- aux_sam_job: 44 linhas
INSERT ALL
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU015', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU015', TO_DATE('2026-09-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU021', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU035', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU023', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU023', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU038', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU020', TO_DATE('2026-06-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU022', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU019', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU004', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU019', TO_DATE('2026-05-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU007', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU034', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU008', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU033', TO_DATE('2026-07-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU021', TO_DATE('2026-08-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU010', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU034', TO_DATE('2026-06-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU015', TO_DATE('2026-10-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU012', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU035', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU024', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU005', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU013', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU003', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU015', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU008', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU019', TO_DATE('2026-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU014', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU020', TO_DATE('2026-05-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU036', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU003', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU021', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU005', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU026', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU005', TO_DATE('2026-09-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU038', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'S', 'USU005', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU032', TO_DATE('2026-06-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'S', 'USU021', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU015', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU023', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sam_job (cd_sam_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'S', 'USU013', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_est_turno (cd_est_turno NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_est_turno PRIMARY KEY (cd_est_turno));
GRANT SELECT ON aud_est_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_est_turno FOR dbamv.aud_est_turno;

CREATE TABLE par_age_usuario (cd_age_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_age_usuario PRIMARY KEY (cd_age_usuario));
GRANT SELECT ON par_age_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_age_usuario FOR dbamv.par_age_usuario;

CREATE TABLE cfg_fin_perfil (cd_fin_perfil NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_fin_perfil PRIMARY KEY (cd_fin_perfil));
GRANT SELECT ON cfg_fin_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_fin_perfil FOR dbamv.cfg_fin_perfil;

CREATE TABLE aud_fin_turno (cd_fin_turno NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_fin_turno PRIMARY KEY (cd_fin_turno));
GRANT SELECT ON aud_fin_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_fin_turno FOR dbamv.aud_fin_turno;

CREATE TABLE hist_nut_exportacao (cd_nut_exportacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_nut_exportacao PRIMARY KEY (cd_nut_exportacao));
GRANT SELECT ON hist_nut_exportacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_nut_exportacao FOR dbamv.hist_nut_exportacao;

CREATE TABLE aux_sup_mensagem (cd_sup_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_sup_mensagem PRIMARY KEY (cd_sup_mensagem));
GRANT SELECT ON aux_sup_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_sup_mensagem FOR dbamv.aux_sup_mensagem;

-- aux_sup_mensagem: 30 linhas
INSERT ALL
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU015', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU010', TO_DATE('2026-10-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU003', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU001', TO_DATE('2026-08-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU007', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU002', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU022', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU012', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU026', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU032', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU037', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU016', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU007', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU027', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU016', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU032', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU001', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU002', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU010', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU014', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU014', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU026', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU028', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU022', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU019', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU017', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU027', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU020', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU013', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_sup_mensagem (cd_sup_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU010', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE hist_sam_turno (cd_sam_turno NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_sam_turno PRIMARY KEY (cd_sam_turno));
GRANT SELECT ON hist_sam_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_sam_turno FOR dbamv.hist_sam_turno;

CREATE TABLE cfg_age_impressao (cd_age_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_age_impressao PRIMARY KEY (cd_age_impressao));
GRANT SELECT ON cfg_age_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_age_impressao FOR dbamv.cfg_age_impressao;

CREATE TABLE log_est_mensagem (cd_est_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_est_mensagem PRIMARY KEY (cd_est_mensagem));
GRANT SELECT ON log_est_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_est_mensagem FOR dbamv.log_est_mensagem;

-- log_est_mensagem: 20 linhas
INSERT ALL
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU038', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU021', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU040', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU030', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU035', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU025', TO_DATE('2026-11-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU035', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU015', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU023', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU012', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU010', TO_DATE('2026-06-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU016', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU002', TO_DATE('2026-05-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU024', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU003', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU037', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU037', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU034', TO_DATE('2026-05-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU019', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_est_mensagem (cd_est_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU007', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE log_age_tabela (cd_age_tabela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_age_tabela PRIMARY KEY (cd_age_tabela));
GRANT SELECT ON log_age_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_age_tabela FOR dbamv.log_age_tabela;

-- log_age_tabela: 44 linhas
INSERT ALL
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU020', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU015', TO_DATE('2026-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU016', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU035', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU003', TO_DATE('2026-10-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU016', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU024', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU029', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU026', TO_DATE('2026-06-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU026', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU028', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU013', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU020', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU005', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU029', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU026', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU006', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU003', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU008', TO_DATE('2026-05-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU032', TO_DATE('2026-09-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU039', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU023', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU025', TO_DATE('2026-07-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU039', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU034', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU015', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU014', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU011', TO_DATE('2026-06-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU036', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU014', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU004', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'S', 'USU006', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU018', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU020', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU001', TO_DATE('2026-07-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU005', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'S', 'USU036', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'N', 'USU003', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'S', 'USU012', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU033', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'S', 'USU040', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'N', 'USU006', TO_DATE('2026-08-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'N', 'USU005', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO log_age_tabela (cd_age_tabela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'S', 'USU036', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE cfg_nut_tabela (cd_nut_tabela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_nut_tabela PRIMARY KEY (cd_nut_tabela));
GRANT SELECT ON cfg_nut_tabela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_nut_tabela FOR dbamv.cfg_nut_tabela;

CREATE TABLE hist_lab_lote (cd_lab_lote NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_lab_lote PRIMARY KEY (cd_lab_lote));
GRANT SELECT ON hist_lab_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_lab_lote FOR dbamv.hist_lab_lote;

CREATE TABLE par_sup_regra (cd_sup_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_sup_regra PRIMARY KEY (cd_sup_regra));
GRANT SELECT ON par_sup_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_sup_regra FOR dbamv.par_sup_regra;

CREATE TABLE cfg_pss_importacao (cd_pss_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_pss_importacao PRIMARY KEY (cd_pss_importacao));
GRANT SELECT ON cfg_pss_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_pss_importacao FOR dbamv.cfg_pss_importacao;

CREATE TABLE tmp_pss_acesso (cd_pss_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_pss_acesso PRIMARY KEY (cd_pss_acesso));
GRANT SELECT ON tmp_pss_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_pss_acesso FOR dbamv.tmp_pss_acesso;

-- tmp_pss_acesso: 57 linhas
INSERT ALL
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU022', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU011', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU008', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU035', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU032', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU025', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU024', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU039', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU028', TO_DATE('2026-06-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU028', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU004', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU025', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU030', TO_DATE('2026-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU025', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU008', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU012', TO_DATE('2026-08-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU022', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU002', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU024', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU004', TO_DATE('2026-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU012', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU009', TO_DATE('2026-06-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU029', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU013', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU011', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU032', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU016', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU026', TO_DATE('2026-06-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU003', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU022', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU033', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'S', 'USU016', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU029', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU010', TO_DATE('2026-09-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU034', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU026', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU022', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU025', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'S', 'USU023', TO_DATE('2026-07-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU022', TO_DATE('2026-11-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'S', 'USU012', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'N', 'USU014', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU011', TO_DATE('2026-10-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'N', 'USU026', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'S', 'USU021', TO_DATE('2026-10-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'S', 'USU014', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'S', 'USU002', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 'VALOR 48', 'N', 'USU029', TO_DATE('2026-07-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 'VALOR 49', 'N', 'USU004', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (50, 'VALOR 50', 'N', 'USU011', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (51, 'VALOR 51', 'N', 'USU006', TO_DATE('2026-06-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (52, 'VALOR 52', 'S', 'USU013', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (53, 'VALOR 53', 'S', 'USU023', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (54, 'VALOR 54', 'N', 'USU010', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (55, 'VALOR 55', 'S', 'USU013', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (56, 'VALOR 56', 'S', 'USU033', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_pss_acesso (cd_pss_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (57, 'VALOR 57', 'S', 'USU025', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aud_int_job (cd_int_job NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aud_int_job PRIMARY KEY (cd_int_job));
GRANT SELECT ON aud_int_job TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aud_int_job FOR dbamv.aud_int_job;

-- aud_int_job: 43 linhas
INSERT ALL
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU022', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU002', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU030', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU023', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU028', TO_DATE('2026-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU019', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU031', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU012', TO_DATE('2026-05-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU010', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU005', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU037', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU003', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU011', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU002', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU025', TO_DATE('2026-06-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU002', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU038', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU040', TO_DATE('2026-10-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU011', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU031', TO_DATE('2026-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU016', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU034', TO_DATE('2026-08-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU008', TO_DATE('2026-10-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU015', TO_DATE('2026-06-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU002', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU019', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU038', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU005', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU028', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU018', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU017', TO_DATE('2026-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU026', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'N', 'USU040', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU015', TO_DATE('2026-06-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU018', TO_DATE('2026-10-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU021', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU023', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'N', 'USU004', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'S', 'USU036', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU037', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU030', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU004', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aud_int_job (cd_int_job, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'S', 'USU019', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aux_fat_importacao (cd_fat_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_fat_importacao PRIMARY KEY (cd_fat_importacao));
GRANT SELECT ON aux_fat_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_fat_importacao FOR dbamv.aux_fat_importacao;

CREATE TABLE par_est_turno (cd_est_turno NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_est_turno PRIMARY KEY (cd_est_turno));
GRANT SELECT ON par_est_turno TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_est_turno FOR dbamv.par_est_turno;

-- par_est_turno: 52 linhas
INSERT ALL
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 30, 'VALOR 1', 'S', 'USU039', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 30, 'VALOR 2', 'N', 'USU032', TO_DATE('2026-07-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 10, 'VALOR 3', 'N', 'USU006', TO_DATE('2026-06-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 20, 'VALOR 4', 'S', 'USU038', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 10, 'VALOR 5', 'S', 'USU020', TO_DATE('2026-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 30, 'VALOR 6', 'N', 'USU004', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 30, 'VALOR 7', 'N', 'USU038', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 20, 'VALOR 8', 'N', 'USU018', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 20, 'VALOR 9', 'N', 'USU008', TO_DATE('2026-06-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 90, 'VALOR 10', 'N', 'USU038', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 90, 'VALOR 11', 'N', 'USU035', TO_DATE('2026-05-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 20, 'VALOR 12', 'S', 'USU010', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 30, 'VALOR 13', 'S', 'USU026', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 30, 'VALOR 14', 'N', 'USU018', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 30, 'VALOR 15', 'N', 'USU006', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 30, 'VALOR 16', 'S', 'USU003', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 20, 'VALOR 17', 'S', 'USU014', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 10, 'VALOR 18', 'N', 'USU014', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 10, 'VALOR 19', 'S', 'USU002', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 10, 'VALOR 20', 'N', 'USU021', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 30, 'VALOR 21', 'S', 'USU015', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 20, 'VALOR 22', 'S', 'USU022', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 90, 'VALOR 23', 'S', 'USU002', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 20, 'VALOR 24', 'N', 'USU033', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 30, 'VALOR 25', 'S', 'USU024', TO_DATE('2026-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 20, 'VALOR 26', 'S', 'USU031', TO_DATE('2026-09-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 20, 'VALOR 27', 'S', 'USU038', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 30, 'VALOR 28', 'S', 'USU018', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 10, 'VALOR 29', 'S', 'USU020', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 30, 'VALOR 30', 'N', 'USU040', TO_DATE('2026-09-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 30, 'VALOR 31', 'N', 'USU004', TO_DATE('2026-06-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 20, 'VALOR 32', 'N', 'USU017', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 20, 'VALOR 33', 'S', 'USU026', TO_DATE('2026-05-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 10, 'VALOR 34', 'S', 'USU003', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 10, 'VALOR 35', 'S', 'USU036', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 30, 'VALOR 36', 'N', 'USU033', TO_DATE('2026-08-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 30, 'VALOR 37', 'S', 'USU017', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 20, 'VALOR 38', 'N', 'USU002', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 20, 'VALOR 39', 'N', 'USU022', TO_DATE('2026-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 10, 'VALOR 40', 'S', 'USU027', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 10, 'VALOR 41', 'N', 'USU021', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 90, 'VALOR 42', 'N', 'USU020', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 20, 'VALOR 43', 'S', 'USU019', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 10, 'VALOR 44', 'S', 'USU015', TO_DATE('2026-07-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 10, 'VALOR 45', 'S', 'USU039', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 10, 'VALOR 46', 'S', 'USU007', TO_DATE('2026-10-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 10, 'VALOR 47', 'S', 'USU005', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 30, 'VALOR 48', 'S', 'USU015', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 10, 'VALOR 49', 'S', 'USU033', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (50, 90, 'VALOR 50', 'S', 'USU028', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (51, 20, 'VALOR 51', 'S', 'USU004', TO_DATE('2026-09-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_est_turno (cd_est_turno, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (52, 10, 'VALOR 52', 'N', 'USU019', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aux_ctb_config (cd_ctb_config NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_ctb_config PRIMARY KEY (cd_ctb_config));
GRANT SELECT ON aux_ctb_config TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_ctb_config FOR dbamv.aux_ctb_config;

CREATE TABLE log_age_importacao (cd_age_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_age_importacao PRIMARY KEY (cd_age_importacao));
GRANT SELECT ON log_age_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_age_importacao FOR dbamv.log_age_importacao;

CREATE TABLE tmp_int_usuario (cd_int_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_int_usuario PRIMARY KEY (cd_int_usuario));
GRANT SELECT ON tmp_int_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_int_usuario FOR dbamv.tmp_int_usuario;

CREATE TABLE hist_img_tela (cd_img_tela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_img_tela PRIMARY KEY (cd_img_tela));
GRANT SELECT ON hist_img_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_img_tela FOR dbamv.hist_img_tela;

CREATE TABLE par_lab_campo (cd_lab_campo NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_lab_campo PRIMARY KEY (cd_lab_campo));
GRANT SELECT ON par_lab_campo TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_lab_campo FOR dbamv.par_lab_campo;

CREATE TABLE hist_pss_setor (cd_pss_setor NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_pss_setor PRIMARY KEY (cd_pss_setor));
GRANT SELECT ON hist_pss_setor TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_pss_setor FOR dbamv.hist_pss_setor;

CREATE TABLE hist_cme_usuario (cd_cme_usuario NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_cme_usuario PRIMARY KEY (cd_cme_usuario));
GRANT SELECT ON hist_cme_usuario TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_cme_usuario FOR dbamv.hist_cme_usuario;

-- hist_cme_usuario: 29 linhas
INSERT ALL
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU028', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU021', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU030', TO_DATE('2026-07-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU032', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU033', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU016', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU029', TO_DATE('2026-06-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU007', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU035', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU005', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU010', TO_DATE('2026-07-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU027', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU019', TO_DATE('2026-10-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU004', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU005', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU027', TO_DATE('2026-08-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU032', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU021', TO_DATE('2026-05-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU019', TO_DATE('2026-07-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU010', TO_DATE('2026-07-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU023', TO_DATE('2026-07-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU014', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU010', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU024', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU004', TO_DATE('2026-06-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU037', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU035', TO_DATE('2026-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU021', TO_DATE('2026-10-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_cme_usuario (cd_cme_usuario, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU014', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_nut_mensagem (cd_nut_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_nut_mensagem PRIMARY KEY (cd_nut_mensagem));
GRANT SELECT ON tmp_nut_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_nut_mensagem FOR dbamv.tmp_nut_mensagem;

CREATE TABLE log_pss_importacao (cd_pss_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_log_pss_importacao PRIMARY KEY (cd_pss_importacao));
GRANT SELECT ON log_pss_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.log_pss_importacao FOR dbamv.log_pss_importacao;

CREATE TABLE tmp_cme_importacao (cd_cme_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_cme_importacao PRIMARY KEY (cd_cme_importacao));
GRANT SELECT ON tmp_cme_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_cme_importacao FOR dbamv.tmp_cme_importacao;

CREATE TABLE hist_fat_integracao (cd_fat_integracao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_fat_integracao PRIMARY KEY (cd_fat_integracao));
GRANT SELECT ON hist_fat_integracao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_fat_integracao FOR dbamv.hist_fat_integracao;

CREATE TABLE hist_sup_rotina (cd_sup_rotina NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_sup_rotina PRIMARY KEY (cd_sup_rotina));
GRANT SELECT ON hist_sup_rotina TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_sup_rotina FOR dbamv.hist_sup_rotina;

-- hist_sup_rotina: 30 linhas
INSERT ALL
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU002', TO_DATE('2026-10-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU038', TO_DATE('2026-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU021', TO_DATE('2026-08-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU007', TO_DATE('2026-10-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU009', TO_DATE('2026-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU028', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU016', TO_DATE('2026-06-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU037', TO_DATE('2026-09-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU030', TO_DATE('2026-09-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU019', TO_DATE('2026-05-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU008', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU009', TO_DATE('2026-07-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU028', TO_DATE('2026-06-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU011', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU022', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU016', TO_DATE('2026-05-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU011', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU034', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU022', TO_DATE('2026-06-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU035', TO_DATE('2026-07-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU031', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU009', TO_DATE('2026-06-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU019', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU027', TO_DATE('2026-10-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU001', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU019', TO_DATE('2026-07-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU014', TO_DATE('2026-06-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU017', TO_DATE('2026-05-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU037', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_sup_rotina (cd_sup_rotina, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU039', TO_DATE('2026-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE par_ate_importacao (cd_ate_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_ate_importacao PRIMARY KEY (cd_ate_importacao));
GRANT SELECT ON par_ate_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_ate_importacao FOR dbamv.par_ate_importacao;

-- par_ate_importacao: 58 linhas
INSERT ALL
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU027', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU014', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU034', TO_DATE('2026-05-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU022', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU038', TO_DATE('2026-10-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU009', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU016', TO_DATE('2026-07-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU026', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU007', TO_DATE('2026-05-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU025', TO_DATE('2026-10-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU037', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU030', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'S', 'USU030', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU036', TO_DATE('2026-06-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU031', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU035', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU023', TO_DATE('2026-10-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU034', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU030', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU037', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU008', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU012', TO_DATE('2026-05-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU035', TO_DATE('2026-09-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'N', 'USU001', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU021', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU006', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU011', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU018', TO_DATE('2026-05-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU010', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU029', TO_DATE('2026-10-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU009', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'S', 'USU025', TO_DATE('2026-05-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU015', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU030', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU034', TO_DATE('2026-05-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU010', TO_DATE('2026-10-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU009', TO_DATE('2026-10-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU032', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU019', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU026', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU037', TO_DATE('2026-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'N', 'USU022', TO_DATE('2026-08-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'N', 'USU025', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'N', 'USU003', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'S', 'USU020', TO_DATE('2026-09-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'S', 'USU003', TO_DATE('2026-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'S', 'USU038', TO_DATE('2026-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 'VALOR 48', 'N', 'USU027', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 'VALOR 49', 'S', 'USU029', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (50, 'VALOR 50', 'S', 'USU031', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (51, 'VALOR 51', 'S', 'USU036', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (52, 'VALOR 52', 'S', 'USU031', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (53, 'VALOR 53', 'N', 'USU036', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (54, 'VALOR 54', 'S', 'USU001', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (55, 'VALOR 55', 'S', 'USU040', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (56, 'VALOR 56', 'N', 'USU018', TO_DATE('2026-08-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (57, 'VALOR 57', 'N', 'USU008', TO_DATE('2026-08-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_ate_importacao (cd_ate_importacao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (58, 'VALOR 58', 'S', 'USU003', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_ctb_erro (cd_ctb_erro NUMBER(10), cd_convenio NUMBER(4), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_ctb_erro PRIMARY KEY (cd_ctb_erro));
GRANT SELECT ON tmp_ctb_erro TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_ctb_erro FOR dbamv.tmp_ctb_erro;

-- tmp_ctb_erro: 23 linhas
INSERT ALL
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 30, 'VALOR 1', 'N', 'USU028', TO_DATE('2026-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 20, 'VALOR 2', 'S', 'USU017', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 30, 'VALOR 3', 'S', 'USU037', TO_DATE('2026-09-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 10, 'VALOR 4', 'S', 'USU010', TO_DATE('2026-07-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 10, 'VALOR 5', 'S', 'USU009', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 10, 'VALOR 6', 'S', 'USU017', TO_DATE('2026-05-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 10, 'VALOR 7', 'S', 'USU036', TO_DATE('2026-06-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 20, 'VALOR 8', 'S', 'USU033', TO_DATE('2026-10-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 10, 'VALOR 9', 'S', 'USU018', TO_DATE('2026-08-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 20, 'VALOR 10', 'N', 'USU011', TO_DATE('2026-06-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 90, 'VALOR 11', 'N', 'USU032', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 20, 'VALOR 12', 'S', 'USU020', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 90, 'VALOR 13', 'N', 'USU001', TO_DATE('2026-05-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 20, 'VALOR 14', 'S', 'USU023', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 10, 'VALOR 15', 'S', 'USU017', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 10, 'VALOR 16', 'N', 'USU022', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 10, 'VALOR 17', 'N', 'USU005', TO_DATE('2026-07-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 90, 'VALOR 18', 'S', 'USU038', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 90, 'VALOR 19', 'S', 'USU023', TO_DATE('2026-05-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 10, 'VALOR 20', 'S', 'USU039', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 30, 'VALOR 21', 'S', 'USU031', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 10, 'VALOR 22', 'N', 'USU001', TO_DATE('2026-10-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO tmp_ctb_erro (cd_ctb_erro, cd_convenio, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 90, 'VALOR 23', 'S', 'USU037', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_ate_lote (cd_ate_lote NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_ate_lote PRIMARY KEY (cd_ate_lote));
GRANT SELECT ON tmp_ate_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_ate_lote FOR dbamv.tmp_ate_lote;

CREATE TABLE aux_fat_regra (cd_fat_regra NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_fat_regra PRIMARY KEY (cd_fat_regra));
GRANT SELECT ON aux_fat_regra TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_fat_regra FOR dbamv.aux_fat_regra;

CREATE TABLE aux_ate_impressao (cd_ate_impressao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_ate_impressao PRIMARY KEY (cd_ate_impressao));
GRANT SELECT ON aux_ate_impressao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_ate_impressao FOR dbamv.aux_ate_impressao;

CREATE TABLE aux_far_integracao (cd_far_integracao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_far_integracao PRIMARY KEY (cd_far_integracao));
GRANT SELECT ON aux_far_integracao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_far_integracao FOR dbamv.aux_far_integracao;

-- aux_far_integracao: 36 linhas
INSERT ALL
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU017', TO_DATE('2026-07-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU020', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU021', TO_DATE('2026-07-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU014', TO_DATE('2026-10-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU032', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU012', TO_DATE('2026-10-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU006', TO_DATE('2026-07-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU027', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU006', TO_DATE('2026-09-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU023', TO_DATE('2026-08-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU037', TO_DATE('2026-05-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU011', TO_DATE('2026-07-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU016', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU034', TO_DATE('2026-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU032', TO_DATE('2026-08-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU019', TO_DATE('2026-05-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU035', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU035', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU029', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'N', 'USU006', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU014', TO_DATE('2026-06-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU011', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU031', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU026', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'S', 'USU008', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'S', 'USU040', TO_DATE('2026-10-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'N', 'USU021', TO_DATE('2026-05-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU035', TO_DATE('2026-10-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'S', 'USU005', TO_DATE('2026-09-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU004', TO_DATE('2026-08-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU026', TO_DATE('2026-06-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU002', TO_DATE('2026-07-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU006', TO_DATE('2026-10-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU005', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU017', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_far_integracao (cd_far_integracao, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU017', TO_DATE('2026-05-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aux_nut_acesso (cd_nut_acesso NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_nut_acesso PRIMARY KEY (cd_nut_acesso));
GRANT SELECT ON aux_nut_acesso TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_nut_acesso FOR dbamv.aux_nut_acesso;

-- aux_nut_acesso: 19 linhas
INSERT ALL
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU018', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU027', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU019', TO_DATE('2026-05-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU009', TO_DATE('2026-09-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'N', 'USU021', TO_DATE('2026-07-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'S', 'USU026', TO_DATE('2026-07-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU033', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU019', TO_DATE('2026-05-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'S', 'USU026', TO_DATE('2026-09-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU028', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU022', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU033', TO_DATE('2026-05-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU023', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU018', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU028', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU010', TO_DATE('2026-05-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'S', 'USU027', TO_DATE('2026-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU025', TO_DATE('2026-08-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO aux_nut_acesso (cd_nut_acesso, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU013', TO_DATE('2026-06-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aux_fin_perfil (cd_fin_perfil NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_fin_perfil PRIMARY KEY (cd_fin_perfil));
GRANT SELECT ON aux_fin_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_fin_perfil FOR dbamv.aux_fin_perfil;

CREATE TABLE par_fat_mensagem (cd_fat_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_fat_mensagem PRIMARY KEY (cd_fat_mensagem));
GRANT SELECT ON par_fat_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_fat_mensagem FOR dbamv.par_fat_mensagem;

-- par_fat_mensagem: 4 linhas
INSERT ALL
  INTO par_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'N', 'USU002', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU013', TO_DATE('2026-05-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU031', TO_DATE('2026-06-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_fat_mensagem (cd_fat_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU015', TO_DATE('2026-05-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE aux_est_perfil (cd_est_perfil NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_aux_est_perfil PRIMARY KEY (cd_est_perfil));
GRANT SELECT ON aux_est_perfil TO qimed_leitura;
CREATE SYNONYM qimed_leitura.aux_est_perfil FOR dbamv.aux_est_perfil;

CREATE TABLE par_sup_lote (cd_sup_lote NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_sup_lote PRIMARY KEY (cd_sup_lote));
GRANT SELECT ON par_sup_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_sup_lote FOR dbamv.par_sup_lote;

-- par_sup_lote: 58 linhas
INSERT ALL
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU023', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU013', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU022', TO_DATE('2026-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU009', TO_DATE('2026-09-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU009', TO_DATE('2026-07-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU021', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'S', 'USU002', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU014', TO_DATE('2026-08-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU016', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU036', TO_DATE('2026-10-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU035', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU002', TO_DATE('2026-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU035', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU039', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'N', 'USU031', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU031', TO_DATE('2026-11-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU037', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'S', 'USU016', TO_DATE('2026-11-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'N', 'USU032', TO_DATE('2026-09-13 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU013', TO_DATE('2026-08-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'S', 'USU018', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'S', 'USU007', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'S', 'USU003', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU024', TO_DATE('2026-08-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU013', TO_DATE('2026-07-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU021', TO_DATE('2026-06-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU003', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'N', 'USU001', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU009', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'S', 'USU029', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'N', 'USU028', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU021', TO_DATE('2026-11-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU034', TO_DATE('2026-05-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'N', 'USU040', TO_DATE('2026-09-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'N', 'USU004', TO_DATE('2026-10-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'S', 'USU028', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'N', 'USU027', TO_DATE('2026-05-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'N', 'USU018', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU035', TO_DATE('2026-05-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'N', 'USU002', TO_DATE('2026-09-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'S', 'USU006', TO_DATE('2026-09-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU039', TO_DATE('2026-10-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'N', 'USU011', TO_DATE('2026-08-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'S', 'USU030', TO_DATE('2026-08-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'N', 'USU034', TO_DATE('2026-10-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (46, 'VALOR 46', 'N', 'USU005', TO_DATE('2026-08-15 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (47, 'VALOR 47', 'S', 'USU020', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (48, 'VALOR 48', 'S', 'USU019', TO_DATE('2026-07-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (49, 'VALOR 49', 'N', 'USU022', TO_DATE('2026-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (50, 'VALOR 50', 'S', 'USU026', TO_DATE('2026-11-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (51, 'VALOR 51', 'N', 'USU007', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (52, 'VALOR 52', 'S', 'USU005', TO_DATE('2026-10-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (53, 'VALOR 53', 'S', 'USU026', TO_DATE('2026-09-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (54, 'VALOR 54', 'N', 'USU029', TO_DATE('2026-07-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (55, 'VALOR 55', 'N', 'USU027', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (56, 'VALOR 56', 'N', 'USU003', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (57, 'VALOR 57', 'S', 'USU033', TO_DATE('2026-10-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO par_sup_lote (cd_sup_lote, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (58, 'VALOR 58', 'N', 'USU027', TO_DATE('2026-08-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_sup_importacao (cd_sup_importacao NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_sup_importacao PRIMARY KEY (cd_sup_importacao));
GRANT SELECT ON tmp_sup_importacao TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_sup_importacao FOR dbamv.tmp_sup_importacao;

CREATE TABLE cfg_img_mensagem (cd_img_mensagem NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_cfg_img_mensagem PRIMARY KEY (cd_img_mensagem));
GRANT SELECT ON cfg_img_mensagem TO qimed_leitura;
CREATE SYNONYM qimed_leitura.cfg_img_mensagem FOR dbamv.cfg_img_mensagem;

-- cfg_img_mensagem: 45 linhas
INSERT ALL
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU007', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'S', 'USU019', TO_DATE('2026-08-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'N', 'USU027', TO_DATE('2026-06-14 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'S', 'USU026', TO_DATE('2026-07-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU005', TO_DATE('2026-10-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU026', TO_DATE('2026-07-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU015', TO_DATE('2026-10-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'N', 'USU003', TO_DATE('2026-10-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU022', TO_DATE('2026-10-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'N', 'USU024', TO_DATE('2026-08-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'N', 'USU025', TO_DATE('2026-09-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'S', 'USU024', TO_DATE('2026-05-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU006', TO_DATE('2026-10-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'S', 'USU018', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU034', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'N', 'USU009', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU009', TO_DATE('2026-09-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (18, 'VALOR 18', 'N', 'USU008', TO_DATE('2026-09-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (19, 'VALOR 19', 'S', 'USU027', TO_DATE('2026-06-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (20, 'VALOR 20', 'S', 'USU018', TO_DATE('2026-09-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (21, 'VALOR 21', 'N', 'USU034', TO_DATE('2026-10-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (22, 'VALOR 22', 'N', 'USU035', TO_DATE('2026-08-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (23, 'VALOR 23', 'N', 'USU033', TO_DATE('2026-07-06 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (24, 'VALOR 24', 'S', 'USU033', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (25, 'VALOR 25', 'N', 'USU033', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (26, 'VALOR 26', 'N', 'USU031', TO_DATE('2026-05-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (27, 'VALOR 27', 'S', 'USU002', TO_DATE('2026-07-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (28, 'VALOR 28', 'S', 'USU006', TO_DATE('2026-10-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (29, 'VALOR 29', 'N', 'USU024', TO_DATE('2026-07-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (30, 'VALOR 30', 'N', 'USU036', TO_DATE('2026-06-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (31, 'VALOR 31', 'S', 'USU026', TO_DATE('2026-11-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (32, 'VALOR 32', 'N', 'USU032', TO_DATE('2026-09-21 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (33, 'VALOR 33', 'S', 'USU028', TO_DATE('2026-07-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (34, 'VALOR 34', 'S', 'USU009', TO_DATE('2026-08-29 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (35, 'VALOR 35', 'S', 'USU009', TO_DATE('2026-09-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (36, 'VALOR 36', 'N', 'USU039', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (37, 'VALOR 37', 'S', 'USU029', TO_DATE('2026-08-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (38, 'VALOR 38', 'S', 'USU018', TO_DATE('2026-05-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (39, 'VALOR 39', 'N', 'USU034', TO_DATE('2026-06-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (40, 'VALOR 40', 'S', 'USU031', TO_DATE('2026-07-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (41, 'VALOR 41', 'N', 'USU003', TO_DATE('2026-06-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (42, 'VALOR 42', 'S', 'USU022', TO_DATE('2026-07-24 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (43, 'VALOR 43', 'N', 'USU022', TO_DATE('2026-11-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (44, 'VALOR 44', 'N', 'USU027', TO_DATE('2026-05-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO cfg_img_mensagem (cd_img_mensagem, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (45, 'VALOR 45', 'S', 'USU003', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;

CREATE TABLE tmp_pss_rotina (cd_pss_rotina NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_tmp_pss_rotina PRIMARY KEY (cd_pss_rotina));
GRANT SELECT ON tmp_pss_rotina TO qimed_leitura;
CREATE SYNONYM qimed_leitura.tmp_pss_rotina FOR dbamv.tmp_pss_rotina;

CREATE TABLE hist_int_fila (cd_int_fila NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_int_fila PRIMARY KEY (cd_int_fila));
GRANT SELECT ON hist_int_fila TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_int_fila FOR dbamv.hist_int_fila;

CREATE TABLE par_sam_lote (cd_sam_lote NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_par_sam_lote PRIMARY KEY (cd_sam_lote));
GRANT SELECT ON par_sam_lote TO qimed_leitura;
CREATE SYNONYM qimed_leitura.par_sam_lote FOR dbamv.par_sam_lote;

CREATE TABLE hist_fat_tela (cd_fat_tela NUMBER(10), ds_valor VARCHAR2(200), sn_ativo CHAR(1), nm_usuario VARCHAR2(30), dt_atualizacao DATE, CONSTRAINT pk_hist_fat_tela PRIMARY KEY (cd_fat_tela));
GRANT SELECT ON hist_fat_tela TO qimed_leitura;
CREATE SYNONYM qimed_leitura.hist_fat_tela FOR dbamv.hist_fat_tela;

-- hist_fat_tela: 17 linhas
INSERT ALL
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (1, 'VALOR 1', 'S', 'USU003', TO_DATE('2026-06-25 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (2, 'VALOR 2', 'N', 'USU036', TO_DATE('2026-09-27 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (3, 'VALOR 3', 'S', 'USU034', TO_DATE('2026-05-07 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (4, 'VALOR 4', 'N', 'USU001', TO_DATE('2026-06-30 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (5, 'VALOR 5', 'S', 'USU003', TO_DATE('2026-07-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (6, 'VALOR 6', 'N', 'USU010', TO_DATE('2026-09-18 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (7, 'VALOR 7', 'N', 'USU037', TO_DATE('2026-09-12 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (8, 'VALOR 8', 'S', 'USU012', TO_DATE('2026-09-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (9, 'VALOR 9', 'N', 'USU025', TO_DATE('2026-10-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (10, 'VALOR 10', 'S', 'USU021', TO_DATE('2026-06-10 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (11, 'VALOR 11', 'S', 'USU032', TO_DATE('2026-08-31 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (12, 'VALOR 12', 'N', 'USU027', TO_DATE('2026-08-05 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (13, 'VALOR 13', 'N', 'USU021', TO_DATE('2026-06-16 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (14, 'VALOR 14', 'N', 'USU001', TO_DATE('2026-11-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (15, 'VALOR 15', 'S', 'USU010', TO_DATE('2026-08-11 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (16, 'VALOR 16', 'S', 'USU002', TO_DATE('2026-07-26 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
  INTO hist_fat_tela (cd_fat_tela, ds_valor, sn_ativo, nm_usuario, dt_atualizacao) VALUES (17, 'VALOR 17', 'N', 'USU009', TO_DATE('2026-07-04 00:00:00', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM dual;
COMMIT;
