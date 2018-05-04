create or replace trigger borrow_status
after insert or delete on borrow
for each row
begin
if inserting then
update book
set book.status = 1
where book.id = :new.book_id;
else
update book
set book.status = 0
where book.id = :old.book_id;
end if;
end;
/
