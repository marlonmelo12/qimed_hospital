"""CPF no PUID (party_party.ref) das pessoas do GNU Health, pelo ORM (Proteus), sem SQL direto.

Num GNU Health brasileiro o PUID e o identificador nacional da pessoa. Regras (semente 20261116):
- 300 pacientes passam a ser pessoas que tambem estao no TASY: mesmo CPF, nome e nascimento. O par tem o mesmo
  sexo e nascimento a ate 1 ano, para o historico clinico do GNU Health continuar coerente;
- 5% dos pacientes ficam sem CPF (o PUID gerado pelo GNU Health continua);
- as demais pessoas (pacientes e profissionais) ganham um CPF novo, valido e fora do TASY.

Roda na imagem do servidor GNU Health (repo GNU_helth), na rede qimed-network, contra o mock:
  python atribuir_cpf.py /dados/tasy_pessoas.tsv /dados/tasy_todos_cpfs.txt
"""
import bisect
import random
import sys
from datetime import date

from proteus import Model, config

SEMENTE, VINCULADOS, SEM_CPF_PCT, JANELA_DIAS = 20261116, 300, 5, 365


def cpf_novo(rng: random.Random) -> str:
    d = [rng.randint(0, 9) for _ in range(9)]
    for n in (9, 10):
        r = sum(x * (n + 1 - i) for i, x in enumerate(d)) % 11
        d.append(0 if r < 2 else 11 - r)
    return "".join(map(str, d))


def cpf_valido(s: str) -> bool:
    d = [int(c) for c in s]
    return len(d) == 11 and len(set(d)) > 1 and all(
        d[n] == (0 if (r := sum(x * (n + 1 - i) for i, x in enumerate(d[:n])) % 11) < 2 else 11 - r) for n in (9, 10))


def main(tsv: str, todos: str) -> None:
    config.set_trytond("gnuhealth", config_file="/etc/trytond.conf")
    Party = Model.get("party.party")
    rng = random.Random(SEMENTE)
    tasy = {"m": [], "f": []}
    for linha in open(tsv, encoding="utf-8"):
        cpf, nome, nasc, sexo = linha.rstrip("\n").split("\t")
        if sexo.lower() in tasy:
            tasy[sexo.lower()].append((date.fromisoformat(nasc), cpf, nome))
    for v in tasy.values():
        v.sort()
    usados = {c.strip() for c in open(todos, encoding="utf-8") if c.strip()}

    pessoas = Party.find([("is_person", "=", True)], order=[("id", "ASC")])
    pacientes = [p for p in pessoas if p.is_patient]
    rng.shuffle(pacientes)
    vinculados = 0
    para_salvar = []
    for p in pacientes:
        if vinculados == VINCULADOS:
            break
        lista = tasy.get(p.gender) or []
        if not p.dob or not lista:
            continue
        i = bisect.bisect_left(lista, (p.dob, "", ""))
        perto = [j for j in (i - 1, i) if 0 <= j < len(lista) and abs((lista[j][0] - p.dob).days) <= JANELA_DIAS]
        if not perto:
            continue
        nasc, cpf, nome = lista.pop(min(perto, key=lambda j: abs((lista[j][0] - p.dob).days)))
        p.ref, p.name, p.lastname, p.dob = cpf, nome, None, nasc
        para_salvar.append(p)
        vinculados += 1
    feitos = {p.id for p in para_salvar}
    resto = [p for p in pacientes if p.id not in feitos]
    sem_cpf = {p.id for p in resto[: len(pacientes) * SEM_CPF_PCT // 100]}
    for p in sorted(pessoas, key=lambda x: x.id):
        if p.id in feitos or p.id in sem_cpf:
            continue
        c = cpf_novo(rng)
        while c in usados or not cpf_valido(c):
            c = cpf_novo(rng)
        usados.add(c)
        p.ref = c
        para_salvar.append(p)
    assert vinculados == VINCULADOS, f"so {vinculados} pares com o TASY"
    assert len({p.ref for p in para_salvar}) == len(para_salvar), "CPF repetido"
    Party.save(para_salvar)
    print(f"pessoas {len(pessoas)}, pacientes {len(pacientes)}, com CPF {len(para_salvar)}, "
          f"no TASY {vinculados}, pacientes sem CPF {len(sem_cpf)}")


if __name__ == "__main__":
    main(*sys.argv[1:3])
