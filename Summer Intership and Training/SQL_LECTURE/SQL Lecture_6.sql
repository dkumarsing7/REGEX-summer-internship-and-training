-- Lecture 6 
use sakila;

-- sub query or nested query

-- single row sub query (if query return one output)
select * from payment;

select amount from payment where payment_id = 3;
select * from payment where amount = 5.99;

select * from payment where amount = (
	select amount from payment where payment_id = 3
);

select * from payment where amount = (
	select amount from payment where rental_id = 573
);

select * from payment;
/*
get user whose staff id is equal to the staff id of paymentid 10
*/
select * from payment where staff_id = (
	select staff_id from payment where payment_id = 10
);

/*
get the payment staff_id amount and payment_date where the month of paymanetdate = the paymentid =5 months
*/
select payment_id, staff_id, amount, payment_date 
from payment where month(payment_date) = (
	select month(payment_date) from payment where payment_id = 5
);

-- multiple row return sub query
-- use in , any , all
-- for in
/*
amount == paymentid 2 or paymentid 3
*/
select * from payment where amount in (
	select amount from payment where payment_id in (2,3)
);
select * from payment where amount in (
	select amount from payment where payment_id not in (2,3)
);
-- for =any 

select * from payment where amount =any(
	select amount from payment where payment_id in (2,3)
);

--   >any ==> sub query ke min se bada
select * from payment where amount > any(
	select amount from payment where payment_id in (2,3)
);

--   <any ==> sub query ke max se small ho
select * from payment where amount < any(
	select amount from payment where payment_id in (2,3)
);

-- for all (= all not available >all and <all available)
-- >all greater than max of sub query
-- <all loweer than min of sub query









