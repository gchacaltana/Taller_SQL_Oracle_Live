/**
Escriba una consulta para mostrar la diferencia entre el salario m�s alto y el salario m�s bajo. 
Etiquete la columna como �Diferencia Salarial�.
*/

SELECT
TO_CHAR(ROUND(MAX(salary),2),'$99,999.00') AS "Salario M�ximo",
TO_CHAR(ROUND(MIN(salary),2),'$99,999.00') AS "Salario M�nimo",
TO_CHAR(ROUND(MAX(salary) - MIN(salary),2),'$99,999.00') AS "Diferencia Salarial"
FROM hr.employees