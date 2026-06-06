USE APRILPYTHON;
CREATE TABLE DEPARTMENT (
    DEPT_ID INT PRIMARY KEY,
    DEPT_NAME VARCHAR(50) NOT NULL,
    LOCATION VARCHAR(50) NOT NULL
);

INSERT INTO DEPARTMENT (DEPT_ID, DEPT_NAME, LOCATION) VALUES
(1, 'Human Resources', 'New York'),
(2, 'Finance', 'Chicago'),
(3, 'IT', 'San Francisco'),
(4, 'Marketing', 'Los Angeles'),
(5, 'Sales', 'Houston'),
(6, 'Operations', 'Dallas'),
(7, 'Customer Support', 'Miami'),
(8, 'Research', 'Boston'),
(9, 'Legal', 'Washington'),
(10, 'Procurement', 'Seattle'),
(11, 'Administration', 'Denver'),
(12, 'Quality Assurance', 'Atlanta'),
(13, 'Logistics', 'Phoenix'),
(14, 'Security', 'Detroit'),
(15, 'Public Relations', 'Philadelphia');


CREATE TABLE EMPLOYEE (
    EMP_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50) NOT NULL,
    LAST_NAME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(100) UNIQUE,
    PHONE VARCHAR(15),
    HIRE_DATE DATE,
    SALARY DECIMAL(10,2),
    DEPT_ID INT,
    FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENT(DEPT_ID)
);

INSERT INTO EMPLOYEE (EMP_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE, HIRE_DATE, SALARY, DEPT_ID) VALUES
(101, 'John', 'Smith', 'john.smith@email.com', '1234567890', '2020-01-15', 60000, 1),
(102, 'Emma', 'Johnson', 'emma.johnson@email.com', '1234567891', '2019-03-22', 75000, 2),
(103, 'Michael', 'Brown', 'michael.brown@email.com', '1234567892', '2021-07-10', 80000, 3),
(104, 'Olivia', 'Davis', 'olivia.davis@email.com', '1234567893', '2018-11-05', 72000, 4),
(105, 'William', 'Miller', 'william.miller@email.com', '1234567894', '2022-02-18', 68000, 5),
(106, 'Sophia', 'Wilson', 'sophia.wilson@email.com', '1234567895', '2020-06-30', 71000, 6),
(107, 'James', 'Moore', 'james.moore@email.com', '1234567896', '2017-09-12', 90000, 3),
(108, 'Isabella', 'Taylor', 'isabella.taylor@email.com', '1234567897', '2021-04-25', 65000, 7),
(109, 'Benjamin', 'Anderson', 'ben.anderson@email.com', '1234567898', '2019-12-14', 77000, 8),
(110, 'Mia', 'Thomas', 'mia.thomas@email.com', '1234567899', '2023-01-08', 62000, 9),
(111, 'Lucas', 'Jackson', 'lucas.jackson@email.com', '1234567800', '2016-08-19', 95000, 10),
(112, 'Charlotte', 'White', 'charlotte.white@email.com', '1234567801', '2018-05-27', 73000, 11),
(113, 'Henry', 'Harris', 'henry.harris@email.com', '1234567802', '2022-09-03', 69000, 12),
(114, 'Amelia', 'Martin', 'amelia.martin@email.com', '1234567803', '2020-10-16', 71000, 13),
(115, 'Alexander', 'Thompson', 'alex.thompson@email.com', '1234567804', '2019-07-21', 88000, 14);

SELECT * FROM EMPLOYEE;
SELECT * FROM DEPARTMENT;

-- Questions on Employee and Department Table:
-- 1)Display employees who work in department 3 (IT).
select * from employee where dept_id=3;

-- 2)Find employees with salary greater than 70,000 AND working in department 3.
select * from employee where salary>70000 AND dept_id=3;

-- 3)Find employees working in department 1 OR department 2.
select * from employee where dept_id=1 OR dept_id=2;

-- 4)Display employees with salary between 70,000 and 80,000.
select * from employee where salary between 70000 AND 80000;

-- 5)Find employees whose first name starts with 'A'.
select * from employee where first_name Like 'A%';

-- 6)Find employees working in departments 3, 5, and 7.
select * from employee where dept_id In (3,5,7);

-- 7)Display employees ordered by salary in descending order.
select salary from employee order by salary DESC;

-- 8)Find the total salary paid in each department.
select dept_id, sum(salary) AS TotalSalary from employee 
group by dept_id;

-- 9)Display employee salary after adding a bonus of 5000.
select dept_id , salary, salary+5000 AS SalaryBonus from employee;

-- 10)Display salary after deducting 2000 from each employee.
select dept_id, salary, salary-2000 AS ReducingSalary from employee;

-- 11)Insert a new department "Training" located in "San Diego".
Insert into DEPARTMENT (dept_name,dept_location)values("Training","San Diego");
-- Ans: Record is not inserted because dept_id not given.

-- 12)Change location of department 5 to "Austin".
Update DEPARTMENT SET location="Austin" where dept_id=5;

-- 13)5th maximum salary in the employees table
SELECT Salary FROM Employee ORDER BY Salary DESC
LIMIT 4, 1;

-- 14)4th minimum salary in the employees table
SELECT Salary FROM Employee ORDER BY Salary ASC
LIMIT 3, 1;

-- 15)Write a query to get 3 maximum salaries
select * from employee order by salary desc limit 3;

-- 16)Write a query to get 3 minimum salaries
select * from employee order by salary ASC limit 3;

-- 17)difference Between The Highest And Lowest Salaries
select max(salary)-min(salary) from employee;

-- 18)Write a query to calculate 171*214+625
select 171*214+625;

-- 19)nameStartFrom S in employee table.
select first_name from employee where first_name LIKE 'S%';

-- 20)name Ends From A
select first_name from employee where first_name LIKE '%A';

-- 21)name Contains 'so'
select first_name from employee where first_name LIKE '%SO%';

-- 22)name Start From G And End From U
select first_name from employee where first_name LIKE 'G%U';

-- 23)even numbered records from employees table
select * From employee where emp_id%2=0;

-- 24)Increase salary of employee John (EMP_ID = 101) to 75000.
update employee set salary=salary+75000 where emp_id=1;

-- 25)Add a column DESIGNATION to EMPLOYEE table.
alter table employee ADD designation varchar(20);

-- 26)Remove DESIGNATION column from EMPLOYEE table.
alter table employee drop designation;