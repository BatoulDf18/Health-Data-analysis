--Rank all doctors by the total number of patients they have admitted
SELECT Doctor,
       COUNT(*) AS Total_Patients,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS Rank
FROM patientrecords
GROUP BY Doctor
ORDER BY Rank;

--Find patients who have the second-highest billing amount in their respective hospitals.
with ranked_billing as (
    select name,hospital,billingamount,
    rank() over (PARTITION BY hospital order by billingamount desc) as number
from patientrecords)

select name,number
from ranked_billing
where number =2
  
--List all hospitals along with the total number of patients admitted, total billing amount, and average length of stay.
select hospital,count(*) as number_of_patients,sum(billingamount)as total_amount,avg(dischargedate-dateofadmission) as average_length_of_stay
from patientrecords
group by hospital 
  
--List patients who were admitted on weekends
with days_of_admission as(
SELECT name,TO_CHAR(dateofadmission, 'Day') as day_name
FROM patientrecords
)
select name,day_name 
from days_of_admission 
where trim(day_name )='Friday' or trim(day_name)='Saturday'
  
--Which hospitals have the most frequent admissions for patients with 'Diabetes'?
SELECT hospital,count(*) from patientrecords where medicalcondition='Diabetes'
group by hospital
order by count(*) desc
  
--What is the correlation between patient age and billing amount?
WITH Stats AS (
    SELECT
        COUNT(*) AS n,
        SUM(Age * BillingAmount) AS sum_age_billing,
        SUM(Age) AS sum_age,
        SUM(BillingAmount) AS sum_billing,
        SUM(Age * Age) AS sum_age_squared,
        SUM(BillingAmount * BillingAmount) AS sum_billing_squared
    FROM patientrecords
)
SELECT
    (n * sum_age_billing - sum_age * sum_billing) / 
    SQRT((n * sum_age_squared - sum_age * sum_age) * (n * sum_billing_squared - sum_billing * sum_billing)) AS correlation_coefficient
FROM Stats;

--What is the distribution of admission types across different hospitals?
SELECT
    hospital,
    admissiontype,
    COUNT(*) AS admission_count
FROM
    patientrecords
GROUP BY
    hospital,
    admissiontype
ORDER BY
    hospital,
    admission_count DESC;



