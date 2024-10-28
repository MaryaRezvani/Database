--Create database db_Resturant
--ON 
--(name=db_Resturant_dat, 
--Filename='C:\Resturant\data\db_Resturant.mdf', 
--Size=10, 
--Maxsize=100, 
--Filegrowth=5) 
--Log on 
--(name=db_Resturant_log, 
--Filename= 'C:\Resturant\data\db_Resturant.ldf', 
--Size=8, 
--Maxsize=100, 
--Filegrowth=4)

--Use db_Resturant
--go
Create table Resturant(
	Res_Name varchar(50) not null,
	Res_ID int not null constraint pk_Resturant primary key,
	Res_City varchar(20) not null,
	Res_Address varchar(50) not null,
	Res_Num_of_Emp int not null,
	Res_Phone char(11) not null,
	)
Create table Branches(
	B_Name varchar(30) not null,
	B_ID int not null constraint pk_Branch primary key,
	B_Address varchar(50) null,
	B_Phone char(11) not null,
	B_City varchar(20) not null,
	B_Num_of_Emp int not null,
	B_Num int not null,
	B_StartDate int null,
	Res_ID int,
	constraint fk_Branches foreign key (Res_ID)
	references Resturant(Res_ID) On delete Cascade,
	)
Create table Manager(
	Mng_fname varchar(20) not null,
	Mng_lname varchar(30) not null,
	Mng_ID int not null constraint pk_Manager primary key,
	Mng_Salary float not null,
	Mng_Gender char(4) not null,
	Mng_Address varchar(50) null,
	Mng_Phone char(11) not null,
	Mng_Age int null,
	Mng_Birth Datetime null,
	R_id int,
	constraint fk_Manager1 foreign key (R_id)
	references Resturant(Res_ID) On delete Cascade,
	)
Create table Cheff(
	Ch_fname varchar(20) not null,
	Ch_lname varchar(30) not null,
	Ch_ID int not null constraint pk_Cheff primary key,
	Ch_Address varchar(50) null,
	Ch_Age int null,
	Ch_Salary float not null,
	Ch_Gender char(4) not null,
	Ch_Birth Datetime null,
	Ch_Phone char(11) not null,
	Res_ID int ,
	constraint fk_Cheff foreign key (Res_ID)
	references Resturant(Res_ID) On delete Cascade,
	)



Create table Employee(
	Emp_fname varchar(20) not null,
	Emp_lname varchar(30) not null,
	Emp_ID int not null constraint pk_Employee primary key,
	Emp_Gender char(4) not null,
	Emp_Age int null,
	Emp_Phone char(11) not null,
	Emp_Address varchar(50) null,
	Emp_Birth Datetime null,
	Emp_Salary float not null,
	Res_ID int not null,
	B_ID int not null,
	constraint fk_Employee1 foreign key (Res_ID)
	references Resturant(Res_ID) On UPDATE  Cascade,
	constraint fk_Employee2 foreign key (B_ID)
	references Branches(B_ID) On delete Cascade,
	)

Create table Customer(
	Cust_fname varchar(20) not null,
	Cust_lname varchar(30) not null,
	Cust_ID int not null constraint pk_Customer primary key,
	Cust_Type varchar(20) not null,
	Cust_BillNo int not null,
	Cust_Phone char(11) not null,
	Cust_Address varchar(50) null,
	Cust_OrdNo int not null,
	Cust_Price float not null,
	Res_id int ,
	constraint fk_Customer1 foreign key (Res_id)
	references Resturant(Res_ID) On delete Cascade,

	)

Create table Menu(
	Menu_FoodName varchar(20) not null,
	Menu_Type varchar(20) not null constraint pk_Menu primary key,
	Menu_Price float not null,
	branch_id int,
	Res_id int,
	constraint fk_Menu1 foreign key (Res_id)
	references Resturant(Res_ID) On delete Cascade,
	constraint fk_Menu2 foreign key (branch_id)
	references Branches(B_ID) On Update Cascade,
	)
Create table Bill(
	Bill_ID int not null constraint pk_Bill primary key,
	Bill_PayDate Datetime not null,
	Bill_FoodName varchar(30) not null,
	Bill_Time time not null,
	Cust_ID int not null,
	Res_id int,
	branch_id int,
	constraint fk_Bill1 foreign key (Cust_ID)
	references Customer(Cust_ID) On delete Cascade,
)

Create table Order_Custom(
	Ord_ID varchar(20) not null,
	Ord_Date Datetime not null,
	Ord_BillNo int not null,
	Ord_Type varchar(20) not null,
	Cust_ID int not null,
	Ord_Price float not null,
	constraint fk_Order1 foreign key (Ord_BillNo)
	references Bill(Bill_ID) On delete Cascade,
	--constraint fk_Order2 foreign key (Ord_Price)
	--references Customer(Cust_Price) On delete Cascade,
	)







	





