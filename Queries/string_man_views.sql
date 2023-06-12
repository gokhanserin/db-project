-- how can we rename the column that we displayed
select FIRST_NAME as "given_name", LAST_NAME as surname
from EMPLOYEES;

-- text functions. string mani.
-- java first_name+""+last_name
-- in SQL concat is ||
select FIRST_NAME||' '||LAST_NAME as "full_name"
from EMPLOYEES;

-- Task
-- add @gmail.com and name new column to full-email
select EMAIL||'@gmail.com' as "full_email" from EMPLOYEES;

-- making all lowercase
select lower(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

-- making all uppercase
select upper(EMAIL||'@gmail.com') as "full_email" from EMPLOYEES;

-- length(value)
select FIRST_NAME, length(FIRST_NAME) as "length_name"
from EMPLOYEES
order by "length_name" desc ;

-- substr (colName,begIndex,NumberOfChar)
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials"
from EMPLOYEES;

--combine three features we created
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
FIRST_NAME||' '||LAST_NAME as "full_name",
EMAIL||'@gmail.com' as "full_email"
from EMPLOYEES;

-- VIEW
CREATE VIEW Emaillist_Gokhan as select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
FIRST_NAME||' '||LAST_NAME as "full_name",
EMAIL||'@gmail.com' as "full_email"
from EMPLOYEES;

SELECT "full_name" FROM EMAILLIST_GOKHAN;

-- TO REMOVE VIEW
drop view EMAILLIST_GOKHAN;
