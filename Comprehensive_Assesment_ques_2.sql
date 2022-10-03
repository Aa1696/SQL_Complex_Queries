create table covid(Day varchar(55),Month varchar(55),
Year varchar(55),Cases int,Deaths int,Country varchar(55),Code varchar(55),
Population int,Continent varchar(55),Rate float(3));

select * from covid;
-- 1.Find out the total number of Countries which has Cases greater than 500.
select count(country) from covid 
where cases>500;

-- 2. Find the Codes which has negative Deaths (Ex: -9,-5).

select code from covid where deaths<0;

-- 3. Which date has the highest Rate?
select * from(
	select day,month,year ,dense_rank() over(order by rate desc)rnk
	from covid)cvd 
	where cvd.rnk=1;

-- Which month has minimum Death?
select * from(
	select month,dense_rank() over(order by rate asc)rnk
	from covid)cvd 
	where cvd.rnk=1;

-- 5. Which cities have Populations lesser than 50,000?	
select country from covid 
where population<50000;

-- 6. Find Dates with Continent =’ Oceania’ and have Deaths greater than 20 and less than 50
select day,month,year from covid c
where c.continent='Oceania' and (c.deaths>20 and c.deaths<50);

-- 7. Find the Countries, Cases, Deaths, Rate for all the Countries in the Continent =’ Asia’.
select distinct country,cases,deaths,rate from covid c
where c.continent='Asia';

-- 8. On ‘24/5/2020’ which Country, Continent has Least Population and Highest Population?

with t1 as(select country,continent,population,day,month,year from covid
			where day='24' and month='5' and year='2020')
select * from(select * ,dense_rank() over(order by population asc)rnk
from t1)pp1
where pp1.rnk=1;

select * from(select * ,dense_rank() over(order by population desc)rnk
from t1)pp
where pp.rnk=1;
