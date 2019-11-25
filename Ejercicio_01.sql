SELECT
TO_CHAR(ROUND(MAX(salary)),'$99,999.00') AS "Salario Máximo", 
TO_CHAR(ROUND(MIN(salary)),'$99,999.00') AS "Salario Mínimo", 
TO_CHAR(ROUND(SUM(salary)),'$999,999.00') AS "Salario Planilla",
TO_CHAR(ROUND(AVG(salary)),'$99,999.00') AS "Salario Promedio"
FROM hr.employees;
