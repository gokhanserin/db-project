-- get me unique job_ids
select distinct JOB_ID
from EMPLOYEES;

-- get me average salary for IT_PROG;
select avg (SALARY) from EMPLOYEES
where JOB_ID='IT_PROG';

-- get me the average salaries of each job_id;
select JOB_ID, avg (SALARY), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID;

-- get me job_ids where their average salary is more than 5k
select JOB_ID, avg ( SALARY) from EMPLOYEES
group by JOB_ID
having avg (SALARY)>5000;

-- this is not the answer of the above question.
select JOB_ID, avg ( SALARY) from EMPLOYEES
where SALARY>5000
group by JOB_ID;