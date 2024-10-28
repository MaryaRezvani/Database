Sp_srvrolepermission 'sysadmin'
sp_dbfixedrolepermission 'db_owner'

Sp_addlogin 'Amin','77' 

Use [Maryam R]
Go
Sp_grantdbaccess 'Amin'

Sp_revokedbaccess 'Amin'
Sp_addsrvrolemember 'Amin' , 'sysadmin'


Sp_addlogin 'Amin','77' 
Sp_grantdbaccess 'MaryaM\Guest'

Sp_dropsrvrolemember 'Amin', 'Dbcreator'
Sp_dropsrvrolemember 'Amin', 'Dbcreator'

Grant create table , backup database , create procedure to Amin
Deny create table , backup database , create procedure to Amin

Grant Select , insert on spec to Amin with Grant option
Grant Update on project(price) to AminGrant execute on addprice Amin Sp_addlogin 'Hamed','1111' Sp_addlogin 'Hamid','2222' Sp_grantdbaccess 'MaryaM\Hamed'Sp_grantdbaccess 'MaryaM\Hamid'Use [Rezvani_Library]
Go
Sp_grantdbaccess 'Hamed'Use [Rezvani_Library]
Go
Sp_grantdbaccess 'Hamid'Grant create table , create procedure to HamidGrant create table  , create procedure to HamedGrant Update,Delete on Members to HamedGrant Update,Delete on Members to HamidGrant Update on Borrower(Borrowed_To,Borrowed_From) to HamidDeny Update on Book(Book_Title) to Hamed
