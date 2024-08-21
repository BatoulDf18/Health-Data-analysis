--Which doctor has admitted the most patients?
select doctor,count(doctor)
from patientrecords
GROUP BY doctor 
order by count(doctor) desc
limit 1
--What is the total billing amount for each hospital?
select hospital,sum(billingamount)
from patientrecords
group by hospital
--Which insurance provider has the highest number of patients covered?
select insuranceprovider,count(insuranceprovider)
from patientrecords
group by insuranceprovider
order by count(insuranceprovider) desc 
limit 1
--Find the patient with the highest billing amount
select name,billingamount from patientrecords
where billingamount=
(SELECT max(billingamount)
from patientrecords)
--What is the average billing amount for all patients?
select avg(billingamount)
from patientrecords
--Which patients have stayed in the hospital for more than 10 days?
select name,dateofadmission,dischargedate,(dischargedate-dateofadmission) as stayeddays
from patientrecords
where (dischargedate-dateofadmission)>10
--List the medications for all patients who were admitted with 'Diabetes.'
select DISTINCT(medication)
from patientrecords
where medicalcondition='Diabetes'
--Which hospital has the highest average billing amount per patient?
select hospital,avg(billingamount)
from patientrecords
group by (hospital)
order by avg(billingamount) DESC
limit 1
--How many patients have been admitted under each type of admission (e.g., emergency, elective)?
select admissiontype,count(admissiontype) as number_of_patient_admitted
from patientrecords
group by admissiontype
--Which patients have had more than one admission (assuming there is a way to track multiple admissions)?
SELECT name,count(name) as admittion_number
from patientrecords
group by name
HAVING count(name)>1

