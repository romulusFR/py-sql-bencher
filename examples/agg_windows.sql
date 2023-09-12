-- all informations about all employees with the difference
-- between his/her salary and the average one in his/her department

-- WINDOWS function version
SELECT
    employee.*,
    round(salary - avg(salary) OVER win) AS delta
FROM employee
WINDOW win AS (PARTITION BY department_name)
ORDER BY department_name, employee_id;

