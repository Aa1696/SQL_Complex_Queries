--for given product and quantity.
	--check if product is available based on required quantity.
	--if item is available then modify the database accordingly.
--Procedure with parameter
select * from products;
select * from sales;
create or replace procedure parameterised_procedure(p_product_name varchar,p_quantity int)
language plpgsql
as $$
declare
	v_product_code varchar(55);
	v_price float(2);
	v_cnt int;
begin
	select count(1) into v_cnt
	from products where
	product_name=p_product_name
	and quantity_remaining>=p_quantity;
	if(v_cnt>0) then
		select product_code,price
		into v_product_code,v_price
		from products 
		where product_name='iphone 13 Pro Max';

		insert into sales(order_date,product_code,quantity_ordered,sales_price)
		values(current_date,v_product_code,p_quantity,(v_price*p_quantity));

		update products
		set quantity_remaining=(quantity_remaining-p_quantity)
			,quantity_sold=(quantity_sold+p_quantity)
		where product_code=v_product_code;

		raise notice 'Product_sold'; --to print statement in procedure in postgres
	else
		raise 'Invalid number to searced or quantity not available';
	end if;

end;
$$
