-- Volume de producao no MV: copia o faturamento N vezes dentro do banco (ids deslocados de 1.000.000 por copia)
-- e atualiza as estatisticas do catalogo. Com N = 3850 sao ~5 milhoes de itens de conta (itreg_fat + itreg_amb).
-- Nao roda na subida (fica fora de sql/): e para medir a descoberta e a carga, de proposito.
--
--   docker exec -i qimed-mv-db sqlplus -s dbamv/dbamv_dono@//localhost:1521/XE < mv_faturamento/escala.sql
--
-- Leva dezenas de minutos no 11g XE (1 CPU, 1 GB) e ocupa ~2 GB do limite de 11 GB do XE. Para voltar ao seed
-- original: down -v e up. As copias repetem o CPF do paciente original: o vinculo deixa de bater com o esperado.
SET SERVEROUTPUT ON
DECLARE
    vezes CONSTANT PLS_INTEGER := 3850;
    d NUMBER;
BEGIN
    FOR k IN 1 .. vezes LOOP
        d := k * 1000000;
        INSERT INTO paciente SELECT cd_paciente + d, nm_paciente, nr_cpf, dt_nascimento, tp_sexo, nm_mae,
            dt_cadastro, dt_ultima_atualizacao FROM paciente WHERE cd_paciente < 1000000;
        INSERT INTO atendime SELECT cd_atendimento + d, cd_paciente + d, cd_convenio, tp_atendimento, dt_atendimento,
            dt_alta, nr_guia, dt_ultima_atualizacao FROM atendime WHERE cd_atendimento < 1000000;
        INSERT INTO reg_fat SELECT cd_reg_fat + d, cd_atendimento + d, cd_convenio, cd_remessa, dt_inicio, dt_final,
            vl_total_conta, sn_fechada, dt_ultima_atualizacao FROM reg_fat WHERE cd_reg_fat < 1000000;
        INSERT INTO itreg_fat SELECT cd_reg_fat + d, cd_lancamento, cd_pro_fat, dt_lancamento, qt_lancamento,
            vl_unitario, vl_total_conta, dt_ultima_atualizacao FROM itreg_fat WHERE cd_reg_fat < 1000000;
        INSERT INTO reg_amb SELECT cd_reg_amb + d, cd_atendimento + d, cd_convenio, cd_remessa, dt_lancamento,
            vl_total_conta, sn_fechada, dt_ultima_atualizacao FROM reg_amb WHERE cd_reg_amb < 1000000;
        INSERT INTO itreg_amb SELECT cd_reg_amb + d, cd_lancamento, cd_pro_fat, dt_lancamento, qt_lancamento,
            vl_unitario, vl_total_conta, dt_ultima_atualizacao FROM itreg_amb WHERE cd_reg_amb < 1000000;
        INSERT INTO glosas SELECT cd_glosas + d, cd_remessa, cd_reg_fat + d, cd_lancamento_fat, cd_reg_amb + d,
            cd_lancamento_amb, cd_motivo_glosa, vl_glosa, dt_glosa, sn_recursado, vl_recursado, dt_ultima_atualizacao
            FROM glosas WHERE cd_glosas < 1000000;
        IF MOD(k, 100) = 0 THEN
            COMMIT;
            DBMS_OUTPUT.PUT_LINE(TO_CHAR(SYSDATE, 'HH24:MI:SS') || ' copia ' || k || ' de ' || vezes);
        END IF;
    END LOOP;
    COMMIT;
    DBMS_STATS.GATHER_SCHEMA_STATS('DBAMV');
END;
/
SELECT (SELECT COUNT(*) FROM itreg_fat) + (SELECT COUNT(*) FROM itreg_amb) AS itens FROM dual;
