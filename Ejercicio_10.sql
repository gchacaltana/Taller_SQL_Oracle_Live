SELECT
(m.first_name || ' ' || m.last_name) "Manager",
j.job_title "Puesto",
d.department_name "Departamento",
TO_CHAR(ROUND(m.salary,2),'$999,999.00') "Salario",
(SELECT COUNT(employee_id) FROM hr.employees WHERE manager_id = m.employee_id) "Total Empleados"
FROM hr.employees m
INNER JOIN hr.jobs j ON m.job_id=j.job_id
INNER JOIN hr.departments d ON m.department_id=d.department_id
WHERE m.employee_id IN (SELECT DISTINCT(manager_id) FROM hr.employees)
ORDER BY 5 DESC