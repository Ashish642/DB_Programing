-- Self jion
create table Emp11(EId int,EName varchar(40),Salary money,MId int);
select * from Emp11 where Salary=8000;
select * from Emp11 E1,Emp11 E2 where E1.Salary=E2.Salary And E2.EName='Smith';
select E1.EId,E1.EName,E1.Salary from Emp11 E1,Emp11 E2 where E1.Salary=E2.Salary And E2.EName='Smith';

--Multiple jion
create table students(id int, name varchar(50),branch varchar(50));
insert into students values(1,'anurag','cse',2,'harsh','ece',3,'sumit','ece',4,'kae','cse');

create table marks(id int, marks int);

insert into marks values(1,95,2,85,3,80,4,65);

create table attendance(id int,attendance int);

insert into attendance values(1,75,2,65,3,80,4,80);
select * from students;
select * from marks;
select * from attendance;

select s.id, name, marks, attendance
from students as s
inner join
marks as m
on s.id=m.id
inner join
attendance as a
on m.id=a.id
where a.attendance>=75;