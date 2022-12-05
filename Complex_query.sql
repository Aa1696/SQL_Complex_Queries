-- select * from 
-- 			(select * ,dense_rank() over(partition by continent order by population desc) rnk1
-- 					,dense_rank() over(partition by continent order by population asc)rnk2
-- 			 from covid) tb

-- where tb.rnk1=1 and tb.rnk2=1


-- select  * from covid
-- first 10
select continent ,max(population),min(population)
from covid group by continent

select * from 	
		(select * ,dense_rank() over(partition by continent order by population desc) rnk1
-- 				,dense_rank() over(partition by continent order by population asc)rnk2
		 from covid) tb
 where tb.rnk1=1;
--  and tb.rnk2=1
	 