SELECT TO_CHAR(ROUND(AVG(e.salary),2),'$99,999.00') "Salario Promedio Stock Manager"
FROM hr.employees e
INNER JOIN hr.jobs j ON e.job_id=j.job_id
WHERE UPPER(j.job_title)='STOCK MANAGER'