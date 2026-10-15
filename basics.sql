CREATE TABLE employee_demographic (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(20),
    birth_date DATE
);

INSERT INTO employee_demographic
    (employee_id, first_name, last_name, age, gender, birth_date)
VALUES
    (1, 'Leslie', 'Knope', 44, 'Female', '1979-09-25'),
    (3, 'Tom', 'Haverford', 36, 'Male', '1987-03-04'),
    (4, 'April', 'Ludgate', 29, 'Female', '1994-03-27'),
    (5, 'Jerry', 'Gergich', 61, 'Male', '1962-08-28'),
    (6, 'Donna', 'Meagle', 46, 'Female', '1977-07-30'),
    (7, 'Ann', 'Perkins', 35, 'Female', '1988-12-01'),
    (8, 'Chris', 'Traeger', 43, 'Male', '1980-11-11'),
    (9, 'Ben', 'Wyatt', 38, 'Male', '1985-07-26'),
    (10, 'Andy', 'Dwyer', 34, 'Male', '1989-03-25'),
    (11, 'Mark', 'Brendanawicz', 40, 'Male', '1983-06-14'),
    (12, 'Craig', 'Middlebrooks', 37, 'Male', '1986-07-27');

SELECT * FROM employee_demographic;

-- SELECT employee_id, first_name FROM employee_demographic;

-- PEMDAS.   MDAS are L->R associativity and E is R->L associativity

SELECT employee_id,
 first_name, 
 age,
 (age + 10) / 10 + 1 * 100 AS new_age 
FROM employee_demographic;
-- (44 + 10) /10 + 1 * 100
-- 54/10 + 1 * 100
-- 5.4 + 1 * 100
-- 5.4 + 100
-- 105.4000

SELECT DISTINCT first_name, gender FROM employee_demographic;
-- DISTINCT keyword removes duplicate rows from your final result set, ensuring you only get unique records.
-- DISTINCT is applied to both colums, first_name and gender.
