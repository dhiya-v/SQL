-- 1. Write a query to get the list of employees who took more than 5 leaves and are in sales department
SELECT name,leave FROM employee WHERE leave > 5  AND department='sales';

-- 2. Write a query to get the number of employees working in operations department
SELECT COUNT(name) AS no_of_employees FROM employee WHERE department='operations';

-- 3. Write a single query to get the count of employees working in each department
SELECT COUNT(name) AS no_of_employees , department FROM employee GROUP BY department;

-- 4. Write a query to list the departments where all its employees altogether took more than 10 leaves
SELECT SUM(leave) AS total_leaves , department FROM employee GROUP BY department HAVING total_leaves > 10;

-- 5. Write a query to list all the employee names who have passed the exam
SELECT e.name,e.department FROM employee e 
    INNER JOIN exam x
    ON e.id=x.employee_id
    WHERE x.exam_status ='pass';


-- 6. Write a query to list all the employee names who have not attended the exam
SELECT e.name,e.department FROM employee e 
    LEFT JOIN exam x
    ON e.id=x.employee_id
    WHERE x.id IS NULL;