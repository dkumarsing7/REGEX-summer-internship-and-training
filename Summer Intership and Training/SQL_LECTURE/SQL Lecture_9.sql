-- Lecture 9
USE sakila;
CREATE TABLE ut1(id INT);
INSERT INTO ut1 VALUES(10),(20),(20),(30),(30),(40),(40);
SELECT * FROM ut1;

-- second largest
SELECT MAX(id) FROM ut1
WHERE id < (SELECT MAX(id) FROM ut1);

-- third smallest
SELECT MIN(id) FROM ut1 
WHERE id > (SELECT MIN(id) FROM ut1
WHERE id > (SELECT MIN(id) FROM ut1));

-- ddl

create database isha;
use isha;

-- int(unsigned) means no negative
-- number in int is 2**32 that is 2,147,483,647
-- big int is of 8 byte
-- 1 byte tinyint
-- 2 byte smallinnt

-- varchar and char
-- varchar (20) "raj" can use lest off bytes , it trims the white space after width length
-- char(20) "raj" occupy whole 20 byte, it trims the whole white space

create table u1(dob date);
insert into u1 values('2024-08-19');
select * from u1;

-- timestamp store untill 2038 yr
create table u2(dob date, dtime time, dob1 datetime);
insert into u2 values('2024-08-19', '10:25:13', now());
select * from u2;
