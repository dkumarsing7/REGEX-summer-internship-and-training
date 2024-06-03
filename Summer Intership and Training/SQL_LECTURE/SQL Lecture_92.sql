-- lecture 12
/*
databases have evolved to support multiple users and roles and provide a means to control privileges and access on a very fine-grained level to guarantee secure shared environments.
Users in MySQL are special objects used for the purpose of:
Users in MySQL are special objects used for the purpose of:
Authentication (making sure that a user can access the MySQL serv Authorization (making sure that a user can interact with objects in the database)
*/

create user bob12 identified by 'bob';
select * from mysql.user;

-- for current user 
select current_user();

-- to show permission
show grants for 'bob12';

create user 'sammy'@'192.16.10.%' identified by 'password';

-- to give permission
grant all privileges on sakila.* to bob12;

-- to change password
alter user 'bob12' identified by 'regex';

-- to lock and unlock
alter user 'bob12' account lock;
alter user 'bob12' account unlock;

-- roles : is simply a group
-- group : collection of user
create role sales;
grant select on sakila.* to sales;
-- create user to add in group
create user "aman" identified by "aman";
show grants for "aman";
-- giving permission to all user in sales group
grant sales to aman;
show grants for aman;
set default role all to aman;




-- sakila 
-- select 1 col
-- upd 2 col;


use sakila;
create table test(id int, name varchar(20));

create user "user1" identified by "user1";
create user "user2" identified by "user2";
-- grant all privileges on sakila.* to bob12;
insert into test values(2, "prince");
grant select(id) on sakila.test to "user1";
grant update(name) on sakila.test to user2;



use sakila;
 create table user(name varchar(20),age int);
create user "avneet" identified by "avneet";
create user "user2" identified by "user2";
grant select(name),update(age) on sakila.user to "avneet";
grant select(name) on sakila.user to "user2";
grant update(age) on sakila.user to "user2";
