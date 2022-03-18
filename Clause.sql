-- classes
create database Classes
use Classes;
create table Emp(EmpNo int,EmpName varchar(50),EmpJob varchar(50),EmpHireDate bigint,EmpSal int,EmpDept varchar(50));
select EmpJob,count(*) NumofEmp from Emp group by EmpJob;
select EmpJob,sum(Empsal)from Emp group by EmpJob;
select EmpJob,max(Empsal)maxsal,min(Empsal)minsal,avg(Empsal)avgsal from Emp group by EmpJob;

select EmpJob,count(*)NumofEmployee,EmpDept from Emp group by EmpJob,EmpDept;
select EmpJob,count(*) NumofEmp from Emp group by EmpJob having count(*)<3;
select EmpJob,count(*) NumofEmp from Emp group by EmpJob having count(*)>1;
select EmpJob,sum(Empsal) NumofEmp from Emp group by EmpJob having sum(Empsal)>100000;
