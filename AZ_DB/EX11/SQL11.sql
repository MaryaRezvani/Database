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
Grant Update on project(price) to Amin
Go
Sp_grantdbaccess 'Hamed'
Go
Sp_grantdbaccess 'Hamid'