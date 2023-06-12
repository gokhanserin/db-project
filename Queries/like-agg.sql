-- get me all info who is working as IT_PROG or SA_REP
select * from employees
where job_id in('IT_PROG', 'SA_REP');

-- how many of employee working as IT_PROG or SA_REP
select count(*) from employees
where job_id in('IT_PROG', 'SA_REP');

-- how many employees making more than 8000
select count(*) from employees
where SALARY>8000;

-- how many unique first names we have?
select count (distinct FIRST_NAME) from EMPLOYEES;

-- get me all employees information based on who is making more salary to low salary
select * from EMPLOYEES
order by SALARY desc ;

-- get me all employees information order by alphabetical based on first name
select *
from EMPLOYEES
order by FIRST_NAME asc ;
-- NOTE: default order is asc if you do not specify after column name

-- get me all employees whose first name starts with C
select * from EMPLOYEES
where FIRST_NAME like 'D%';

-- get me 5 letters first names where the middle character is z
select * from EMPLOYEES
where FIRST_NAME like '__z__';

-- get me first name where second char is u;
select * from EMPLOYEES
where FIRST_NAME like '_u%';

-- find me min salary;
select min (SALARY) from EMPLOYEES;

-- find me max salary;
select max (SALARY) from EMPLOYEES;

-- find me average salary;
select avg (SALARY) from EMPLOYEES;

-- find me rounded average salary;
select round(avg (SALARY),2)  from EMPLOYEES;

-- find the sum of salary
select sum (SALARY) from EMPLOYEES;

