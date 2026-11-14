# Mock ProntoSul (pronto-atendimento em Oracle)

Banco Oracle 23ai Free de um pronto-atendimento fictício do mesmo hospital do mock TASY (`hospital_id` 9990001).
Ele existe para a demo da Central de Conexões com o caso mais parecido com um HIS real. **Nenhuma linha de `config/`
cita este banco**, e **tudo é fictício**.

O banco foi montado como um DBA de hospital entregaria:

- as tabelas pertencem ao usuário `PRONTOSUL`;
- o QIMED recebe `QIMED_LEITURA`, que só tem `SELECT`;
- um logon trigger abre a sessão do QIMED no schema `PRONTOSUL`.

Além disso, ele tem nomes no estilo Oracle, o tipo `DATE`, CPF sem máscara e sexo em uma letra. A tabela
`prescricao_item` tem chave composta, que o onboarding cataloga e pula.

## Subir

```sh
docker compose -f mocks/prontosul/docker-compose.yml up -d     # 127.0.0.1:1522, ~1,5 GB de RAM
docker compose -f mocks/prontosul/docker-compose.yml down -v   # apaga o volume; a próxima subida recarrega o seed
```

## Cadastro na Central de Conexões (demo)

| campo | valor |
|---|---|
| Tipo | Oracle |
| Host | `prontosul-db` (nome na rede `qimed-network`) |
| Porta | 1521 (a 1522 é só a do host Windows) |
| Banco | `FREEPDB1` (o service name) |
| Usuário e senha | `qimed_leitura` / `leitura_mock` |

Vínculo esperado: 189 de 260 pacientes casam com o TASY pelo CPF. O número vem de
`python mocks/prontosul/gerar_prontosul.py --resumo`.

## Regerar o seed

Rode o gerador pela imagem do pipeline, porque não há Python no host. Ele grava `sql/02_dados.sql`.

## Movimento contínuo

`mocks/simular_movimento.py` escreve nos três mocks (LabVida, ERP de RH e ProntoSul) a cada 20 s. O cabeçalho do
script tem o comando.
