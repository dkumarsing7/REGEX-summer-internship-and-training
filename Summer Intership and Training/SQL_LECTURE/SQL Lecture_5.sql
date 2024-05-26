-- Lecture 5
-- create and insert in table 

create database testing;
use testing;

create table product(pid int,pname varchar(20),oid int );
insert into product values(1,"tv",100),(2,"mobile",300);
 
 create table orders(oid int,city varchar(20));
 insert into orders values(100,"Jaipur"),(200,"goa"),(300,"hp");
 
 select * from product;
 select * from orders;
 
 select pid ,pname,city from product join orders 
 where (product.oid = orders.oid);
 
 -- method 1
 select pid ,pname,city, orders.oid 
 from product join orders 
 where (product.oid = orders.oid);
 
 -- method 2
 #when column name are same use using
 select pid ,pname,city, orders.oid 
 from product join orders using(oid);
 
 -- method 3
 select pid ,pname,city, orders.oid 
 from product inner join orders 
 on (product.oid = orders.oid);
 
 
 select pid ,pname,city, orders.oid 
 from product right join orders 
 on (product.oid = orders.oid);
 
 -- nature join ( if col name same ==> simple join if diff then cross join)
select pid ,pname,city
from product natural join orders;

-- self join
create table employee(eid int, ename varchar(20), mid int);
insert into employee values(10,"tushar",null),(20,"aman",30),(30,"mayank",10),(40,"ujjwal",20); 

select * from employee;

select emp.eid, emp.ename, emp.mid, mgr.eid, mgr.ename 
from employee as emp join employee as mgr;

select emp.eid, emp.ename, emp.mid, mgr.eid, mgr.ename 
from employee as emp join employee as mgr 
where emp.mid = mgr.eid;




create table employee_detail(eid int, ename varchar(20), mid int, salary int);
insert into employee_detail values(10,"tushar",null,90),(20,"aman",30,70),
									(30,"mayank",10,50),(40,"ujjwal",20,60); 
/*
empid ename and the mname for those where the salary emp > sal of manager
*/

select emp.eid, emp.ename,emp.salary, mgr.eid, mgr.ename, mgr.salary
from employee_detail as emp join employee_detail as mgr
where emp.mid = mgr.eid and emp.salary > mgr.salary;

use sakila;
select * from actor;
select * from film_actor;
select * from film;

select a.actor_id, a.first_name, a.last_name, f.title
from actor as a join film_actor as fa join film as f
where (a.actor_id = fa.actor_id) and (fa.film_id = f.film_id);

/*
Question ==> actorid has done x movie  
*/
select a.actor_id, 
concat(a.actor_id,' has done',count(a.actor_id),' movie') as movie
from actor as a join film_actor as fa
where (a.actor_id = fa.actor_id)
group by a.actor_id;

