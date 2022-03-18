-- scalar function
create table Emp2(EId int, EName varchar(40), salary money);
create function F_grsal(@EId int)
RETURN
as
Begin
declare @Basic money,@Hra money,@Da money,@Pf money, @Gross money
select @Basic=salary from Emp2 Where EId=@EId
set @Hra=@Basic*0.1
set @Da=@Basic*0.2
set @Pf=@Basic*0.1
set @Gross=@Basic+@Hra+@Da+@Pf
RETURN @Gross
End


---table valued function
create table Emp4(EId int,EName varchar(40),Sal money, DNo int);
create function tvf1(@DNo int)
Return table
As
Return(select * from Emp4 where DNo=@DNo)

--Raking fuction
create table Emp5(EId int,EName varchar(50),salary money,DeptNo int)
select * from Emp5;
-- Row_Number()
select EName,salary,row_number() over(order by salary desc)as Rank from Emp5;
--Rank()
select EName,salary,Rank() over(order by salary asc)as Rank from Emp5;
--Dense Rank()
select EName,salary,DENSE_RANK() over(order by salary desc)as Rank from Emp5
select * from Emp5;
--By partition name
select EName,DeptNo,salary,row_number() over(partition by DeptNo order by salary desc) as 
rank from Emp5
select EName,DeptNo,salary,rank() over(partition by DeptNo order by salary desc) 
as rank from Emp5
select EName,DeptNo,salary,DENSE_RANK() over(partition by DeptNo order by salary desc) 
as rank from Emp5

------------------------------------------------------------------------------------------
--Stored procedure
use Myclass
Go
create procedure proc_allEmployeeDetails
As
Begin
     select * from Employee;
	 end;
Go
Execute proc_allEmployeeDetails;

-- Parameterized store procedure
use Myclass;
Go
create procedure
pro_EmployeeDetailsLocationWise(@location as varchar(100))
As
Begin
    select * from Employee e inner join Department d
	on e.empId = d.DNo
	Where d.DLocation = @location
	end;
	Go
	 select * from Employee e inner join Department d
	on e.empId = d.DNo
	Where d.DLocation = 'Faiza';
	exec pro_EmployeeDetailsLocationWise @location='Fiza'
	select * from Employee
	select * from Department