-- Lecture 7 

use sakila;
select * from address
where district = (
	select district from address
    where address_id = 6);

select * from address
where district in (
	select district from address
    where address_id in (6,7)
    );
