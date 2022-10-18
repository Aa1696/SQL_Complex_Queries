--SQL Materialized view
create table random_table(id int,val decimal);

insert into random_table
select 1,random() from generate_series(1,1000000);

insert into random_table
select 2,random() from generate_series(2,1000000);

select count(1) from random_table;

select id,avg(val),count(*)
from random_table
group by id;

create materialized view mv_random_table
as 
select id,avg(val),count(*)
from random_table
group by id;

select * from mv_random_table;



