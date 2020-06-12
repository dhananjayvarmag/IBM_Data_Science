--1. We should not use aggregate functions in the column list.--

select  emp_id, salary, avg(salary) as avg_salary from employees;

--2. So, we use the below expression for the above purpose.--

select emp_id, salary, (select avg(salary) from employees) as avg_salary from employees;

--3. With sub-queries.--

select * from employees where dep_id in (select dept_id_dep from departments);

--4. Implicit join of two tables.--

select * from employees, departments;

--5. Using additional operands to limit the result.--

select * from employees , departments where employees.dep_id = departments.dept_id_dep;