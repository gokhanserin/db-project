select *from DEVELOPERS
    union
select *from TESTERS;

select *from DEVELOPERS
union all
select *from TESTERS;

select names from DEVELOPERS
union
select names from TESTERS;

select names from DEVELOPERS
minus
select names from TESTERS;

select names from DEVELOPERS
intersect
select names from TESTERS;

-- how to find duplicate names in employees table
select FIRST_NAME, count(*) from EMPLOYEES
group by FIRST_NAME
having count(*) >1;