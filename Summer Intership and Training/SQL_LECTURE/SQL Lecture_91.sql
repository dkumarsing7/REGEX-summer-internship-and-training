# TCL : transaction language
# set of logical statment of work

# DDL, DML, DCL, TCL transaction

# DML : transaction
# start : DML operation
# end : DDL, DCL, TCL

select @@autocommit;
set autocommit = 1;

create database po;
use po;

create table if not exists emp(eid int, ename varchar(20));
insert into emp values (10,"abc");
select * from emp;
-- to save our work
commit;

insert into emp values (13,"adfdfdffdfbc");
select * from emp;
rollback;
update emp set ename = "deepak";

-- likewise checkpoint
savepoint emp_sv1;
rollback to emp_sv1;
commit;


-- ALTER command (DDL statment)
use po;
create table companies(id int);
insert into companies values (10);
select * from companies;

-- to add column
alter table companies
add column phone varchar(15);
select * from companies;

-- to add column without null
alter table companies
add column employee_count3 int not null;
select * from companies;

-- to add column
alter table companies
add column employee_count3 int default 10;
select * from companies;

-- to drop column
alter table companies
drop column employee_count3 ;
select * from companies;

-- to rename table
rename table companies to newcompany1;
select * from companies;
select * from newcompany1;

alter table newcompany1 rename to companies;
select * from companies;
select * from newcompany1;

-- to rename column
alter table companies rename column phone to companies_name;
select * from companies;

-- to make primary key(it should unique and not null)
alter table companies add primary key (id);
desc companies;

-- adding constraint
alter table companies 
add constraint compay_uk unique (companies_name);
desc companies;


-- removing constraint
alter table companies 
drop constraint compay_uk;
desc companies;

-- to change datatype 
update companies set companies_name=0;
alter table companies modify company_name int;

-- to change column name with change
alter table companies
change company_name gender char(30);