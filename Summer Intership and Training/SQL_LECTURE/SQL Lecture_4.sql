-- Lecture 4 
use sakila;

-- group by (Aggregate function)
-- multi row function

select * from address;
-- to get number of recode use count
select count(address_id) from address;
select count(address2) from address;
select count(*) from address;

-- to remove duplicate
select distinct(district) from address;

select count(address_id) from address;
select sum(address_id) from address;

-- want to count similar data
select count(*) from address where district = 'ALberta';
select count(*) from address where district = 'Bihar';

-- get count all together using group by
-- the which is not use by group by is can't be select

select district, count(*) 
from address group by district;

select district, count(*), sum(city_id) 
from address group by district;

-- order by
select * from payment;

select customer_id, count(*) as total 
from payment 
group by customer_id order by total desc;

select customer_id, sum(amount) as total 
from payment group by customer_id having total > 100;

select customer_id, sum(amount) as total 
from payment where customer_id > 5 
group by customer_id having total > 100;

select * from payment;

select sum(amount) from payment 
where customer_id = 1 and staff_id = 1;

select sum(amount) from payment 
where customer_id = 1 and staff_id = 2;

-- multiple group by
select * from payment;

select customer_id, staff_id, sum(amount) from payment 
group by customer_id, staff_id;

/*
Question ===>:get the avg value for each amount whose payment_id > 10
*/
select amount, avg(amount) as average from payment 
where payment_id > 10 group by amount;

/*
Question ===>:get the total number of amount for each month of payment date
for may june and july.
*/
select month(payment_date), sum(amount) from payment 
where month(payment_date) in (5,6,7) group by month(payment_date);
