use sakila;
create table employyees(id int primary key auto_increment,
dept varchar(20), salary int);
insert into employyees(dept, salary) values("hr",200),
("hr",300),("hr",100), 
("marketing", 70), ("marketing",50), 
("marketing", 200), ("marketing",400), 
("dsa", 150), ("dsa",120), 
("dsa", 40), ("dsa", 90), ("dsa",500);
select avg(salary) from employyees;
select id, dept, salary, avg(salary) from employyees;


select id, dept, salary,(
select avg(salary) from employyees)
from employyees;


-- window function or analytical function
select id, dept, salary,
avg(salary) over(),
max(salary) over() from employyees;


-- window function or analytical function on selected rows
select id, dept, salary,
avg(salary) over(),
avg(salary) over(partition by dept) from employyees;



-- window function or analytical function on selected rows
select id, dept, salary,
avg(salary) over(),
sum(salary) over(),
sum(salary) over(partition by dept) from employyees;


-- rolling sum or avg

-- window function or analytical function on selected rows
select id, dept, salary,
avg(salary) over(),
sum(salary) over(),
sum(salary) over(order by salary) from employyees;


-- window function or analytical function on selected rows
select id, dept, salary,
avg(salary) over(),
sum(salary) over(),
avg(salary) over(order by salary) from employyees;


-- rolling sum starts from every partition
select id, dept, salary,
sum(salary) over(partition by dept order by salary) from employyees;

-- rand, dense_rank()
-- skip a rank when same salary
select id, dept, salary,
rank() over(order by salary) from employyees;


-- don't skip a rank when same salary
select id, dept, salary,
dense_rank() over(order by salary) from employyees;

select id, dept, salary,
rank() over(partition by dept order by salary) from employyees;

select id, dept, salary,
rank() over(partition by dept order by salary)
from employyees;


-- using window func find n hightest salary;
-- use of n type