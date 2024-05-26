-- Lecture 3 
use sakila;
-- date time function
-- year(), month, quater

select curdate() from dual;
select current_date() from dual;
select curtime() from dual;
select current_timestamp() from dual;
select now() from dual;

-- to add in data
select adddate(now(), 2) from dual;
select adddate(now(), interval 32 day) from dual;

select dayname(now()) from dual;

-- % modifier
-- % abbreviare  
select date_format(now(), "%m-- %Y") from dual;

-- nmerical function
-- round, truncate, mod
select round(10.6) from dual;
select round(10.69345, 1) as round from dual;

select truncate(10.62345678, 3) from dual;
select truncate(10.62345678, 2) from dual;

select mod(100.62, 10) from dual; -- remainder
select (100.62% 10) from dual; -- remainder

-- conditional function
select * from actor;
-- if(condition,if true, if false)
select if(True,10,20) from dual;

select actor_id, first_name, 
if(actor_id = 2, actor_id +10, actor_id) 
from actor;

select actor_id, first_name, 
if(actor_id = 2, actor_id +10, 
	if(actor_id=4, actor_id+4,actor_id)) 
from actor;

-- case statement
/*
select col, case expression/col
					when  condition then what_type_work
					end
				from table
*/
select actor_id, first_name,
	case actor_id
		when 2 then actor_id + 10
        when 3 then actor_id + 20
        when 4 then actor_id + 40
	else actor_id
        end "newcol"
        from actor;
        
select actor_id, first_name,
	case 
		when actor_id = 2 then actor_id + 10
        when actor_id = 3 then actor_id + 20
	else actor_id
        end "newcol"
        from actor;
        
-- a person has a actorid has a value more than 5 then add 10
--												15 then add 25
--                                                else add 5
                                                
select actor_id, first_name,
	case 
		when actor_id >= 5 and actor_id  then actor_id + 10
        when actor_id >= 15 and actor_id <35 then actor_id + 25
        when actor_id >= 35 and actor_id <50 then actor_id + 30
	else actor_id + 5
        end "newcol"
        from actor;

-- group by 
-- difference bwt distinct and group by  
-- difference bwt where and having clause