create table Student(Rollno int,Name varchar(10),Branch Varchar(10),CollegeName varchar(max),Age int)

drop table Student

select * from Students

alter table Student add Age int;

alter table Student add Name varchar(20); -- it will not work

insert into Student values(1,'Hari','CSE','KLU University',23);
insert into Student values(2,'Latha','ECE','SRM University',26);
insert into Student values(3,'Sai','Civil','Gitam University',25);
insert into Student values(4,'Chandu','Mech','LPU',28);

truncate table Student -- Deletes only rows

sp_rename  'Student','Students'; -- Renaming the table

update Student set CollegeName='Swarnadhra University' where Rollno=2;

delete from Student where Rollno=1; 