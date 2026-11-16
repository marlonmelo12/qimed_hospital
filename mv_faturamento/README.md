# Mock Hospital São Lucas (faturamento no estilo MV, em Oracle)

Segundo hospital da rede (fictício), com um HIS **no estilo** do MV Soul em Oracle 23ai Free. Cobre o
faturamento de convênio de ponta a ponta: atendimento, conta, itens, remessa, retorno e glosa. Nenhuma linha de
`config/` cita este banco, que entra pela Central de Conexões.

**Não é o modelo de dados real do MV**, que não é público. O mock segue o estilo e o fluxo de negócio que um HIS
desse porte tem:

- tabelas do usuário `DBAMV`, acesso do QIMED pelo `QIMED_LEITURA` (só `SELECT`, logon trigger no schema);
- conta de internação (`REG_FAT`/`ITREG_FAT`) separada da conta ambulatorial e de urgência (`REG_AMB`/`ITREG_AMB`);
- item da conta com **chave composta** (conta + lançamento);
- remessa por convênio e competência (`REMESSA_FATURA`), com a data em que o demonstrativo voltou (`DT_RETORNO`);
- `GLOSAS` só com os itens glosados. O item pago por inteiro não aparece: o pago é o cobrado das remessas com
  retorno menos o glosado;
- `SN_` para sim/não e `DT_ULTIMA_ATUALIZACAO` como marca de alteração.

**Tudo é fictício**: nomes, CPFs (com dígito verificador válido), convênios, registros ANS e códigos de
procedimento (faixa `8xxxxxxx`). A exceção são os **códigos TISS de glosa** (tabela 38) em `MOT_GLOSA.CD_GLOSA_TISS`,
que vêm do manual de prestador da Fundação Copel (2026):
1402 procedimento necessita de autorização, 1702 cobrança de procedimento em duplicidade, 1705 valor apresentado a
maior, 1006 atendimento após o desligamento do beneficiário, 1307 número de guia inválido e 1213 CBO inválido.
As descrições dos motivos são do hospital.

## Subir

```sh
docker compose -f mocks/mv_faturamento/docker-compose.yml up -d --wait   # 127.0.0.1:1523, ~2,2 GB de RAM
docker compose -f mocks/mv_faturamento/docker-compose.yml down -v        # a próxima subida recarrega o seed
```

Com o ProntoSul também no ar, são dois Oracle (~4,5 GB). Numa máquina com 8 GB para o Docker, pare um deles.

## Cadastro na Central de Conexões

| campo | valor |
|---|---|
| Tipo | Oracle |
| Host | `mv-db` (rede `qimed-network`) |
| Porta | 1521 (a 1523 é só a do host) |
| Banco | `FREEPDB1` (o service name) |
| Usuário e senha | `qimed_leitura` / `leitura_mock` |

## Conteúdo (semente 20261117)

`python mocks/mv_faturamento/gerar_mv.py --resumo` imprime as contagens e o esperado. Hoje:
240 pacientes (148 casam com o TASY pelo CPF), 434 atendimentos, 84 contas de internação com 384 itens, 350 contas
ambulatoriais com 914 itens, 24 remessas e 54 itens glosados. Glosa sobre o cobrado das remessas com retorno:
Saúde Litoral 3,44%, Vida Plena 2,40%, Unimais 1,13% e Particular 0%.

Para regerar, rode o gerador pela imagem do pipeline, que grava `sql/02_dados.sql`, e suba de novo com `down -v`.

## Estado na Central

Hoje a Central reconhece só a tabela de paciente. Os itens (chave composta) ficam de fora, e conta, remessa e glosa
entram como fora do canônico. O reconhecimento do faturamento está em construção, e este mock é o teste dele
(`bash mocks/teste_central.sh mv`).
