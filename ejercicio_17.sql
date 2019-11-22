/**
Generar un reporte que muestre los nombres y apellidos, salario del empleado, el salario mínimo según el cargo del empleado, 
de aquellos cuya diferencia del salario y el salario mínimo sea menor a S/. 500.00 y además que indique si merece un aumento 
sólo si la diferencia entre hoy y la fecha de contratación es mayor a 5,000 días. El mismo reporte debe mostrar el nuevo 
salario que corresponde a un aumento del 15% .
*/
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
