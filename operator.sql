--Working with Set operators
create table Emp_Hyd(EId int,EName varchar(20), Salary money);
create table Emp_Che(EId int,EName varchar(20), Salary money);
Select * from Emp_Hyd
Union
Select * from Emp_Che;
-- condition:1 No. of column should be same both select ststement
Select EId, EName from Emp_Hyd
Union
Select EId, EName from Emp_Che;

--order of column should be same
Select EId,EName  from Emp_Hyd
Union
Select EId, EName from Emp_Che;

-- condition:3 Datatype of column must be match.
Select EId from Emp_Hyd
Union
Select  EId from Emp_Che;

-- unionall operator
Select * from Emp_Hyd
union all
Select  * from Emp_Che;

--intersect operator
Select * from Emp_Hyd
intersect
Select  * from Emp_Che;

--Except op
Select * from Emp_Hyd Except Select  * from Emp_Che;
select * from Emp_Che Except Select * from Emp_Hyd;

-- working with primary key & foriegn key constaint:
--Stept1:
create table Department(DNo int Primary key, DName varchar(40), DLocation varchar(40)); --Parent table
--Step2:
insert Department values(10,'DBA','Alla'),(20,'SAP','VARA'),(30,'HR','PRA')
-- step3
create table Postion(PId int,PName varchar(40),PSalary money,
DNo int foreign key REFERENCES Department(DNo));

--Test
insert Postion values(101,'Adam',80000,10);
insert Postion values(102,'James',70000,20);
insert Postion values(103,'Scott',60000,30);

select * from Department;
select * from Postion;