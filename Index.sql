select * from Emp2
create Index IX_Emp2_salary
on Emp2 (salary asc)

sp_helpindex Emp2
drop index Emp2.IX_Emp2_salary

create table tbl_Emp(Id int primary key, Name varchar(50),Salary int, Gen varchar(10),
city varchar(50))
Execute sp_helpindex tbl_Emp
insert into tbl_Emp Values(3,'Johan',4500,'Male','New York')
insert into tbl_Emp Values(1,'Sam',2500,'Male','London')
insert into tbl_Emp Values(4,'Sara',5500,'Female','Tokyo')
insert into tbl_Emp Values(5,'Todd',3100,'Male','Toronto')
insert into tbl_Emp Values(2,'Pam',6500,'Female','Sydeny')
select * from tbl_Emp

create clustered index IX_tbl_Emp_Gen_Salary
on tbl_Emp(Gen desc, Salary asc)

