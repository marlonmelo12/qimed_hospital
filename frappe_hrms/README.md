# Mock Hospital São Rafael (Frappe HRMS, escala e ponto)

Banco de um **Frappe HRMS real** (imagem oficial `ghcr.io/frappe/hrms:v16.54.1`, que traz Frappe 15.127, ERPNext
15.125 e HRMS 15.64.9), populado pelo ORM do próprio produto. Ele troca o mock ERP de RH caseiro (`erp_rh/`) por um
sistema de mercado. Nenhuma linha de `config/` do pipeline cita este banco; ele entra pela Central de Conexões.

O que este banco testa:

- **nome de tabela com espaço**: o Frappe nomeia cada tabela pelo DocType (`tabShift Assignment`,
  `tabEmployee Checkin`). Todas as 844 tabelas entram no catálogo e são lidas com as aspas do MariaDB;
- **nenhuma FK declarada**: o vínculo do Frappe fica no código, não no banco;
- **escala pelo perfil do produto** (`src/ingestion/perfis_rh.py` no pipeline): o plantão está espalhado entre a
  presença do dia (`tabAttendance`), o horário do turno (`tabShift Type`) e a escala (`tabShift Assignment`). As
  colunas não casam com o reconhecimento genérico de escala (`employee`, `department`, `in_time`), então a Central
  aplica o perfil escrito uma vez e mostra as 5 regras dele em `inferencias`.

## A escala

É a mesma do `erp_rh/gerar_erp_rh.py` (mesma semente): 5 setores, 4 equipes 12x36 por setor, 120 funcionários e um ano
de plantões com sinal de ausência. Assim os dois mocks têm o mesmo esperado, e só muda o produto que guarda os dados.

| No roteiro | No Frappe |
|---|---|
| setor | `Department` (`UTI Adulto - HSR`) |
| colaborador | `Employee` (`employee_number` = matrícula) |
| plantão | `Shift Assignment` de um dia, turno `Diurno 12h` (07-19) ou `Noturno 12h` (19-07) |
| Trabalhado | `Employee Checkin` de entrada e saída e `Attendance` Present com `in_time` e `out_time` |
| Falta | `Attendance` Absent |
| Atestado | `Leave Application` aprovada do tipo `Atestado Medico`; o HRMS cria a `Attendance` On Leave, sem turno |
| Escalado (futuro) | só o `Shift Assignment` |

A presença é gravada direto (`Attendance` submetida), e não pelo auto attendance do turno: o resultado do auto
attendance depende de janelas e limites de horas que mudariam o esperado sem nada no roteiro mudar.

## Conteúdo (semente 20261114, a do `erp_rh`)

120 funcionários em 5 setores, 22.740 plantões de 11/11/2025 a 10/11/2026 mais 14 dias de escala futura: 21.900
realizados e 840 futuros. **Esperado: 1.551 ausências em 21.900 plantões (7,08%)**, o mesmo do `erp_rh`. O número sai
do roteiro, não de uma consulta ao banco, e fica em `esperado.json`. São 844 tabelas; o dump tem 4,4 MB.

A fábrica leva cerca de 1 h (~58 min para os plantões, ~7 por segundo, cada um pelas validações do HRMS).

## Subir

```sh
docker compose -f frappe_hrms/docker-compose.yml up -d --wait   # MariaDB 10.6 em 127.0.0.1:3311
docker compose -f frappe_hrms/docker-compose.yml down -v        # a próxima subida recarrega o dump
```

## Cadastro na Central de Conexões

| campo | valor |
|---|---|
| Tipo | MySQL |
| Host | `frappe-db` (rede `qimed-network`) |
| Porta | 3306 (a 3311 é só a do host) |
| Banco | `frappe_hrms` |
| Usuário e senha | `qimed_leitura` / `leitura_mock` (só `SELECT`) |

`bash scripts/teste_central.sh frappe`, no pipeline, confere o perfil, a carga e a taxa de ausência contra o
`esperado.json`.

## Regenerar

```sh
bash frappe_hrms/fabrica/fabricar.sh            # o ano inteiro
bash frappe_hrms/fabrica/fabricar.sh --dias 3   # ensaio rápido
```

A fábrica sobe a aplicação (MariaDB, dois Redis e o container do HRMS, ~2 GB de RAM), cria o site com ERPNext e HRMS
(`setup_complete`, o mesmo atalho dos testes do HRMS), roda `fabrica/popular.py` e grava `sql/02_frappe.sql.gz` e
`esperado.json`.

**Fuso da instalação.** O Frappe instala com o fuso padrão `Asia/Kolkata` e só passa a `America/Sao_Paulo` no
`setup_complete`. As linhas criadas na instalação (países, moedas, campos) ficam com `modified` umas 8 h e meia à
frente do dia da fábrica. No mesmo dia, o conector da Central limita o watermark ao agora e relê essas tabelas a cada
rodada, como deve. Num Frappe instalado há meses isso não aparece.

**Inventado**: o hospital, os nomes, a escala e o tipo de licença `Atestado Medico`. **Do produto**: o esquema
inteiro, os DocTypes, as validações e a presença On Leave criada pela licença.
