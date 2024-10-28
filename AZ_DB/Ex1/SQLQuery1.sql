Select * from Book

Select book_name,book_id,book_author,book_publisher,book_title from Book
where book_title like 'DB'

Select mem_fname,mem_lname,date_borrowed,date_return, book_name from member inner join borrow  
on member.mem_id=borrow.mem_id left outer join book on Book.book_id =borrow.book_id



 
 