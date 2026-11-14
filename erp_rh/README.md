# Mock ERP de RH e ponto (ERP que o QIMED nunca viu)

Banco MariaDB de um ERP de RH fictício do mesmo hospital do mock TASY (`hospital_id` 9990001). Ele existe para a
demo da Central de Conexões com ERP: **nenhuma linha de `config/` cita este banco**. Quando alguém o cadastra no
front, o pipeline descobre a escala, pede aprovação de PII e carrega. A Gold então gera os datasets do modelo de
absenteísmo (`ml_absenteismo_setor_turno_v1`, `_semana_v1` e `ml_absenteismo_turno_v1`) sem mudar o modelo.
**Tudo é fictício**: nomes e CPFs (só com dígito verificador válido).

O que este banco testa:

- a tabela de escala/ponto é reconhecida pelos nomes (entrada e saída previstas, setor, matrícula) e pela situação
  (`Trabalhado`, `Falta`, `Atestado`, `Escalado`), e vira `hosp_shift`;
- `colaborador` tem CPF e nascimento, mas é funcionário: não pode virar paciente;
- a escala futura (`Escalado`) fica fora da amostra da descoberta e mesmo assim passa no contrato.

## Subir

```sh
docker compose -f mocks/erp_rh/docker-compose.yml up -d     # MariaDB 11.4 em 127.0.0.1:3308, banco erp_rh
docker compose -f mocks/erp_rh/docker-compose.yml down -v   # apaga o volume; a próxima subida recarrega o seed
```

Usuário `erp`, senha `erp_mock` (troque por `ERP_RH_DB_PASSWORD`).

## Cadastro na Central de Conexões (demo)

| campo | valor |
|---|---|
| Tipo | MySQL |
| Host | `erp-rh-db` (nome na rede `qimed-network`) |
| Porta | 3306 (a 3308 é só a do host Windows) |
| Banco | `erp_rh` |
| Usuário e senha | `erp` / `erp_mock` |

Depois da aprovação, `GET /api/v1/pipeline/onboarding/<id>` traz `inteligencia` com os datasets gerados, os turnos,
os setores e a taxa de ausência observada.

## Conteúdo (semente 20261114)

| Tabela | Linhas | Observação |
|---|---|---|
| `setor` | 5 | PS, Clínica Médica, Clínica Cirúrgica, UTI Adulto, Pediatria |
| `colaborador` | 120 | 4 equipes 12x36 por setor: 1 médico, 2 enfermeiros, 3 técnicos |
| `escala_ponto` | 22740 | 21900 plantões de 11/11/2025 a 10/11/2026 e 840 futuros (`Escalado`) |

Esperado: **1551 ausências em 21900 turnos (7,08%)**. A ausência sobe na segunda e na sexta, à noite, na UTI, em
semana com mais de 48 h e conforme a propensão de cada pessoa, para o modelo ter o que aprender. O valor sai de
`gerar_erp_rh.esperado()`, e `tests/test_onboarding.py` confere.

Para regenerar, no container do pipeline: `python mocks/erp_rh/gerar_erp_rh.py`, e depois `down -v` e `up`.
