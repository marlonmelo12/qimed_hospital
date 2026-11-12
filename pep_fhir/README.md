# Mock de PEP com API FHIR R4

Servidor HAPI FHIR 7.4 com o prontuário eletrônico do segundo hospital simulado da rede (CNES fictício 9990002).
Serve para testar a ingestão de um sistema que só expõe API FHIR. **Tudo é fictício**: nomes, CPFs (só com dígito
verificador válido), telefones e endereços.

## Subir e carregar

```sh
docker compose -f mocks/pep_fhir/docker-compose.yml up -d   # 127.0.0.1:8091/fhir; na rede qimed-network, pep-fhir:8080
# espere /fhir/metadata responder (cerca de 1 min) e carregue, no container do pipeline:
python mocks/pep_fhir/gerar_pep.py --carregar http://pep-fhir:8080/fhir
```

O banco H2 fica dentro do container. Depois de `stop`/`start`, os dados continuam lá. Se o container for recriado,
é preciso carregar de novo. A JVM usa até 1 GB.

Ingestão: `python -m src.pipeline.run_fonte_hospital pep_fhir`, ou a DAG `qimed_hospital_pep_fhir`. A fonte está em
`config/fontes_hospital.yaml` (`pep_fhir`) e os elementos PII em `config/pii_manifest.yaml`.

## Conteúdo (semente 20261112)

| Recurso | Qtde | Observação |
|---|---|---|
| Organization | 1 | o hospital |
| Patient | 400 | CPF em `identifier`, nome, celular, endereço, sexo, nascimento |
| Encounter | 836 | IMP/EMER/AMB, de 01/05 a 10/11/2026; prioridade, especialidade, CID-10 em `reasonCode`, alta em `hospitalization.dischargeDisposition` (`exp` = óbito, só em internação) |
| Condition | 836 | diagnóstico do atendimento (CID-10 com ponto) |
| Observation | 4300 | sinais vitais diários das internações às 8h (LOINC 8867-4, 59408-5, 9279-1, 8310-5) |

Horários em `-03:00`. Atendimento sem alta até 10/11 18h fica `in-progress`.
