-- get me first_name, last_name, and department name for all employees
select *from EMPLOYEES;
select *from DEPARTMENTS;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where e.DEPARTMENT_ID is null;

-- get me first_name, last_name and department_name, city for all employees
select first_name, last_name, department_name, city
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;

-- get me first_name, last_name and department_name, city, country_name for all employees
select first_name, last_name, department_name, city, country_name
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID
join COUNTRIES c
on c.COUNTRY_ID=l.COUNTRY_ID;