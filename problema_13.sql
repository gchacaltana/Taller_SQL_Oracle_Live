/**
Mostrar los nombres, apellidos, salario actual y el nuevo salario equivalente al 8% adicional 
de su salario actual de los empleados cuyo salario actual sea igual, menor o mayor hasta por 5% 
del salario mínimo del puesto. Ordenar resultado por el sueldo actual más alto.
*/

SELECT
(e.first_name || ' ' || e.last_name) "Empleado",
TO_CHAR(ROUND(e.salary, 2),'$99,999.00') "Salario Actual",
TO_CHAR(ROUND(j.min_salary,2),'$99,999.00') "Salario Mínimo Puesto",
TO_CHAR(ROUND(j.max_salary,2), '$99,999.00') "Salario Máximo Puesto",
TO_CHAR(ROUND((e.salary + e.salary*0.08),2),'$99,999.00') "Nuevo Salario"
FROM hr.employees e
INNER JOIN hr.jobs j on e.job_id=j.job_id
WHERE e.salary<=j.min_salary OR
e.salary BETWEEN j.min_salary AND (j.min_salary+j.min_salary*0.05)