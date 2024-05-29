-- Lecture 8
-- constraints rule(table avoid invalid)

-- primary key
-- foreign key
-- not null 
-- unique
-- default
-- index

-- ddl statement
use sakila;
create table raj(id int, name varchar(20));
insert into raj values(10,"aman");
insert into raj(id) values(13);
insert into raj values(13, null);

select * from raj;

-- constraints 

create table raj2(id int, name varchar(20) not null);
insert into raj2 values(10,"aman");
-- insert into raj2(id) values(13);
-- insert into raj values(13, null);

select * from raj2;

drop table raj2;

create table raj2(id int default 100, name varchar(20) not null);
insert into raj2(name) values("aman");
select * from raj2;

create table raj3(id int unique, name varchar(20));
insert into raj3 values(10,"aman");
insert into raj3 values(null,"aman");

select * from raj3;

create table raj4(id int check(id between 2 and 5));
insert into raj4 values(2);
insert into raj4 values(6);
select * from raj4;

create table house(
			houseid int, 
            purchase int, 
            selling int, 
            email varchar(20) unique, 
            constraint house_sprice_chk check(purchase < selling)
            );
drop table house;
insert into house values(1,1000,5000,"deepak@gmail.com");
insert into house values(1,5000,1000,"deepak@gmail.com");

-- primary key
-- constraint : unique identifier each and every recode
-- unique and not null
-- only one primary key but unique key can be null

create table isha(id int primary key, name varchar(20));
insert into isha values(3,"deepak");
select * from isha;
-- drop table isha;

-- foreign key : regulation
-- cross validation
-- parent table 		child table
-- if you want to work in child table then that should be in parent table

create table person1(pid int, pname varchar(20));
insert into person1 values(1,"tushar");

create table orders1(
		oid int, city varchar(20), pid int, 
		foreign key (pid) references person1(pid)
		);

drop table person1;

-- what is the diff btw super,candidate and composite key?
-- on delete, on delete casecade, on delete set null and default?