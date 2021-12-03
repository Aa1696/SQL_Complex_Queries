create table users
(
	user_id int primary key ,
	user_name varchar(40),
	user_email varchar(50)
);

select * from users;

insert into users values(1,'sumit','sumit@gmail.com');
insert into users values(2,'reshma','reshma@gmail.com');
insert into users values(3,'farhana','farhana@gmail.com');
insert into users values(4,'robin','robin@gmail.com');
insert into users values(5,'robin','robin@gmail.com');

select * from users;
select user_name,user_email
from (select *,
row_number() over(partition by user_name order by user_id) as rnk
from users
order by user_id)sb where sb.rnk=2;

select * from users u join
(select user_name,user_email,count(*)
from users
group by user_name,user_email
having count(*)>1)u1
on u.user_name=u1.user_name
and u.user_email=u1.user_email
order by u.user_email;