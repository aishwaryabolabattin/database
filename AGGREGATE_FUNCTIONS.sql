USE APRILPYTHON;
-- FUNCTION
-- PREDEFINE FUNCTION
-- 4. AGGREGATE FUNCTION
-- 4.1 COUNT():
SELECT COUNT(*) FROM EMPLOYEE;
-- 4.2 SUM():
SELECT SUM(SALARY) FROM EMPLOYEE;
-- 4.3 MIN():
SELECT MIN(SALARY) FROM EMPLOYEE;
-- 4.4 MAX():
SELECT MAX(SALARY) FROM EMPLOYEE;
-- 4.5 AVG():
SELECT AVG(SALARY) FROM EMPLOYEE;

-- FUNCTION QUESTIONS:
-- 1. Display full name of employees in uppercase.
SELECT UPPER(CONCAT(FIRST_NAME,' ',LAST_NAME)) AS FULL_NAME FROM EMPLOYEE;
-- 2. Round employee salarY.
SELECT ROUND(SALARY) FROM EMPLOYEE;
-- 3. What is the average salary of employees?
SELECT AVG(SALARY) FROM EMPLOYEE;
-- 4. What is the highest salary in the company?
SELECT MAX(SALARY) FROM EMPLOYEE;
-- 5. What is the lowest salary?
SELECT MIN(SALARY) FROM EMPLOYEE;
-- 6. How many employees are there?
SELECT COUNT(*) FROM EMPLOYEE;
-- 7. How many employees are working in each department?
SELECT DEPT_ID,COUNT(*) AS TOTAL_EMPLOYEES FROM EMPLOYEE GROUP BY DEPT_ID;
-- 8.Round each employee’s salary to 2 decimal places.
SELECT EMP_ID, FIRST_NAME, ROUND(SALARY,2) AS ROUNDEDSALARY FROM EMPLOYEE;
-- 9. Remove decimal values from salary.
SELECT TRUNCATE(SALARY,0) FROM EMPLOYEE;
SELECT ROUND(SALARY) FROM EMPLOYEE;
-- 10.Show departments having more than 5 employees.
SELECT DEPT_ID,COUNT(*) FROM EMPLOYEE GROUP BY DEPT_ID HAVING COUNT(*)>5; 
-- 11.Display departments where average salary is greater than 70000.
SELECT AVG(SALARY) FROM EMPLOYEE;
SELECT DEPT_ID,AVG(SALARY) FROM EMPLOYEE GROUP BY DEPT_ID HAVING AVG(SALARY)>70000;
-- 12.Find departments having minimum salary less than 40000.
select dept_id, MIN(SALARY) FROM EMPLOYEE GROUP BY DEPT_ID HAVING MIN(SALARY)<40000;
-- 13. Display the current date.
SELECT CURDATE();
-- 14. Find employees hired after 2020.
SELECT * FROM EMPLOYEE WHERE YEAR(HIRE_DATE)>2020;
-- 15. Find employees hired in the year 2019.
SELECT * FROM EMPLOYEE WHERE YEAR(HIRE_DATE)=2019;
-- 16. Display the number of days between hire date and current date.
SELECT DATEDIFF(CURDATE(),HIRE_DATE) AS DAYS_WORKED FROM EMPLOYEE;