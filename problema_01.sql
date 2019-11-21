/**
Muestre el salario más alto, más bajo, salario total de la planilla y salario promedio de la tabla empleados. 
Etiquete las columnas como «Salario Máximo», «Salario Mínimo», «Salario Planilla» y «Salario Promedio» respectivamente. 
Redondee los resultados al valor entero más cercano, con un formato numérico para la moneda de dólares.
*/
SELECT
TO_CHAR(ROUND(MAX(salary)),'$99,999.00') AS "Salario Máximo", 
TO_CHAR(ROUND(MIN(salary)),'$99,999.00') AS "Salario Mínimo", 
TO_CHAR(ROUND(SUM(salary)),'$999,999.00') AS "Salario Planilla",
TO_CHAR(ROUND(AVG(salary)),'$99,999.00') AS "Salario Promedio"
FROM hr.employees;
