select * from employees;

--1--

select * from employees where address like '%Elgin,IL';

--2--

select * from employees where b_date like '197%';

--3--

select * from employees where salary between 60000 and 70000 and dep_id=5;

--4A--

select * from employees order by dep_id;

--4B--

select * from employees order by dep_id desc ,l_name desc;

--5A--

select  dep_id,count(*) as count from employees group by dep_id;

--5B--

select dep_id,count(*) as count,avg(salary) as average_salary from employees group by dep_id;

--5C--

select dep_id,count(*) as num_employees,avg(salary) as avg_salary from employees group by dep_id;

--5D--

select dep_id,count(*) as num_employees,avg(salary) as avg_salary from employees group by dep_id  order by avg_salary;

--5E--

select dep_id,count(*) as num_employees,avg(salary) as avg_salary from employees group by dep_id having count(*) < 4 order by avg_salary;
