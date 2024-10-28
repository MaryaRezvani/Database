use database [Maryam R]
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





