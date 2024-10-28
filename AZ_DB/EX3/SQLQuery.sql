--Create database Maryam R
--ON 
--(name=Maryam R, 
--Filename='C:\Maryam R\data\Maryam R.mdf', 
--Size=10, 
--Maxsize=100, 
--Filegrowth=5) 
--Log on 
--(name=, 
--Filename= 'C:\Maryam R\data\Maryam R.ldf', 
--Size=10, 
--Maxsize=100, 
--Filegrowth=4)

Use [Maryam R]
go 
create table spec
( emp_no int not null, 
fname nvarchar(20) not null,
lname nvarchar(30) not null,
C_id char(20) null,
 mellicode char(10),
birthDate datetime null,
marry bit not null,
course nvarchar(50),
grade nvarchar(20),
phon char(11) null,

 constraint prim_spec primary key(emp_no)) 

Create index idx on spec(lname)

Create table department 
(dept_no int not null,
 Dname nvarchar(20) null,
 Dphon nchar(11) null,
 DAddress nvarchar(60) null,
 Constraint uniq_dept unique (dept_no)) 

create table groupp
(group_no int not null constraint prim_group primary key,
Base_Salary float null,
check (group_no <= 20))

create table project
(proj_no int identity(1201,1) identity(1201,1) not null,
Pname nvarchar(20),
Psubject nvarchar(100),
Price money,
constraint prim_proj primary key(proj_no)) 

create table works
( emp_no int not null identity(1001,1)constraint prim_work primary key,
begin_date datetime null,
end_date datetime null,
account nchar(20) null,
bime_no int null, 
 job nvarchar(50) null,
Overtime float null,
absent float null,
tax float null,
constraint foriegn_work1 foreign key (emp_no)
references spec(emp_no) On delete Cascade
)

create table Datald
( emp_no int not null identity(1001,1) constraint prim_Datald primary key,
group_no int not null,
proj_no int not null identity(1201,3),
dept_no int not null,
constraint fk1_Data foreign key (group_no)
references groupp(group_no) On delete Cascade,
constraint fk2_Data foreign key (proj_no)
references project(proj_no) On delete Cascade,
constraint fk3_Data foreign key (dept_no)
references department(dept_no) On delete Cascade
)
create table child
(
child_no int not null constraint prim_child primary key,
Emp_no int not null,
chname varchar(20) not null,
chbirthdate datetime not null,
constraint fk1_child foreign key (emp_no)
references spec(emp_no) On delete Cascade,
)

create table wife
(
Emp_no int not null constraint prim_wife primary key,
wife_name varchar(20) not null,
wife_lname varchar(20) not null,
constraint fk1_wife foreign key (emp_no)
references spec(emp_no) On delete Cascade,
)
-- Select lname,fname,Emp_no from spec 

-- Select * from spec Where emp_no =1002

--Select * from spec Where emp_no =1002

--Select * from spec , works
--Where spec.emp_no = works.emp_no and works.begin_date >= '2001' 

--Select lname , fname,job from spec,works 
--Where spec.emp_no = works.emp_no and works.job is not null

--Select lname, fname,birthDate from spec,works 
--Where spec.emp_no = works.emp_no and works.job is not null

--Select * from spec Where left(phon , 2 ) ='55'

 
--  Select * from spec Order by lname
--  Select * from spec Order by lname,fname

--Select * from spec left outer Join works
--On spec.emp_no = works.emp_no

--Select * from spec Inner Join works
--On spec.emp_no=works.emp_no


-- Select sum(price) as SumPriec,avg(price) as Average,max(price) as
--Maximom,min(price) as Minimom from projec

Select emp_no, fname, lname, birthDate from spec
Where birthDate <= 1993 or marry is not null

Select * from spec Where right(rtrim(phon),2) ='21'

Select * from spec Order by lname,fname

Select * from spec, works
where spec.emp_no=works.emp_no

Select fname,lname,phon,job,begin_date From spec Inner Join works
on spec.emp_no=works.emp_no
where phon like '55%'

Select fname,lname,job,begin_date Into Spwk From spec Inner Join works
on spec.emp_no=works.emp_no
Select * from Spwk

 Select sum(price) as SumPriec from project
 where count(price) > 10000000

 -- 1402/02/09 --
Insert Into spec
Values (1007,'ali','alizadeh',1451,1250772896,'','','','','')

select *from spec

Insert Into spec(fname,lname,emp_no,c_id,marry)
Values ('hasan','moradi',1008,127,'true')

Create table list
(Eno int not null constraint pklist primary key ,
firstName nchar(20),
Lastname nchar(25),
mellicode nchar(10),
Begin_date datetime)
Go
Insert into list(Eno,firstname,lastname,mellicode) Select
emp_no,fname,lname,mellicode from spec

select *from list

Create table list2
(Eno int not null constraint pkl2 primary key,
fName nchar(20),
Lname nchar(25),
job nchar(20),
b_date datetime)

Insert into list2(Eno,fName,Lname,job,b_date) select spec.emp_no,fname,lname,job,begin_date from spec,works
where spec.emp_no=works.emp_no

select * from list2

Update List

Set list.begin_date =(select begin_date from works where list.Eno=works.emp_no)
Where Eno!= 1002 

select * from list


