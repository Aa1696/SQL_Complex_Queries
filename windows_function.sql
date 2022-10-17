DROP TABLE  if exists product1;
CREATE TABLE product1
( 
    product_category varchar(255),
    brand varchar(255),
    product_name varchar(255),
    price int
);

INSERT INTO product1 VALUES
('Phone', 'Apple', 'iPhone 12 Pro Max', 1300),
('Phone', 'Apple', 'iPhone 12 Pro', 1100),
('Phone', 'Apple', 'iPhone 12', 1000),
('Phone', 'Samsung', 'Galaxy Z Fold 3', 1800),
('Phone', 'Samsung', 'Galaxy Z Flip 3', 1000),
('Phone', 'Samsung', 'Galaxy Note 20', 1200),
('Phone', 'Samsung', 'Galaxy S21', 1000),
('Phone', 'OnePlus', 'OnePlus Nord', 300),
('Phone', 'OnePlus', 'OnePlus 9', 800),
('Phone', 'Google', 'Pixel 5', 600),
('Laptop', 'Apple', 'MacBook Pro 13', 2000),
('Laptop', 'Apple', 'MacBook Air', 1200),
('Laptop', 'Microsoft', 'Surface Laptop 4', 2100),
('Laptop', 'Dell', 'XPS 13', 2000),
('Laptop', 'Dell', 'XPS 15', 2300),
('Laptop', 'Dell', 'XPS 17', 2500),
('Earphone', 'Apple', 'AirPods Pro', 280),
('Earphone', 'Samsung', 'Galaxy Buds Pro', 220),
('Earphone', 'Samsung', 'Galaxy Buds Live', 170),
('Earphone', 'Sony', 'WF-1000XM4', 250),
('Headphone', 'Sony', 'WH-1000XM4', 400),
('Headphone', 'Apple', 'AirPods Max', 550),
('Headphone', 'Microsoft', 'Surface Headphones 2', 250),
('Smartwatch', 'Apple', 'Apple Watch Series 6', 1000),
('Smartwatch', 'Apple', 'Apple Watch SE', 400),
('Smartwatch', 'Samsung', 'Galaxy Watch 4', 600),
('Smartwatch', 'OnePlus', 'OnePlus Watch', 220);
commit;
select  *,row_number() over() as rw from product1;
alter table product1
drop column row_num ;

select * from product1;

with t1 as (select *,row_number() 
			over(partition by price order by price)
			from product1)

delete from product1
WHERE price IN
    (SELECT price
    FROM 
        (SELECT price,
         ROW_NUMBER() OVER( PARTITION BY price
        ORDER BY  price ) AS row_num
        FROM product1 ) t
        WHERE t.row_num > 1 );
select * from product1;

--write a query to show most expensive product under it's category
select * ,dense_rank() over(partition by product_category order by price desc)
from product1;

select * 
,first_value(product_name) over(partition by product_category order by price desc) most_expensive
,last_value(product_name) over(partition by product_category order by price desc
range between unbounded preceding and unbounded following) most_expensive
from product1;


				



			)
