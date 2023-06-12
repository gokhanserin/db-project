/*
create table syntax:
create table TableName(
colName1 DataType Constraints,
colName2 DataType Constraints(optional)
colName3 DataType Constraints,
...
);
*/
CREATE TABLE ScrumTeam(
    Emp_ID Integer PRIMARY KEY,
    FirstName varchar(30) not null,
    LastName varchar(30),
    JobTitle varchar(20)
);

select * from ScrumTeam;

/*
INSERT INTO tableName (column1, column2,...)
VALUES (value1, value2 ... );
*/
INSERT INTO ScrumTeam(emp_id, firstname, lastname, jobtitle)
VALUES (1,'Severus','Snape','Tester');

INSERT INTO ScrumTeam VALUES (2,'Harold','Finch','Developer');

INSERT INTO ScrumTeam VALUES (3,'John','Kerry','ScrumMaster');

INSERT INTO ScrumTeam VALUES (4,'Amelia','Kurtin','PO');


--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , ...
WHERE condition;
*/
UPDATE SCRUMTEAM
SET JOBTITLE='TESTER'
WHERE Emp_ID=4;


--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/
DELETE FROM SCRUMTEAM
WHERE Emp_ID=3;

--SAVING CHANGES
COMMIT;
