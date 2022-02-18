create database datenbank;
use datenbank;
create table firstone
(
	id int not null primary key,
	first_name varchar (30),
	last_name varchar (30),
	age int not null default 0

);
/*insert into firstone (id,first_name,last_name,age)values (1,'Wahhab','Alhamad',34);
insert into firstone (id,first_name,last_name,age)values (2,'Ahmad','Fucker',20);
insert into firstone (id,first_name,last_name,age)values (3,'Rami','Madri',19);
insert into firstone (id,first_name,last_name,age)values (4,'Mahmoud','Saaloum',25);
insert into firstone (id,first_name,last_name,age)values (5,'Sari','Samer',3445);
insert into firstone (id,first_name,last_name,age)values (6,'Bebo','Esam',76);*/
insert into firstone (id,first_name,last_name,age) values (1,'Wahhab','Alhamad',34),
 (2, 'Ahmad','Fucker',20),
 (3,'Rami','Madri',19),
 (4,'Mahmoud','Saaloum',25),
(5,'Sari','Samer',45),
 (6,'Bebo','Esam',76);
select first_name from firstone where id = 3;
select * from firstone;
alter table firstone add  user_plz INT NOT NULL DEFAULT 00000;
select * from firstone;
UPDATE firstone SET user_plz = 70367 WHERE first_name = 'Wahhab'; 
UPDATE firstone SET user_plz = 6456 WHERE id = 2; 
UPDATE firstone SET user_plz = 4545 WHERE id = 3; 
UPDATE firstone SET user_plz = 9285 WHERE id = 4; 
UPDATE firstone SET user_plz = 23455 WHERE id = 5; 
UPDATE firstone SET user_plz = 66231 WHERE id = 6; 
select * from firstone;
UPDATE firstone SET first_name = 'Kasem' WHERE id = 3; 
UPDATE firstone SET first_name = 'Rami' WHERE first_name ='Kasem'; 
select * from firstone;
delete * from firstone;-- can not working also: delete * from datenbank;
-- ????????   delete * from firstone where id = 3;  ?????????? WHY
select first_name from firstone;
insert into firstone (id,first_name)values (7,'Hmm'); -- to see null and 0
select * from firstone;
select 10 + 72;
select 10 *72;
select 10 / 3; -- or :
select 10 div 3; 
select 10 mod 3;
select * from firstone;

create table math
(
	produktID int primary key not null,
	produktName varchar (30) not null,
	einkaufPREIS decimal (10,2) not null, -- zehn zeichen und 2 nach komma
	verkaufPREIS decimal (10,2)not null
);
insert math (produktID,produktName,einkaufPREIS,verkaufPREIS) values (1,'Cola',2.34,5.00),
	(2,'Milch',3.34,4.10),
	(3,'Eiweis',5.34,9.99);
select * from math;
select *,verkaufPREIS - einkaufPREIS As 'Gewinn' from math;
select  *, verkaufPREIS  As 'OWEN' from math;
-- Order by:
select * from firstone order by first_name;
select * from firstone order by id;
select * from firstone order by age;
UPDATE firstone SET age = 45 WHERE id = 5; 
select * from firstone order by age;
insert into firstone (id,first_name,last_name,age) values (8,'Wahhab','Basel',55),
 (9,'Wahhab','Murad',23);
select * from firstone order by first_name, last_name;
select * from firstone order by first_name, age;
alter table firstone add  land varchar(30) not null default 'No Land';
update firstone set land = 'Syrien' where id = 1;
update firstone set land = 'Yemen' where id = 2;
update firstone set land = 'Algria' where id = 3;
update firstone set land = 'Turkey' where id = 4;
update firstone set land = 'Syrien' where id = 5;
update firstone set land = 'Syrien' where id = 6;
update firstone set land = 'Turkey' where id = 7;
update firstone set land = 'Yemen' where id = 8;
update firstone set land = 'Syrien' where id = 9;
select land from firstone;
select land from firstone group by land;
select land , min (age)from firstone group by land;
select land , max (age)from firstone group by land;
select land , avg (age)from firstone group by land;
select land , sum (age)from firstone group by land;
select * from firstone limit 5;
