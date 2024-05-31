-- Lecture 10
use isha;
show tables;
-- to delete data we use DML operation

-- to delete all rows (we can recover the data of delete command)
delete from abc1; 

-- to delete specific row (can be role back
delete from abc1 where id = 1;

-- to update all row
update table_name set id = 10;

-- to update specific row (can be role back
update table_name set id = 10
where id=2;

-- DDL operation
-- drop and truncate and alter
show tables;

-- to delete table 
drop table table_name;

-- truncate (it drop the table and recreate the table) (can be role back
truncate table_name;

use sakila;
select * from actor;

-- to create same structure and data of table
create table o1 
as select * from actor;

select * from o1;

-- to create with specific column
create table o2 
as select actor_id, first_name from actor;

select * from o2;


-- to create with specific row with diff name
create table o3 
as select actor_id as id, first_name as name from actor;

select * from o3;

-- alter command
-- group concat
-- what is transaction 
-- why it is neccessary to make transaction how it is manage?