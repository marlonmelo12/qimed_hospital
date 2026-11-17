"""Popula o site do Frappe HRMS com a escala do hospital, pelo ORM do proprio Frappe (validacoes do produto valem).

A escala e a do mock ERP de RH (erp_rh/gerar_erp_rh.py, mesma semente): mesmos setores, equipes 12x36, plantoes e
ausencias. Assim o esperado e o mesmo dos dois mocks, e o que muda e so o produto que guarda os dados:
- setor vira Department; colaborador vira Employee (employee_number = matricula);
- cada plantao vira um Shift Assignment de um dia (Diurno 07-19 ou Noturno 19-07);
- Trabalhado: Employee Checkin de entrada e saida e Attendance Present com in_time e out_time;
- Falta: Attendance Absent; Atestado: Leave Application aprovada (o HRMS cria a Attendance On Leave);
- Escalado (futuro): so o Shift Assignment.

Roda dentro do container da fabrica, com o python do bench:
  cd /home/frappe/frappe-bench/sites && ../env/bin/python /mocks/frappe_hrms/fabrica/popular.py [--dias N]
"""
import argparse
import json
import os
import sys
import time
from datetime import timedelta

sys.path.insert(0, "/mocks/erp_rh")
sys.path.insert(0, "/mocks/tasy")
from gerar_erp_rh import FIM, INICIO, SETORES, esperado, gerar  # noqa: E402

import frappe  # noqa: E402
from frappe.desk.page.setup_wizard.setup_wizard import setup_complete  # noqa: E402

SITE, EMPRESA, SIGLA = "hospital.local", "Hospital Sao Rafael", "HSR"
TURNOS = {7: ("Diurno 12h", "07:00:00", "19:00:00"), 19: ("Noturno 12h", "19:00:00", "07:00:00")}
ATESTADO = "Atestado Medico"
SAIDA = "/mocks/frappe_hrms/esperado.json"


def novo(doctype, submeter=False, **campos):
    d = frappe.get_doc({"doctype": doctype, **campos})
    d.insert(ignore_permissions=True)
    if submeter:
        d.submit()
    return d


def configurar():
    if not frappe.db.a_row_exists("Company"):
        setup_complete({"currency": "BRL", "full_name": "Admin QIMED", "company_name": EMPRESA,
                        "timezone": "America/Sao_Paulo", "company_abbr": SIGLA, "industry": "Healthcare",
                        "country": "Brazil", "fy_start_date": f"{INICIO.year}-01-01",
                        "fy_end_date": f"{INICIO.year}-12-31", "language": "english", "company_tagline": "",
                        "email": "admin@hospital.local", "password": "admin_fabrica", "chart_of_accounts": "Standard"})
        frappe.db.commit()
    hl = "Plantao 24h"  # hospital funciona todo dia: lista de feriados vazia cobrindo o periodo
    if not frappe.db.exists("Holiday List", hl):
        novo("Holiday List", holiday_list_name=hl, from_date=f"{INICIO.year}-01-01", to_date=f"{FIM.year + 1}-12-31")
    frappe.db.set_value("Company", EMPRESA, "default_holiday_list", hl)
    hr = frappe.get_single("HR Settings")
    hr.leave_approver_mandatory_in_leave_application = 0
    hr.send_leave_notification = 0
    hr.save()
    for nome, ini, fim in TURNOS.values():
        if not frappe.db.exists("Shift Type", nome):
            novo("Shift Type", name=nome, __newname=nome, start_time=ini, end_time=fim, holiday_list=hl)
    if not frappe.db.exists("Leave Type", ATESTADO):
        novo("Leave Type", leave_type_name=ATESTADO, allow_negative=1, include_holiday=1)
    for cargo in ("Medico", "Enfermeiro", "Tecnico de Enfermagem"):
        if not frappe.db.exists("Designation", cargo):
            novo("Designation", designation_name=cargo)
    for _, desc, _ in SETORES:
        if not frappe.db.exists("Department", f"{desc} - {SIGLA}"):
            novo("Department", department_name=desc, company=EMPRESA, parent_department="All Departments")
    frappe.db.commit()


def popular(dias: int):
    dados = gerar()
    setor = {c: f"{d} - {SIGLA}" for c, d, _ in SETORES}
    emp = {}
    for c in dados["colaborador"]:
        nome = c["nome"].split()
        emp[c["matricula"]] = novo(
            "Employee", first_name=nome[0], last_name=" ".join(nome[1:]), gender="Female" if c["sexo"] == "F" else "Male",
            date_of_birth=c["dt_nascimento"], date_of_joining=c["dt_admissao"], company=EMPRESA,
            department=setor[c["cod_setor"]], designation=c["cargo"], employee_number=str(c["matricula"]),
            attendance_device_id=str(c["matricula"]), status="Active").name
    frappe.db.commit()
    corte = INICIO + timedelta(days=dias) if dias else None
    escala = [x for x in dados["escala_ponto"] if not corte or x["dt_entrada_prevista"].date() < corte]
    t0 = time.time()
    for n, x in enumerate(escala, 1):
        e, dia = emp[x["matricula"]], x["dt_entrada_prevista"].date()
        turno = TURNOS[x["dt_entrada_prevista"].hour][0]
        novo("Shift Assignment", True, employee=e, shift_type=turno, company=EMPRESA, start_date=dia, end_date=dia,
             status="Active")
        if x["situacao"] == "Trabalhado":
            novo("Employee Checkin", employee=e, log_type="IN", time=x["dt_entrada_registrada"])
            novo("Employee Checkin", employee=e, log_type="OUT", time=x["dt_saida_registrada"])
            novo("Attendance", True, employee=e, attendance_date=dia, status="Present", shift=turno, company=EMPRESA,
                 in_time=x["dt_entrada_registrada"], out_time=x["dt_saida_registrada"])
        elif x["situacao"] == "Falta":
            novo("Attendance", True, employee=e, attendance_date=dia, status="Absent", shift=turno, company=EMPRESA)
        elif x["situacao"] == "Atestado":
            novo("Leave Application", True, employee=e, leave_type=ATESTADO, from_date=dia, to_date=dia,
                 posting_date=dia, status="Approved", company=EMPRESA, follow_via_email=0)
        if n % 500 == 0:
            frappe.db.commit()
            print(f"{n}/{len(escala)} plantoes ({time.time() - t0:.0f} s)", flush=True)
    frappe.db.commit()
    esp = esperado({"escala_ponto": escala})
    esp.update({"funcionarios": len(emp), "departamentos": len(setor), "periodo": [str(INICIO), str(FIM)]})
    with open(SAIDA, "w", encoding="utf-8", newline="\n") as f:
        json.dump(esp, f, indent=1, ensure_ascii=False)
    print(json.dumps(esp))


if __name__ == "__main__":
    ap = argparse.ArgumentParser()
    ap.add_argument("--dias", type=int, default=0, help="so os primeiros N dias da escala (ensaio rapido)")
    a = ap.parse_args()
    frappe.init(site=SITE, sites_path=os.getcwd())
    frappe.connect()
    frappe.set_user("Administrator")
    frappe.flags.mute_emails = True
    configurar()
    popular(a.dias)
    frappe.destroy()
