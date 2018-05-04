create or replace procedure Changebookid(id_old in char,id_new in char) is
begin
          
          update book set book.id = id_new where book.id = id_old;
          update borrow set book_id = id_new where book_id = id_old;
          
end Changebookid;
/
