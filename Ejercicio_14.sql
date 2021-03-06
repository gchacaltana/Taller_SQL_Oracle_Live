SELECT
(first_name || ' ' || last_name) "Empleado",
hire_date "Fecha Ingreso",
TO_CHAR(ROUND(salary, 2),'$99,999.00') "Salario Actual",
TO_CHAR(ROUND((salary + salary*0.2),2),'$99,999.00') "Nuevo Salario"
FROM hr.employees
WHERE extract(year from hire_date) BETWEEN 2003 AND 2004
ORDER BY 3 DESC