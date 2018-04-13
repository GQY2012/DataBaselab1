CREATE table book(
  id char(8) PRIMARY KEY,
  name varchar2(20) not null,
  author varchar(10),
  price number,
  status number default 0
  );
  
create table reader(
  id char(8) primary key,
  name varchar2(10),
  age int,
  address varchar2(20)
  );
  
create table borrow(
book_id char(8) ,
reader_id char(8),
borrow_date date,
return_date date,
primary key(book_id,reader_id),
constraint book_idfk foreign key (book_id) references book(id),
constraint reader_idfk foreign key (reader_id) references reader(id)
);


insert all into book(id,
                 name,
                 author,
                 price,
                 status) 
                 values('00000001','Oracle PL/SQL','author1','99','0') 
       into book values('00000002','Oracle Java','author2','10','1') 
       into book values('00000003','Oracle Business','Ullman','121','0')
       into book values('00000004','book4','author4','109','0') 
       into book values('00000005','book5','author5','49','0')
       into book values('00000006','book5','author5','49','1')
       into book values('00000007','book7','author7','35','0')
       into book values('00000008','Expert Oracle)','Ullman','79','1') 
       into book values('00000009','book9','Ullman','21','0')
       into book values('00000010','book9','Ullman','21','0')
       into book values('00000011','book9','Ullman','21','0')
       into book values('00000012','book12','author12','51','0')
       into book values('00000013','book13','author13','69','0')
       into book values('00000014','book14','author14','78','0')
       into book values('00000015','book15','author15','28','0')
       into book values('00000016','book16','author16','5','1')
       into book values('00000017','book17','author17','19','0')
       select 1 from dual;       
       

insert into reader(id,
                   name,
                   age,
                   address)
                  select * from (
                  select '10000001','reader1','18','address1' from dual 
                  union
                  select '10000002','Rose','28','address2' from dual
                  union
                  select '10000003','mary','48','address3' from dual
                  union
                  select '10000004','reader4','16','address4' from dual
                  union
                  select '10000005','reader5','21','address5' from dual
                  union
                  select '10000006','reader6','32','address6' from dual
                  union
                  select '10000007','reader7','22','address7' from dual
                   union
                  select '10000008','reader8','21','address8' from dual
                   union
                  select '10000009','reader9','20','address9' from dual
                   union
                  select '10000010','reader10','33','address10' from dual
                   union
                  select '10000011','reader11','19','address11' from dual
                   union
                  select '10000012','reader12','15','address12' from dual
                   union
                  select '10000013','reader13','41','address13' from dual
                  );


insert into borrow(book_id,
                    reader_id,
                    borrow_date,
                    return_date)
                  select * from (
                  select '00000001','10000006',to_date ( '2017-12-20 18:31:34' , 'YYYY-MM-DD HH24:MI:SS' ),to_date ( '2018-1-20 18:31:34' , 'YYYY-MM-DD HH24:MI:SS' ) from dual 
                  union
                  select '00000002','10000002',to_date ( '2017-12-21 15:21:14' , 'YYYY-MM-DD HH24:MI:SS' ),null from dual
                  union
                  select '00000001','10000003',to_date ( '2018-2-21 15:21:14' , 'YYYY-MM-DD HH24:MI:SS' ),to_date ( '2018-3-21 15:21:56' , 'YYYY-MM-DD HH24:MI:SS')  from dual
                  union
                  select '00000003','10000003',to_date ( '2018-2-21 15:21:14' , 'YYYY-MM-DD HH24:MI:SS' ),to_date ( '2018-3-21 15:21:56' , 'YYYY-MM-DD HH24:MI:SS')  from dual
                  union
                  select '00000003','10000002',to_date ( '2017-12-21 15:21:56' , 'YYYY-MM-DD HH24:MI:SS' ),to_date ( '2018-2-21 15:21:56' , 'YYYY-MM-DD HH24:MI:SS' ) from dual
                  union
                  select '00000005','10000002',to_date ( '2017-12-31 10:24:35' , 'YYYY-MM-DD HH24:MI:SS' ),to_date ( '2018-2-25 18:31:34' , 'YYYY-MM-DD HH24:MI:SS' ) from dual
                  union
                  select '00000006','10000002',to_date ( '2018-3-20 12:13:24' , 'YYYY-MM-DD HH24:MI:SS' ),null from dual
                  union
                  select '00000008','10000003',to_date ( '2017-12-20 18:24:59' , 'YYYY-MM-DD HH24:MI:SS' ),null from dual
                  union
                  select '00000011','10000003',to_date ( '2017-12-25 12:21:14' , 'YYYY-MM-DD HH24:MI:SS' ),to_date ( '2018-1-10 14:31:34' , 'YYYY-MM-DD HH24:MI:SS' ) from dual
                  union
                  select '00000015','10000013',to_date ( '2017-11-2 18:31:12' , 'YYYY-MM-DD HH24:MI:SS' ),null from dual
                  union
                  select '00000011','10000004',to_date ( '2017-1-20 8:11:34' , 'YYYY-MM-DD HH24:MI:SS' ),to_date ( '2018-2-15 10:11:12' , 'YYYY-MM-DD HH24:MI:SS' ) from dual
                  union
                  select '00000012','10000007',to_date ( '2017-1-20 8:11:34' , 'YYYY-MM-DD HH24:MI:SS' ),to_date ( '2018-2-15 10:11:12' , 'YYYY-MM-DD HH24:MI:SS' ) from dual
                  union
                  select '00000007','10000011',to_date ( '2017-1-20 8:11:34' , 'YYYY-MM-DD HH24:MI:SS' ),to_date ( '2018-2-15 10:11:12' , 'YYYY-MM-DD HH24:MI:SS' ) from dual
                  union 
                  select '00000005','10000009',to_date ( '2017-1-20 8:11:34' , 'YYYY-MM-DD HH24:MI:SS' ),to_date ( '2018-2-15 10:11:12' , 'YYYY-MM-DD HH24:MI:SS' ) from dual
                  );



--实体完整性
insert into book(id,
                 name,
                 author,
                 price,
                 status) 
                 values('00000001','book0','author0','11','0');
                 


--参照完整性
insert into borrow(book_id,
                    reader_id,
                    borrow_date,
                    return_date)
                  values('00000000','00000000',to_date ( '2017-12-25 12:21:14' , 'YYYY-MM-DD HH24:MI:SS' ),to_date ( '2018-1-10 14:31:34' , 'YYYY-MM-DD HH24:MI:SS' ) ); 
                  
--用户自定义完整性
insert into book(id,
                 name,
                 author,
                 price,
                 status) 
                 values('00000000',null,'author0','11','0');
--检索读者 Rose 的读者号和地址；                  
select id,address
from reader
where name = 'Rose';
-- 检索读者 Rose 所借阅读书（包括已还和未还图书）的图书名和借期； 
select book.name,return_date
from reader inner join borrow on reader_id = reader.id inner join book on book_id = book.id
where reader.name = 'Rose';
--检索未借阅图书的读者姓名； 
select reader.name
from reader
where reader.name not in(select reader.name
          from reader inner join borrow on reader_id = reader.id);
--检索 Ullman 所写的书的书名和单价
select name,price
from book
where author = 'Ullman';
--检索读者“Rose”借阅未还的图书的图书号和书名   
select book.id,book.name
from reader inner join borrow on reader_id = reader.id inner join book on book_id = book.id
where return_date is null and reader.name = 'Rose';
--检索借阅图书数目超过 3 本的读者姓名
select name
from reader inner join borrow on reader.id = reader_id
group by name
having count(book_id) > 3;
--检索没有借阅读者“Rose”所借的任何一本书的读者姓名和读者号；                                               
select name  
    from  reader
    where name not in (select name  
    from  reader inner join borrow on reader_id = reader.id               
    where book_id in ( select book_id
                from reader inner join borrow on reader_id = reader.id
                where name = 'Rose'));             
--检索书名中包含“Oracle”的图书书名及图书号
select name ,id
from book
where name like '%Oracle%';
--创建一个读者借书信息的视图，该视图包含读者号、姓名、所借图书号、图书名
--和借期
create or replace view borrow_info
as 
select reader.id, reader.name,book.id as borrow_id, book.name as borrow_name,borrow_date
from reader inner join borrow on reader_id = reader.id inner join book on book_id = book.id
with check option;

select * from borrow_info;
--并使用该视图查询最近一年所有读者的读者号以及所借阅的不同图书数
select name,count(distinct(borrow_name))
from borrow_info
where borrow_date > to_date ( '2017-4-5 15:21:14' , 'YYYY-MM-DD HH24:MI:SS' )
group by name;



/*drop table borrow;
drop table reader;
drop table book;*/

/*select * from book;
select * from reader;
select * from borrow;*/

--存储过程
create or replace procedure Changebookid(id_old in char, id_new in char)
       as
begin  
        execute immediate 'alter table borrow disable constraint book_idfk';
        update book set book.id = id_new where book.id = id_old;
        update borrow set book_id = id_new where book_id = id_old;
        execute immediate 'alter table borrow enable constraint book_idfk';
end; 

exec Changebookid('00000003','00000031');

--触发器
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

insert into borrow(book_id,
                   reader_id,
                   borrow_date,
                   return_date)
                   values('00000010','10000010',to_date ( '2017-12-25 12:21:14' , 'YYYY-MM-DD HH24:MI:SS' ),null);
                   commit;

delete from borrow
	where reader_id = '10000010';
	commit;
