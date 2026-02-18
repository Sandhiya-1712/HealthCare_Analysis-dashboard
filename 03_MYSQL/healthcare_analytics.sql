Create database if not exists healthcare_analysis;

use healthcare_analysis;

CREATE TABLE patients (
    patient_id VARCHAR(45) PRIMARY KEY,
    age INT,
    gender VARCHAR(1),
    insurance_type VARCHAR(100)
);

CREATE TABLE admissions (
    admission_id VARCHAR(100) PRIMARY KEY,
    patient_id VARCHAR(100),
    branch VARCHAR(100),
    department VARCHAR(100),
    admit_datetime TIMESTAMP,
    discharge_datetime TIMESTAMP,
    emergency_flag INT,
    length_of_stay INT
);

CREATE TABLE outcomes (
    admission_id VARCHAR(100),
    outcome VARCHAR(100),
    readmitted_30d INT
);

CREATE TABLE billing (
    admission_id VARCHAR(100),
    total_cost INT,
    insurance_paid INT,
    patient_paid INT
);

-- inspect rows

select 'patients', count(*) cnt from patients
union all
select 'admissions', count(*) from admissions
union all
select all 'outcomes', count(*) from outcomes
union all
select 'billing', count(*) from billing;