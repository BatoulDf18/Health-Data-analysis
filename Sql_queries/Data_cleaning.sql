--- Identifying duplicates 
SELECT name,age,medicalcondition,doctor,hospital,dateofadmission,admissiontype,dischargedate,  COUNT(*)
FROM patientrecords
GROUP BY name,age,medicalcondition,doctor,hospital,dateofadmission,admissiontype,dischargedate

--Identify Duplicates with ROW_NUMBER():
DELETE FROM patientrecords
WHERE ctid NOT IN (
    SELECT MIN(ctid)
    FROM patientrecords
    GROUP BY name, age, medicalcondition, doctor, hospital, dateofadmission, admissiontype, dischargedate
);

---Capitalize 
UPDATE patientrecords
SET name = INITCAP(name);
--






