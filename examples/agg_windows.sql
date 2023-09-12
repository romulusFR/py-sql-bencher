-- donner toutes les informations de chaque employé ainsi que
-- la différence entre son salaire et le salaire moyen de son équipe
-- version WINDOWS

-- EXPLAIN
SELECT
    employee.*,
    round(salary - avg(salary) OVER w) AS delta
FROM employee
WINDOW w AS (PARTITION BY department_name)
ORDER BY department_name, employee_id;

