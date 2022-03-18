select * from Emp2

create view v1 as select * from Emp2;
select * from v1
select * from Emp2

-- Testing
insert v1 values(106,'Smith',64000)
update v1 set salary=11000 where EId=103

--Complex view
create table Emp_All(Eid int, EName varchar(40),Sal money)
create table Emp_Vara(Eid int, EName varchar(40),Sal money)
select * from Emp_All;
select * from Emp_Vara;
create view cvi as
select * from Emp_All
union
select * from Emp_Vara
select * from cvi

Testing:
insert into cvi values(107,'Soonu',67000)

-- means that it not support DML command