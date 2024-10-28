use  Rezvani_Library



create view view_Blist
as
select publish_Name,p_phone,p_address,ISBN_Code,Book_Title,Book_Date from Publish,Book 
where Book.publish_Id=Publish.publish_id and DATEDIFF(YEAR,Book_Date,GETDATE()) <= 1

select * from view_Blist
drop view view_Blist
---------------------------------------
-- Ex7-2 ---
Select ISBN_Code,Book.Book_Title,Members.Member_id,Member_Name,Personal.Staff_Id,Staff_Name,Borrowed_From,Actual_Return_Date Into
#Borrow_Member_Personal From Book,Members,Personal,Borrower
where Borrower.Book_id = Book.ISBN_Code and Members.Member_id = Borrower.Member_id and Personal.Staff_Id=Borrower.Staff_id 

select * from #Borrow_Member_Personal


















