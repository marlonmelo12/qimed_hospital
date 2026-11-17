# Mock de PEP com API FHIR R4

Servidor HAPI FHIR 7.4 com o prontuário eletrônico do mesmo hospital do mock TASY (`hospital_id` 9990001). Serve
para testar a ingestão de um sistema que só expõe API FHIR e o vínculo da mesma pessoa entre dois sistemas do
hospital. **Tudo é fictício**: nomes, CPFs (só com dígito verificador válido), telefones e endereços.

## Subir e carregar

```sh
docker compose -f pep_fhir/docker-compose.yml up -d   # 127.0.0.1:8091/fhir; na rede qimed-network, pep-fhir:8080
# espere /fhir/metadata responder (cerca de 1 min) e carregue, no container do pipeline:
python mocks/pep_fhir/gerar_pep.py --carregar http://pep-fhir:8080/fhir
```

O banco H2 fica dentro do container. Depois de `stop`/`start`, os dados continuam lá. Se o container for recriado,
é preciso carregar de novo. A JVM usa até 1 GB.

**Quem subiu o mock antes de 12/11** tem o PEP antigo, com pacientes próprios e o hospital 9990002. Para passar ao
PEP do hospital do TASY, recrie o container, carregue de novo e ingira do zero:

```sh
docker compose -f pep_fhir/docker-compose.yml down
docker compose -f pep_fhir/docker-compose.yml up -d
python mocks/pep_fhir/gerar_pep.py --carregar http://pep-fhir:8080/fhir   # no container do pipeline
python -m src.pipeline.run_fonte_hospital pep_fhir --completo
```

A Silver só lê as linhas da Bronze com o `hospital_id` atual, então as do 9990002 ficam paradas na Bronze e não
entram na Silver.

Ingestão: `python -m src.pipeline.run_fonte_hospital pep_fhir`, ou a DAG `qimed_hospital_pep_fhir`. A fonte está em
`config/fontes_hospital.yaml` (`pep_fhir`) e os elementos PII em `config/pii_manifest.yaml`. A Gold só sai com a
Silver do TASY presente, porque o atendimento do hospital vem do HIS.

## Conteúdo (semente 20261112)

Os pacientes são os primeiros 400 do seed do TASY (`scripts/gerar_mock_tasy.py`, semente 20261111), com o mesmo
nome, sexo, nascimento e CPF. Quem está sem CPF no TASY (cerca de 5%) ganha um CPF só no PEP e não casa entre os
sistemas. Os ids do PEP (`p-0001`, `e-00001`) são próprios.

| Recurso | Qtde | Observação |
|---|---|---|
| Organization | 1 | o hospital |
| Patient | 400 | CPF em `identifier`, nome, celular, endereço, sexo, nascimento |
| Encounter | 829 | IMP/EMER/AMB, de 01/05 a 10/11/2026; prioridade, especialidade, CID-10 em `reasonCode`, alta em `hospitalization.dischargeDisposition` (`exp` = óbito, só em internação). Fica na Bronze: o atendimento canônico é o do TASY |
| Condition | 829 | diagnóstico do atendimento (CID-10 com ponto) |
| Observation | 4296 | sinais vitais diários das internações às 8h (LOINC 8867-4, 59408-5, 9279-1, 8310-5) |

Horários em `-03:00`. Atendimento sem alta até 10/11 18h fica `in-progress`.
