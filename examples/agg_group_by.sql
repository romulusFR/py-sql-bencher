-- donner toutes les informations de chaque employé ainsi que
-- la différence entre son salaire et le salaire moyen de son équipe
-- version GROUP BY + JOIN

-- l'aggrégat sur emp
-- EXPLAIN
WITH sal AS (
    SELECT department_name, AVG(salary) as avg
    FROM employee GROUP BY department_name
)

-- la jointure entre emp et l'agrégat
SELECT employee.*, round(salary - sal.avg) AS delta
FROM employee JOIN sal
    ON employee.department_name = sal.department_name
ORDER BY department_name, employee_id;
