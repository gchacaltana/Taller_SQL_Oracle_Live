SELECT
TO_CHAR(hire_date, 'YYYY') "Año Contratación",
COUNT(employee_id) "Empleados"
FROM hr.employees
GROUP BY TO_CHAR(hire_date, 'YYYY')
ORDER BY 2 DESC