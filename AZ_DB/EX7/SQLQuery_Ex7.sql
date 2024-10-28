-- +1 Exercise --

Select Borrower_Id,Borrower.Book_Id,Book_Title,Members.Member_id,Member_Name,Borrowed_From,Borrowed_To,Actual_Return_Date into #DelayList
from Borrower,Book,Personal,Members
Where Borrower.Book_Id=Book.ISBN_Code and Borrower.Staff_id=Personal.Staff_Id and Borrower.Member_id=Members.Member_id

Select * from #DelayList

-----------------------------------------------

ALTER Table #DelayList
Add Pay As (DATEDIFF(MONTH,Borrowed_From,Actual_Return_Date) -1)* 10000
Select * from #DelayList

