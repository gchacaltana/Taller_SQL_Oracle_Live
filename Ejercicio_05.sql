SELECT
DISTINCT(m.manager_id) "Manager",
(
-- INICIO SUBQUERY
SELECT TO_CHAR(ROUND(e.salary,2),'$99,999.00') 
FROM hr.employees e 
WHERE e.manager_id=m.manager_id 
ORDER BY e.salary ASC
FETCH NEXT 1 ROWS ONLY
-- FIN SUBQUERY
) AS "Salario Mínimo de Empleado"
FROM hr.employees m
INNER JOIN hr.jobs j ON m.job_id=j.job_id
WHERE m.manager_id>0 AND j.min_salary>=6000
ORDER BY 2 DESC