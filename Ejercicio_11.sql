SELECT (e.first_name || ' ' || e.last_name) "Empleado",
COUNT(jh.employee_id) "Rotaciones"
FROM hr.job_history jh
INNER JOIN hr.employees e ON jh.employee_id=e.employee_id
GROUP BY (e.first_name || ' ' || e.last_name)
HAVING COUNT(jh.employee_id)>1