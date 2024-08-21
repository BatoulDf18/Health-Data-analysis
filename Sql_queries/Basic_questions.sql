--Basic Questions
--What is the total number of patients in the dataset?
select count(*)
from patientrecords
--How many patients are male, and how many are female?
SELECT gender,count(gender)
from patientrecords
group by gender
--What are the distinct blood types present in the dataset?
select DISTINCT(bloodtype)
from patientrecords
--How many patients have the blood type "O+?"
select count(bloodtype)
from patientrecords
WHERE bloodtype='O+'
--List the names of all patients who are over 60 years old
select name,age
from patientrecords
where age>60
--Which patients were admitted on '2024-08-01'?
select name,dateofadmission
 from patientrecords
 where dateofadmission= '2020-08-01'
 --How many patients are admitted to each hospital?
 select hospital,count(hospital)
 from patientrecords
 group by hospital
 --List all the patients whose medical condition includes the word 'tension'
select medicalcondition
from patientrecords
where medicalcondition LIKE '%tension'

