create view hospital_fact as
select
	a.admission_id,
    a.branch,
    a.department,
    date(a.admit_datetime) as admit_date,
    date(a.discharge_datetime) as discharge_date,
    a.length_of_stay,
    a.emergency_flag,
    
    p.age,
    p.gender,
    p.insurance_type,
    
    o.outcome,
    o.readmitted_30d,
    
    b.total_cost,
    b.insurance_paid,
    b.patient_paid
    
from admissions a
join patients p on a.patient_id = p.patient_id
join outcomes o on a.admission_id = o.admission_id
join billing b on a.admission_id = b.admission_id