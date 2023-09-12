-- generates random employees and departments
\set    dep_size 1000
\set    emp_size 100000

SELECT  setseed(0);

TRUNCATE department CASCADE;
TRUNCATE employee;

-- generate 'dep_size' random departments, without parents
INSERT INTO department (
    SELECT
        'dep_' || i :: text
    FROM
        generate_series(0, :dep_size - 1) AS g(i)
);

INSERT INTO employee(department_name, salary) (
    SELECT
        'dep_' || (floor(:dep_size * random())),
        (6000 * random()) :: int
    FROM
        generate_series(1, :emp_size) AS g(i)
);


VACUUM ANALYZE department, employee;