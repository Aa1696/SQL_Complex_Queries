-- CREATE TABLE STAFF
-- (
-- 	STAFF_ID VARCHAR(20) PRIMARY KEY
-- 	,STAFF_TYPE VARCHAR(20)
-- 	,SCHOOL_ID VARCHAR(30)
-- 	,FIRST_NAME VARCHAR(50)
-- 	,LAST_NAME VARCHAR(50)
-- 	,AGE INT
-- 	,DOB DATE
-- 	,GENDER VARCHAR(20) CHECK(GENDER IN ('M','F','MALE','FEMALE'))
-- 	,JOIN_DATE VARCHAR(40)
-- 	,ADDRESS_ID VARCHAR(100)
-- 	,CONSTRAINT ST_STAFF CHECK(AGE>20)
-- );
-- SELECT * FROM STAFF
-- INSERT INTO STAFF VALUES(1,'REGULAR',1,'SANTOSH','PATEL',25,CURRENT_DATE,'M',CURRENT_DATE,1);
-- INSERT INTO STAFF VALUES(2,'INTERN',2,'SONALI','KAUR',23,CURRENT_DATE,'FEMALE',CURRENT_DATE,2);

create table employees
( 
	id int,
	name varchar(40),
	salary int,
	managerid int 
 
);

select * from employees;
insert into employees values(1,'Joe',70000 ,3);
insert into employees values(2,'Henry',80000 ,4);
insert into employees values(3,'Sam',60000 ,null);
insert into employees values(1,'Max',90000 ,null);

select * from employees;

select e1.name as "Employee" from employees e1
right join employees manager on e1.managerid=manager.id and e1.salary>manager.salary

create table person
(
	id int,
	email varchar(100)
);
 select * from person;
 insert into person values(1,'a@b.com' );
 insert into person values(2,'c@d.com' );
 insert into person values(3,'a@b.com ' );
 select * from person
 select email from person p
 group by email having count(1)>1
 select email from person p
 group by email having count(1)=1
 
 create table customers
 (
	 id int primary key,
	 name varchar(30)
 );
 create table orders
 (
	 id int primary key,
	 customersid int 
 );
 
 select * from customers;
 insert into customers values(1,'Joe');
 insert into customers values(2,'Henry');
 insert into customers values(3,'Sam');
 insert into customers values(4,'max');
 select * from customers
 select * from orders;
 insert into orders values(1,3);
 insert into orders values(2,1);
 select * from orders
 
 select c.name as Customers  from customers c
 left join orders o on c.id=o.customersid
 where customersid is null
 