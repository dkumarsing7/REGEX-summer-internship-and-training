-- Lecture 2
use sakila;
-- function and logical operator

select actor_id, first_name from actor
where actor_id = 2 or actor_id = 4;

select actor_id, first_name from actor
where actor_id in (2,4);

select * from actor where first_name = "NICK" or actor_id = 44;

/* 	Question 
	actor_id actor_name whose first_name ed or nick actor_id3 or less
*/
select * from actor
where (first_name = "NICK" or first_name = "ED") and actor_id >= 3;

-- function of two type inbuilt and user define
-- inbuild function ==> single row function
select first_name from actor;
select first_name, lower(first_name) from actor; 

-- dual table (dummy table)
select upper("askdfj") from dual;

-- add string
select first_name, last_name, concat(first_name, '-', last_name) from actor ; 
select first_name, last_name, concat_ws(' ', 'Mr', first_name, last_name) from actor ; 

select * from actor 
where concat(first_name, ' ', last_name) = "ED CHASE";
 
select first_name from actor 
where first_name like '%JENN%';

-- substring method (from where, inded , no of char)
select first_name, substr(first_name, 3) from actor;
select first_name, substr(first_name, 2, 3) from actor;
select first_name, substr(first_name, -3) from actor;

-- instr
select first_name, instr(first_name,"E") from actor;

-- locate
select first_name, locate("E", first_name,3) from actor;

-- length(total number of bits)
select length("12345678") from dual;
-- number of letter
select char_length("ff") from dual;

-- trim function ==>removing white space or special char
select trim('     deepak kumar     ') from dual;
select trim(trailing 'x' from '     deepak xxxxxx') from dual;
select trim(leading'x' from 'xxxxxxdeepak ') from dual;
select trim(both 'x' from 'xxxxxxdeepak xxxx') from dual;

-- lpad and rpad (to add)
select rpad(123456789,10,'#') from dual;
select rpad(123456789,15,'#') from dual; 
select rpad(123456789,5,'#') from dual;