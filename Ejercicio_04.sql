SELECT
TO_CHAR(ROUND(MAX(salary),2),'$99,999.00') AS "Salario M�ximo",
TO_CHAR(ROUND(MIN(salary),2),'$99,999.00') AS "Salario M�nimo",
TO_CHAR(ROUND(MAX(salary) - MIN(salary),2),'$99,999.00') AS "Diferencia Salarial"
FROM hr.employees