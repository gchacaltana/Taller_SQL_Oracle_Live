SELECT
(first_name || ' ' || last_name) "Nombres Empleado",
d.department_name "Departamento",
j.job_title "Puesto"
FROM hr.employees e
INNER JOIN hr.departments d ON e.department_id=d.department_id
INNER JOIN hr.jobs j ON e.job_id=j.job_id
WHERE d.location_id=1700
ORDER BY e.last_name ASC