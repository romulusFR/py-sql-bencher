-- all informations about all employees with the difference
-- between his/her salary and the average one in his/her department

-- GROUP BY + JOIN without MATERIALIZED (transparent/rewritten subquery) version
WITH dep_salary AS (
    SELECT department_name, AVG(salary) as avg
    FROM employee GROUP BY department_name
)

SELECT employee.*, round(salary - dep_salary.avg) AS delta
FROM employee JOIN dep_salary
    ON employee.department_name = dep_salary.department_name
ORDER BY department_name, employee_id;
