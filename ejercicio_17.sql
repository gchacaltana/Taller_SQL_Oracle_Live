SELECT
e.first_name "Nombres",
e.last_name "Apellidos",
e.hire_date "Fecha Ingreso",
TO_CHAR(ROUND(e.salary,2),'$99,999.00') "Salario",
TO_CHAR(ROUND(c.min_salary,2),'$99,999.00') "Salario Mínimo",
TO_CHAR(ROUND((e.salary*1.15),2),'$99,999.00') "Nuevo Salario"
FROM hr.employees e 
INNER JOIN hr.jobs c ON e.job_id=c.job_id
WHERE (CURRENT_DATE - e.hire_date)>5000 AND
e.salary-c.min_salary<500
