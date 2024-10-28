
/* Author: Maryam Rezvani */
	   
-- Managment banking System	Project   

CREATE TABLE Customer(
			c_first_name varchar(20) NOT NULL,
			c_last_name varchar(20) NOT NULL,
			c_id varchar(20) PRIMARY KEY, 
			c_acc_number varchar(20) PRIMARY KEY,
			c_phone_number integer,
			c_job varchar(20),
			c_address varchar(100) DEFAULT 'Esfahan',
);

CREATE TABLE Employee(
			e_first_name varchar(20) NOT NULL,
			e_last_name varchar(20) NOT NULL,
			e_type varchar(100), 
			e_salary integer, 
			e_emp_id varchar(20) PRIMARY KEY UNIQUE, 
			e_id varchar(20) PRIMARY KEY UNIQUE, 
			e_start_date varchar(20),
			e_length_of_service integer,
);

CREATE TABLE Loans(
			l_account_no varchar(20) PRIMARY KEY,
			l_type varchar(100), 
			l_amount integer, 
			l_term integer, 
			l_rate integer DEFAULT 6,
			l_cust_id varchar(20),
			l_start_date varchar(20) NOT NULL,
			l_end_date varchar(20) NOT NULL,
);

CREATE TABLE Branch(
			b_id varchar(10) PRIMARY KEY, 
			b_type varchar(100), 
			b_phone_number integer,
			b_manager_id varchar(20) NOT NULL,
			b_location varchar(40) NOT NULL, 
			b_bank_name varchar(20)
);

CREATE TABLE ATM(
			a_id varchar(20) PRIMARY KEY, 
			a_location varchar(20),
			a_cash_amt integer, 
			a_bank_name varchar(20)
);

CREATE TABLE Bank(
			bk_name varchar(20),
			bk_type varchar(20),
			bk_head_office varchar(20), 
			bk_branch_id varchar(20) PRIMARY KEY
);

CREATE TABLE Account(
			ac_balance integer, 
			ac_acc_number varchar(40), 
			ac_overdraft integer, 
			ac_customerid varchar(20) PRIMARY KEY
);

CREATE TABLE Cust_has_account(
			c_name varchar(20),
			customer_id varchar(20),
			acc_num varchar(40),
			c_dob varchar(20),
			c_pan_no varchar(20),
			c_address varchar(100), 
			acc_balance integer,
			card_no varchar(20)
);
CREATE TABLE Acc_Card(
			c_card_no varchar(20) PRIMARY KEY,
			c_card_type varchar(20),
			c_card_limit integer,
			c_card_balance integer,
			c_card_expiry_date varchar(20),
			c_card_issue_date varchar(20),
			c_card_pin integer,
			c_card_cvv integer,
			c_card_status varchar(20),
			c_card_acc_no varchar(20)
);
CREATE TABLE boss(bo_id varchar(20) PRIMARY KEY,
			bo_first_name varchar(20) NOT NULL,
			bo_last_name varchar(20) NOT NULL,
			bo_phone_number varchar(20),
			bo_start_date varchar(20),
			bo_length_of_service integer,
);
--------------------------------------------------
-- Common DML Commands
--------------------------------------------------

INSERT INTO Customer values('Ali','Sadri','001','0001 100 00 10001','12-05-1988','Teacher','Kashan,Esfahan');

INSERT INTO Customer values('Raha','Kiani','002','0001 200 00 10002','02-09-1990', 'Doctor','Kashan,Esfahan');

INSERT INTO Customer values('Nazi','Mahani','003','0001 100 00 10003','09-12-1984',NULL,'Kashan,Esfahan');

INSERT INTO Customer values('Negar','Rasuli','004','0002 200 00 004','31-05-1998','Engineer',',Kashan,Esfahan');

INSERT INTO Customer values('Mahan','Asefi','005','0003 200 00 10005','15-05-1988',NULL,'Kashan,Isfahan');


INSERT INTO Employee values('Ahmad','Samadi','Assistant Vice President',100000,'006','1234567890','2019-01-01', 1);

INSERT INTO Employee values('Alireza','Asadi','Manager',60000,'007','1234567890','2019-01-01', 1);

INSERT INTO Employee values('Arash','Bahrami','Clerk',10000,'008','1234567890','2019-01-01', 1);

INSERT INTO Employee values('Mahsa','Radmehr','Officer',40000,'009','1234567890','2019-01-01', 1);

INSERT INTO Employee values('Neda','Taheri','Clerk',10000,'010','1234567890','2017-01-01', 3);

INSERT INTO Employee values('Yekta','Azizi','Officer',40000,'011','1234567890','021','2019-01-01', 1);

INSERT INTO Employee values('Nima','Mohammadi','Officer',40000,'012','1234567890','2018-01-01', 2);


INSERT INTO Loans values('0001 200 00 10002','Equipment',20000,3,5,'002','2019-01-01', 1);

INSERT INTO Loans values('0001 100 00 10006','House',100000,5,7,'006','2019-01-01', 1);

INSERT INTO Loans values('0005 100 00 10007','Business',200000,7,3,'007','2019-01-01', 1);

INSERT INTO Loans values('0008 200 00 10008','House',200000,3,5,'008','2019-01-01', 1);

INSERT INTO Loans values('0006 200 00 10009','Equipment',35000,3,3,'009','2019-01-01', 1);

INSERT INTO Loans values('0006 100 00 10010','Business',300000,7,7,'010','2019-01-01', 1);

INSERT INTO Loans values('0002 200 00 10011','Business',500000,7,9,'011','2019-01-01', 1);


INSERT INTO Branch values('0001','Urban','12345678','001','Kashan','Tejarat Bank');

INSERT INTO Branch values('0002','Urban','12345678','002','Esfahan','Tejarat Bank');

INSERT INTO Branch values('0003','Urban','12345678','003','Tehran','Melli Bank');

INSERT INTO Branch values('0004','Urban','12345678','004','Qom','Tejarat Bank');

INSERT INTO Branch values('0005','Urban','12345678','005','Tabriz','Tejarat Bank');

INSERT INTO Branch values('0006','Urban','12345678','006','Ahvaz','Tejarat Bank');

INSERT INTO Branch values('0007','Urban','12345678','007','Shiraz','Tejarat Bank');

INSERT INTO Branch values('0008','Urban','12345678','008','Mashhad','Tejarat Bank');

INSERT INTO Branch values('0009','Urban','12345678','009','Arak','Melli Bank');


INSERT INTO Cust_has_account values('Mahan','001','0001 100 00 10001','12-05-1988','AAAAK1234K','Kashan,Esfahan',50000,'1234 5678 9012 3456');

INSERT INTO Cust_has_account values('Nazi','002','0001 200 00 10002','02-09-1990', 'AAAAR1234M','Kashan,Esfahan',100000,'1357 8024 5791 2468');

INSERT INTO Cust_has_account values('Ali','003','0001 100 00 10003','09-12-1984','AAAAN1234M','Kashan,Esfahan',500000,'4321 8765 0912 5933');

INSERT INTO Cust_has_account values('Mahtab','004','0002 200 00 004','31-05-1998','AAAAL1234K','Tehran',7500,'5494 3720 3464 3929');

INSERT INTO Cust_has_account values('Arash','005','0003 200 00 10005','15-05-1988','AAAAM1234K','Tehran',11000,'3456 9464 1299 1938');


INSERT INTO ATM values('A001','Esfahan',1000000, 'Tejarat Bank');

INSERT INTO ATM values('A002','Kashan',500000, 'Tejarat Bank');

INSERT INTO ATM values('A003','Esfahan',10000000, 'Tejarat Bank');

INSERT INTO ATM values('A004','Esfahan',2000000, 'Tejarat Bank');

INSERT INTO ATM values('A005','Kashan',800000, 'Tejarat Bank');

INSERT INTO ATM values('A006','Tehran',750000, 'Tejarat Bank');

INSERT INTO ATM values('A007','Mashhad',5000000, 'Tejarat Bank');

INSERT INTO ATM values('A008','Tabriz',700000, 'Tejarat Bank');

INSERT INTO ATM values('A009','Shiraz',750000, 'Tejarat Bank');


INSERT INTO Bank values('Tejarat Bank','Commercial','Esfahan','0001');

INSERT INTO Bank values('Tejarat Bank','Retail','Esfahan','0002');

INSERT INTO Bank values('Tejarat Bank','Retail','Esfahan','0003');

INSERT INTO Bank values('Tejarat Bank','Commercial','Esfahan','0004');

INSERT INTO Bank values('Tejarat Bank','Commercial','Esfahan','0005');

INSERT INTO Bank values('Tejarat Bank','Retail','Esfahan','0006');

INSERT INTO Bank values('Tejarat Bank','Retail','Esfahan','0007');

INSERT INTO Bank values('Tejarat Bank','Commercial','Esfahan','0008');

INSERT INTO Bank values('Melli Bank','Commercial','Esfahan','0009');


INSERT INTO Account values(50000,'0001 100 00 10001' , 4000, '001');

INSERT INTO Account values(100000,'0001 200 00 10002' , 4000, '002');

INSERT INTO Account values(500000,'0001 100 00 10003' , 4000, '003');

INSERT INTO Account values(7500,'0002 200 00 10004' , 4000, '004');

INSERT INTO Account values(11000,'0003 200 00 10005' , 4000, '005');

INSERT INTO Account values(9000,'0001 100 00 10006' , 4000, '006');

INSERT INTO Account values(800000,'0005 100 00 10007' , 4000, '007');

INSERT INTO Account values(150000,'0008 200 00 10008' , 4000, '008');

INSERT INTO Account values(5000,'0006 200 00 10009' , 4000, '009');

INSERT INTO Account values(55000,'0006 100 00 10010' , 4000, '010');

INSERT INTO Account values(75000,'0002 200 00 10011' , 4000, '011');

INSERT INTO Account values(55000,'0003 100 00 10012' , 4000, '012');

INSERT INTO Account values(6000,'0004 200 00 10013' , 4000, '013');

INSERT INTO Account values(7500,'0007 100 00 10014' , 4000, '014');

INSERT INTO Account values(10000,'0008 100 00 10015' , 4000, '015');

INSERT INTO Account values(100000,'0007 200 00 10016' , 4000, '016');

INSERT INTO Account values(80000,'0003 200 00 10017' , 4000, '017');

INSERT INTO Account values(90000,'0006 100 00 10018' , 4000, '018');

INSERT INTO Account values(1150000,'0001 200 00 10019' , 4000, '019');

INSERT INTO Account values(950000,'0005 100 00 10020' , 4000, '020');

INSERT INTO Account values(850000,'0007 200 00 10021' , 4000, '021');

INSERT INTO Account values(75000,'0002 100 00 10022' , 4000, '022');

INSERT INTO Account values(50000,'0001 100 00 10023' , 4000, '023');


INSERT INTO boss values (
    '123456789', 'Mohsen', 'Amiri',NULL,'2017-01-01', 1
);
INSERT INTO boss values (
    '123456789', 'Mohammad', 'Rezaei','09123456789','2013-01-01', 5
);
INSERT INTO boss values (
    '123456789', 'Mahdi', 'Najafi',NULL,'2017-01-01', 3
);
INSERT INTO boss values (
    '123456789', 'Amir', 'Delavari','0123456789','2019-01-01', 8
);


--------------------------------------------------
-- Common DDL Commands
--------------------------------------------------
ALTER TABLE Customer ADD c_address varchar(100) DEFAULT 'Esfahan';
ALTER TABLE Employee ADD e_address varchar(100) DEFAULT 'Esfahan';
--------------------------------------------------
-- Common DCL Commands
--------------------------------------------------
SELECT * FROM Customer;
SELECT * FROM Employee;
SELECT * FROM Loans;
SELECT * FROM Branch;
SELECT * FROM ATM;
SELECT * FROM Account;
SELECT * FROM boss;
SELECT * FROM Bank;
SELECT * FROM Cust_has_account;
----------------------------------------------------
DROP TABLE Customer;
DROP TABLE Employee;
DROP TABLE boss;
DROP TABLE Loans;
DROP TABLE Branch;
DROP TABLE ATM;
DROP TABLE Bank;
DROP TABLE Account;
DROP TABLE Cust_has_account;
----------------------------------------------------------
select employee.e_name
from employee
where e_salary=60000;
----------------------------------------------------------
/* select all employees of a particular type having salaries>20000*/

select employee.e_type,sum(employee.e_salary)
from employee 
where employee.e_salary > 20000
group by employee.e_type;
------------------------------------------------------------
/*sorts according to job,name */

select c_id,c_first_name, c_job
from Customer
order by c_job,c_first_name;
---------------------------------------------
select bk_name from bank where bk_name not in (select a_bank_name from atm);
------------------------------
select e_name from Employee where e_type = 'Manager' and e_id is NULL;




