select * from employee2;

select * from employee2 e where e.emp_id=105;

select emp_id,emp_name from employee2;

select * from employee2 order by emp_name;

select count(*) from employee2;

select avg(salary) as avg_sal,sum(salary) as sum_salary,min(salary),max(salary) from employee2;