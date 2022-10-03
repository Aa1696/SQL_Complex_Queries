select * from bonus;
with t1 as 
		(select department ,count(worker2.worker2_id) cnt from worker2 
		group by department)
		
//4
select * from t1 where t1.cnt <5;

//2
select * from t1 order by t1.cnt desc;

//3
select * from title t1 join  
bonus b1 on b1.worker_ref_id=t1.worker_ref_id 
and t1.worker_title='Manager';

//5
select distinct 
worker2_id,first_name,last_name,
salary,joining_date,bonus_amount
from worker2 w
left join bonus b1 on
b1.bonus_amount=null;
//6
SELECT sum(Salary), department FROM 
worker2 w GROUP BY w.department;
//7
select * from (
	select *,dense_rank()
	over(order by Salary desc) as rnk
	from worker2
)e
where rnk<=3;

//8
with wt1 as 
(select count(worker_title),worker_title from title
 group by worker_title )
select * from
(select * ,dense_rank() over(order by wt1.count desc) rnk
from wt1)w where w.rnk=1;

//9
select distinct b1.worker_ref_id,b1.bonus_amount,b1.bonus_date from bonus b1 left join
bonus b2 on b1.worker_ref_id=b2.worker_ref_id;
//10
select avg(bonus.bonus_amount) avg_bonus_of_employee
from bonus;




