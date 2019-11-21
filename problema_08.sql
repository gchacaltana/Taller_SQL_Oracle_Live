/**
Elabore un reporte que contenga los nombres, apellidos, puesto, salario y fecha de ingreso 
de los empleados que le reportan a King, ordenados por su fecha de ingreso a la empresa 
de manera descendente.
*/

SELECT
(e.first_name || ' ' || e.last_name) "Empleado",
j.job_title "Puesto",
TO_CHAR(ROUND(e.salary,2),'$99,999.00') "Salario",
e.hire_date "Fecha Ingreso"
FROM hr.employees e
INNER JOIN hr.jobs j ON e.job_id=j.job_id
WHERE e.manager_id=100
ORDER BY e.hire_date DESC