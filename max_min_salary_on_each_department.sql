create table employee2
(
	emp_id int primary key,
	emp_name varchar(40),
	dept_name varchar(40),
	salary int
);

insert into employee2 values(101,'Mohan','Admin',4000);
insert into employee2 values(102,'Rajkumar','HR',3000);
insert into employee2 values(103,'Akbar','IT',4000);
insert into employee2 values(104,'Dorvin','Finance',6500);
insert into employee2 values(105,'Rohit','HR',3000);
insert into employee2 values(106,'Rajesh','Finance',5000);
insert into employee2 values(107,'Preet','HR',7000);
insert into employee2 values(108,'Maryam','Admin',4000);
insert into employee2 values(109,'Sanjay','IT',6500);
insert into employee2 values(110,'Vasudha','IT',7000);
insert into employee2 values(111,'Melinda','IT',8000);
insert into employee2 values(112,'Komal','IT',10000);
insert into employee2 values(113,'Gautham','Admin',2000);
insert into employee2 values(114,'Manisha','HR',3000);
insert into employee2 values(115,'Chandni','IT',4500);
insert into employee2 values(116,'Satya','Finance',6500);
insert into employee2 values(117,'Adarsh','HR',3500);
insert into employee2 values(118,'Tejaswi','Finance',5500);
insert into employee2 values(119,'Cory','HR',8000);
insert into employee2 values(120,'Monica','Admin',5000);
insert into employee2 values(121,'Rosalin','IT',6000);
insert into employee2 values(122,'Ibrahim','IT',8000);
insert into employee2 values(123,'Vikram','IT',8000);
insert into employee2 values(124,'Dheeraj','IT',11000);
select * from employee2;

-- query to find the sceond highest row
select emp_id,emp_name,dept_name,salary from
(select * , dense_rank() over(order by emp_id desc) as rnk from employee2) e1
where e1.rnk=2;

select emp_id,emp_name,dept_name,salary from
(select * , dense_rank() over(partition by dept_name order by salary desc) as rnk,
 min(salary) over(partition by dept_name) as min_sal
 from employee2) e1
where e1.rnk=2  ;

select * , max(salary) over(partition by dept_name ) as max_sal,
 min(salary) over(partition by dept_name) as min_sal
 from employee2 e1
 order by dept_name,salary;

select e1.* from employee2 e2 join
(select * , max(salary) over(partition by dept_name ) as max_sal,
 min(salary) over(partition by dept_name) as min_sal
 from employee2) e1
 on e1.emp_id=e2.emp_id
 and (e1.max_sal=e2.salary or e1.min_sal=e2.salary)
 order by e1.dept_name,e1.salary ;
 
