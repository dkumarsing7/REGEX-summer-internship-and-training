-- Lecture 1
use sakila;
select database();
show tables;
describe actor;
desc actor;
desc sakila.actor;
-- to check contain in table
-- select statement (DQL)
select * from actor;
select actor_id, first_name, actor_id+4 from actor;

select * from actor;

-- where clause
select * from actor where actor_id = 2;

select actor_id, first_name from actor where actor_id <= 2;
select first_name from actor where actor_id<=2;
select actor_id from actor where first_name = "NICK";
select * from actor where actor_id between 2 and 5;

-- in operator 
select * from actor where actor_id in (5,2,1);
select * from actor where actor_id not in (5,2,1);
select * from actor where first_name = "ED";

-- pattern find karne ke liye % mean 0 or more charactor
select * from actor where first_name like "E%";
select * from actor where first_name like "%E";
select * from actor where first_name like "%E%";

-- _ single charactor 

select * from actor where first_name like "_D";
