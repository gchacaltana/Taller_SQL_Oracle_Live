/**
Escriba una consulta que muestre la cantidad de personas que tienen el mismo puesto y 
a cuanto asciende la suma total de sus salarios. El resultado debe mostrarse en orden 
descendente por el puesto que tiene la mayor cantidad de empleados.
*/

SELECT
j.job_title AS "Puesto",
COUNT(e.job_id) AS "Total Empleados", 
TO_CHAR(ROUND(SUM(e.salary),2),'$999,999.00') AS "Salario Total"
FROM hr.employees e INNER JOIN hr.jobs j ON e.job_id=j.job_id
GROUP BY j.job_title
ORDER BY 2 DESC