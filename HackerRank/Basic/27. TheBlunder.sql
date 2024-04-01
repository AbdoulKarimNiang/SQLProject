-- Samantha was tasked with calculating the average monthly salaries 
-- for all employees in the EMPLOYEES table, 
-- but did not realize her keyboard's  key 
-- was broken until after completing the calculation.
--She wants your help finding the difference between 
-- her miscalculation (using salaries with any zeros removed), and the actual average salary.

-- Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

-- Input Format

-- The EMPLOYEES table is described as follows:


| Column | Type    |
|--------|---------|
| ID     | INTEGER |
| NAME   | STRING  |
| SALARY | INTEGER |


-- Note: Salary is per month.

-- Constraints

-- 1000 < Salary < 10^5

-- Samantha computes an average salary of 98.00. The actual average salary is 2159.00.

-- The resulting error between the two calculations is  2159.00 - 98.00 = 2061.00.
-- Since it is equal to the integer 2061.00, it does not get rounded up.

SELECT
  CEILING(AVG(Salary) - AVG(REPLACE(Salary, 0, '')))
FROM employees;




