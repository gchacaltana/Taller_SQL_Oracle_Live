SELECT
d.department_name "Departamento",
COUNT(e.employee_id) "Total Empleados",
TO_CHAR(ROUND(SUM(e.salary),2),'$999,999.00') "Salario Total",
TO_CHAR(ROUND(AVG(e.salary),2),'$999,999.00') "Salario Promedio"
FROM hr.employees e
INNER JOIN hr.departments d ON e.department_id=d.department_id
GROUP BY d.department_name
ORDER BY 2 DESC