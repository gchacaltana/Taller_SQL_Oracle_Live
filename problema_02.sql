/**
Muestre el salario m�s alto, m�s bajo, salario total y salario promedio por cada tipo de puesto 
que se tiene en la organizaci�n. Etiquete las columnas como �Puesto�, �Salario M�ximo�, �Salario M�nimo�, 
�Salario Total� y �Salario Promedio� respectivamente. Redondee los resultados con dos cifras decimales, 
con un formato num�rico para la moneda de d�lares.
*/

SELECT
j.job_title AS "Puesto",
TO_CHAR(ROUND(MAX(e.salary),2),'$99,999.00') AS "Salario M�ximo", 
TO_CHAR(ROUND(MIN(e.salary),2),'$99,999.00') AS "Salario M�nimo", 
TO_CHAR(ROUND(SUM(e.salary),2),'$999,999.00') AS "Salario Total",
TO_CHAR(ROUND(AVG(e.salary),2),'$99,999.00') AS "Salario Promedio"
FROM hr.employees e INNER JOIN hr.jobs j ON e.job_id=j.job_id
GROUP BY j.job_title;