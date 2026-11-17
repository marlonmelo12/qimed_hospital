# Mock Hospital São Lucas (faturamento no estilo MV, em Oracle)

Segundo hospital da rede (fictício), com um HIS **no estilo** do MV Soul em Oracle 11g XE, a versão que muita
instalação MV ainda roda. Cobre o
faturamento de convênio de ponta a ponta: atendimento, conta, itens, remessa, retorno e glosa. Nenhuma linha de
`config/` cita este banco, que entra pela Central de Conexões.

**Não é o modelo de dados real do MV**, que não é público. O mock segue o estilo e o fluxo de negócio que um HIS
desse porte tem:

- tabelas do usuário `DBAMV`; o `QIMED_LEITURA` não tem tabela própria e lê **só por sinônimos**. O paciente
  chega por uma view do DBA (`VW_PACIENTE`, sem o nome da mãe), sem PK declarada;
- FKs declaradas só em parte, como em produção: `ATENDIME.CD_PACIENTE`, `REG_AMB.CD_ATENDIMENTO` e
  `GLOSAS.CD_MOTIVO_GLOSA` não têm constraint (a Central infere pelo nome e pelo valor);
- 300 tabelas de ruído (`sql/03_ruido.sql`), com sinônimo: módulos de estoque, agenda, log, uma tabela de preço por
  convênio com chave composta e um log de acesso ao paciente;
- conta de internação (`REG_FAT`/`ITREG_FAT`) separada da conta ambulatorial e de urgência (`REG_AMB`/`ITREG_AMB`);
- item da conta com **chave composta** (conta + lançamento);
- remessa por convênio e competência (`REMESSA_FATURA`), com a data em que o demonstrativo voltou (`DT_RETORNO`);
- `GLOSAS` só com os itens glosados. O item pago por inteiro não aparece: o pago é o cobrado das remessas com
  retorno menos o glosado;
- `SN_` para sim/não e `DT_ULTIMA_ATUALIZACAO` como marca de alteração.

Os dados vêm com a sujeira de um banco de anos: nomes sem acento, 15% dos CPFs com máscara (`529.982.247-25`), 3%
com dígito verificador errado, 2% de nascimentos em 01/01/1900, 6 pacientes duplicados, 8 contas reabertas
(`SN_FECHADA = 'N'`) em remessas já retornadas e 4 estornos de glosa recursada (linha com valor negativo).

**Tudo é fictício**: nomes, CPFs (com dígito verificador válido), convênios, registros ANS e códigos de
procedimento (faixa `8xxxxxxx`). A exceção são os **códigos TISS de glosa** (tabela 38) em `MOT_GLOSA.CD_GLOSA_TISS`,
que vêm do manual de prestador da Fundação Copel (2026):
1402 procedimento necessita de autorização, 1702 cobrança de procedimento em duplicidade, 1705 valor apresentado a
maior, 1006 atendimento após o desligamento do beneficiário, 1307 número de guia inválido e 1213 CBO inválido.
As descrições dos motivos são do hospital.

## Subir

```sh
docker compose -f mv_faturamento/docker-compose.yml up -d --wait   # 127.0.0.1:1523, ~1,5 GB de RAM
docker compose -f mv_faturamento/docker-compose.yml down -v        # a próxima subida recarrega o seed
```

O `--wait` volta antes de o seed acabar: espere `DATABASE IS READY` em `docker logs qimed-mv-db` (o
`teste_central.sh` já espera). O 11g só fala com o cliente Oracle 19c ou anterior, em modo thick: a imagem do
pipeline traz o Instant Client 19 (`ORACLE_CLIENT_LIB`).

Com o ProntoSul também no ar, são dois Oracle. Numa máquina com 8 GB para o Docker, pare um deles.

**Volume.** `escala.sql` copia o faturamento 3850 vezes (~5 milhões de itens) e atualiza as estatísticas. Roda à
mão, fora da subida; veja o cabeçalho do arquivo.

## Cadastro na Central de Conexões

| campo | valor |
|---|---|
| Tipo | Oracle |
| Host | `mv-db` (rede `qimed-network`) |
| Porta | 1521 (a 1523 é só a do host) |
| Banco | `XE` (o service name) |
| Usuário e senha | `qimed_leitura` / `leitura_mock` |

## Conteúdo (semente 20261117)

`python mocks/mv_faturamento/gerar_mv.py --resumo` imprime as contagens e o esperado. Hoje:
246 pacientes (6 duplicados; 145 casam com o TASY pelo CPF), 434 atendimentos, 84 contas de internação com 384
itens, 350 contas ambulatoriais com 914 itens, 24 remessas e 59 linhas de glosa (com os 4 estornos). As contas de
internação e de ambulatório têm sequências independentes, então os números se repetem entre as duas, como num HIS
real. Glosa sobre o cobrado das remessas com retorno: Saúde Litoral 3,27%, Vida Plena 2,38%, Unimais 0,51% e
Particular 0%.

Para regerar, rode o gerador com `--saida mv_faturamento/sql` (grava `02_dados.sql` e `03_ruido.sql`) e suba de
novo com `down -v`.

## Estado na Central

A Central reconhece o faturamento (`src/ingestion/faturamento.py`):

- `REG_FAT` e `REG_AMB` viram `hosp_account`, com o id prefixado pela tabela (`reg_fat:100003`);
- `ITREG_FAT` e `ITREG_AMB` viram `hosp_charge_item`, pela chave composta;
- `GLOSAS` vira `hosp_claim_response_item`, com uma linha por item de remessa com retorno. Duas regras ficam visíveis
  em `inferencias` no detalhe: o item sem glosa conta como pago por inteiro, e o item com glosas de motivos diferentes
  fica com o motivo de maior valor.

`bash scripts/teste_central.sh mv gnuhealth` confere a glosa por convênio e por motivo TISS contra o esperado, as 434
contas distintas no DW e o retorno de uma remessa que chega depois da carga. O GNU Health entra como caso negativo,
sem nenhum papel financeiro.
