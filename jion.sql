-- working with jionts
create table Student1(StId int,StName varchar(40),StMail varchar(40),CourseId int);

create table Course(CourseId int,CName varchar(40),CFee decimal(6,2));
select * from Student1
select * from Course

select * from Student1 inner join Course on Student1.CourseId=Course.CourseId

select * from Student1 s left outer join Course c on s.CourseId=c.CourseId
select * from Student1 s right outer join Course c on s.CourseId=c.CourseId
select * from Student1 s full outer join Course c on s.CourseId=c.CourseId
select * from Student1  cross join Course 

--Equi jion
create table test1(SNo int,Name varchar(50))
create table test2(SNo int,Name varchar(50))

select * from test1
select * from test2
select * from test1,test2 where test1.SNo=test2.SNo
select * from test1,test2 where test1.SNo>test2.SNo
select * from test1,test2 where test1.SNo<test2.SNo


