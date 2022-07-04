create database ETRADE;
use etrade;

create table customers
(

id int primary key,
customername varchar(100),
city  varchar(50),
birthdate date,
district varchar(20),
gender varchar(1)
);
insert  into customers values ('1001','kadir tepecik','sivas','1997-02-04','gürün','E');
insert  into customers values ('1002','kader tepecik','mardin','1997-02-04','merkez','K');
insert  into customers values ('1003','Esra demirbaş','ankara','1999-04-01','polatlı','K');
insert  into customers values ('1004','umut ullupınar','istanbul','1997-08-04','alibey köy','E');
select * from customers;

select 
id, customername, city, birthdate, district, gender
 from customers;
 
 insert into customers
 (id,customername,city,birthdate,district,gender)
 values
 (1005,'mehet ozal',' antalya','1990-12-21','alanya','E');
 SET SQL_SAFE_UPDATES = 0;
 update customers
 set district='sivas';
 
alter table customers add nation varchar(20) default 'Turkiye';
alter table customers add age int default 20;
update customers
 set nation='US', age=40;
 
 -- herkesin yaşını otomatik hesaplatma
 
 select datediff('2022-05-06','1997-02-04') as yas from customers;
 
 SELECT  DATEDIFF('2015-06-15', '2015-06-15');
 
 select datediff(YEAR,'19970204','20170605') ;
 
SELECT DATEDIFF(year,'1982-05-13','2022-05-09') AS "Yıl Farkı";
SELECT  
DATEDIFF(year,'2015-06-15', GETDATE()) AS YAS;

delete from customers;
delete age from customers;
drop table customers;


select id, customername from customers where  city='sivas';
select * from customers where customername like  'k%';
select * from customers where customername like  'k%' and age =40;
select * from customers where customername like  'k%' or age =40;
select * from customers where city like  'a%'  and age=40 or age=20;
select * from customers where customername like 'k%'  and gender='K' and birthdate between '19900101' and '20000101';
select distinct gender,age from customers;

select * from customers order by id desc;
select * from customers order by customername desc, gender asc , district asc;

select  *  from customers order by  customername; 






























