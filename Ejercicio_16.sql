SELECT
EXTRACT(YEAR FROM hire_date) "Año", 
COUNT(employee_id) "Empleados que ingresaron",
TO_CHAR(ROUND(SUM(salary),2),'$999,999.00') "Planilla Mensual",
TO_CHAR(ROUND(SUM(salary)*12,2),'$9,999,999.00') "Planilla Anual",
TO_CHAR(ROUND(AVG(salary),2),'$99,999.00') "Salario Promedio Mensual"
FROM hr.employees
GROUP BY EXTRACT(YEAR FROM hire_date)
ORDER BY 1 ASC