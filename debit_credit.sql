

select b1.* from account_balance b1
inner join (select account_no from account_balance
group by account_no) b2
on b1.account_no=b2.account_no and
b1.account_no='acc_1'

with t1 as (select *,
			case when debit_credit='debit'then transaction_amount *-1 else transaction_amount end as trns_amount
			from account_balance),
			
		t2 as (select t1.account_no,sum(trns_amount)as tot_amount
				from t1 group by t1.account_no)
				
				
select t2.account_no,b.transaction_date from  t2 
join account_balance b
on b.account_no=t2.account_no
where t2.tot_amount>=1000




			


select * from t1 
where t1.sum>=1000

select * from account_balance;