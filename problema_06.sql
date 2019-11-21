/**
Escriba una consulta para mostrar el número de empleado y apellidos de todos los empleados 
que ganan por encima del salario promedio. Ordene los resultados en orden descendente de salario.
*/

SELECT
employee_id "Número Empleado",
last_name "Apellidos Empleado",
TO_CHAR(ROUND(salary,2),'$99,999.00') "Salario Empleado"
FROM hr.employees
WHERE salary>(SELECT AVG(salary) from hr.employees)