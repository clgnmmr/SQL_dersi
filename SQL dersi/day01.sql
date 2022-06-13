create database batch59;
-- creat database : database olusturur
-- aciklama yapmka ici "--" kullanilir
/*
Javadaki gibi aciklama yazabiliriz

*/
use batch59;
-- birden fazla database var ise "use" komutu ile calisacagimiz database'i seceriz.
-- TABLO OlUSTURMA
create table student 
(
id varchar(4),
name varchar(30),
age int
);

-- VERİ GİRİSİ

insert into student values('1000','ALi Can','25'); 
insert into student values('1001','Kadir Yan','25'); 
insert into student values('1002','ESRA Tan','25'); 
insert into student values('1003','Derya Canan','25'); 
select * from student;
-- student tablosundaki herşeyi getirir

select name from student;
-- sudent tablsundaki isimleri getirdi


select id from student;
-- student tablosundaki id leri getirdi

select id,name from student;
-- student tablosundaki id ve name leri getirir

drop table student;
-- student tablosunu siler
drop  table  student; 

