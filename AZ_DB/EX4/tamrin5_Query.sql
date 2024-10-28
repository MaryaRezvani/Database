Use Rezvani_Library
go
--Ex6
Insert Into Book
Values (1003,'Parallel Worlds',74000,'Michio kaku','2005/04/23','Parallel Worlds','Ava Name',4)
select * from Book
-----
Insert Into Employee 
Values ('Mina','Hasani','2001','','','1380/06/12')
select * from Employee
-----
Insert Into member
Values ('Mahsa','Alidoost',null,302,6040,'02165398354','','1376/03/18','')
select * from member
----
--EX7
--table: borrow,book,member,emplooyee
--coulumn: borrow_id,date_borrowed,book_id,book_name,mem_id,mem_fname,mem_lname,emp_code,emp_fname,emp_lname
Create table Borr_Mem_Per(
borrow_id int not null,
date_borrowed char(10),
book_id int,
book_name varchar(30),
mem_id int not null,
mem_fname varchar(50),
mem_lname varchar(50),
emp_code char(10),
emp_fname varchar(50),
emp_lname varchar(50)
)
GO
Insert into Borr_Mem_Per(borrow_id,date_borrowed,book_id,book_name,mem_id,mem_fname,mem_lname,emp_code,emp_fname,emp_lname) Select 
borrowing_id,date_borrowed,Borrow.book_id,book_name,Borrow.mem_id,mem_fname, mem_lname, emp_code, emp_fname, emp_lname from Borrow inner join Book
on Borrow.book_id = Book.book_id,member,employee where Borrow.mem_id = member.mem_id and Employee.emp_code=Borrow.emp_id

Select *from Borr_Mem_Per



)

