SELECT
j.job_title AS "Puesto",
TO_CHAR(ROUND(MAX(e.salary),2),'$99,999.00') AS "Salario Máximo", 
TO_CHAR(ROUND(MIN(e.salary),2),'$99,999.00') AS "Salario Mínimo", 
TO_CHAR(ROUND(SUM(e.salary),2),'$999,999.00') AS "Salario Total",
TO_CHAR(ROUND(AVG(e.salary),2),'$99,999.00') AS "Salario Promedio"
FROM hr.employees e INNER JOIN hr.jobs j ON e.job_id=j.job_id
GROUP BY j.job_title;