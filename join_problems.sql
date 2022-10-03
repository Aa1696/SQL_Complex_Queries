create table porder (
order_id varchar(50),
order_status varchar(50),
order_items varchar(50),
c_id varchar(50),
s_id varchar(50),
primary key(order_id));

create table supplier(
sup_id varchar(50),
sup_name varchar(50),
catagory varchar(50),
quantity varchar(50),
sup_address varchar(50),
s_id varchar(50),
primary key(sup_id));

create table product(
product_id varchar(50),
p_name varchar(50),
p_quantity varchar(50),
p_price varchar(50),
p_exp varchar(50),
p_type varchar(50),
c_id varchar(50),
s_id varchar(50),
primary key(product_id));

create table invoice(
invoice_id varchar(50),
date varchar(50),
price varchar(50),
quantity varchar(50),
pick_up varchar(50),
drop_address varchar(50),
s_id varchar(50),
d_id varchar(50),
primary key(invoice_id));

create table store(
s_id varchar(50),
s_address varchar(50),
s_name varchar(50),
p_availability varchar(50),
sup_id varchar(50),
product_id varchar(50),
invoice_id varchar(50),
primary key(s_id));
alter table store
add foreign key(sup_id) references supplier(sup_id),
add foreign key(product_id) references product(product_id),
add foreign key(invoice_id) references invoice(invoice_id);

insert into store (S_id, s_name, s_address, p_availability) values ('29296', 'Jai Maruthi bar', 'Kormangala', 'no');
insert into store (S_id, s_name, s_address, p_availability) values ('97499', 'Pradeep liquor shop', 'RR Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('57771', 'UB spirits', 'HSR Layout', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('67088', 'Pradeep liquor shop', 'RR Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('25846', 'Ashwini wines', 'Giri Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('64434', 'UB spirits', 'HSR Layout', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('83449', 'Jai Maruthi bar', 'Kormangala', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('74748', 'Pradeep liquor shop', 'RR Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('84818', 'Pradeep liquor shop', 'RR Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('17345', 'White horse bar', 'Dwaraka Nagar', 'no');
insert into store (S_id, s_name, s_address, p_availability) values ('12362', 'Pradeep liquor shop', 'RR Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('82854', 'Ashwini wines', 'Giri Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('83272', 'UB spirits', 'HSR Layout', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('92044', 'White horse bar', 'Dwaraka Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('71083', 'Ashwini wines', 'Giri Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('03753', 'Ashwini wines', 'Giri Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('66512', 'UB spirits', 'HSR Layout', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('46332', 'Pradeep liquor shop', 'RR Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('02332', 'Pradeep liquor shop', 'RR Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('66364', 'Ashwini wines', 'Giri Nagar', 'no');
insert into store (S_id, s_name, s_address, p_availability) values ('25964', 'Ashwini wines', 'Giri Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('93970', 'Jai Maruthi bar', 'Kormangala', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('96232', 'Ashwini wines', 'Giri Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('46239', 'Ashwini wines', 'Giri Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('81783', 'Ashwini wines', 'Giri Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('40880', 'Jai Maruthi bar', 'Kormangala', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('00128', 'Ashwini wines', 'Giri Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('99823', 'Pradeep liquor shop', 'RR Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('65944', 'White horse bar', 'Dwaraka Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('00821', 'Ashwini wines', 'Giri Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('86058', 'Jai Maruthi bar', 'Kormangala', 'no');
insert into store (S_id, s_name, s_address, p_availability) values ('73579', 'UB spirits', 'HSR Layout', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('35239', 'UB spirits', 'HSR Layout', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('80969', 'White horse bar', 'Dwaraka Nagar', 'no');
insert into store (S_id, s_name, s_address, p_availability) values ('55546', 'White horse bar', 'Dwaraka Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('83040', 'Pradeep liquor shop', 'RR Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('68406', 'UB spirits', 'HSR Layout', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('64140', 'UB spirits', 'HSR Layout', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('98585', 'Ashwini wines', 'Giri Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('63352', 'White horse bar', 'Dwaraka Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('73832', 'Ashwini wines', 'Giri Nagar', 'no');
insert into store (S_id, s_name, s_address, p_availability) values ('72062', 'UB spirits', 'HSR Layout', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('65563', 'Ashwini wines', 'Giri Nagar', 'no');
insert into store (S_id, s_name, s_address, p_availability) values ('54156', 'Jai Maruthi bar', 'Kormangala', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('462176', 'Pradeep liquor shop', 'RR Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('19064', 'Pradeep liquor shop', 'RR Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('72514', 'White horse bar', 'Dwaraka Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('34390', 'Ashwini wines', 'Giri Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('68063', 'White horse bar', 'Dwaraka Nagar', 'yes');
insert into store (S_id, s_name, s_address, p_availability) values ('96388', 'Ashwini wines', 'Giri Nagar', 'yes');


select * from store;

insert into porder (order_id, order_items, order_status) values (1520, 'TI Mansion House French Brandy', 'accept');
insert into porder (order_id, order_items, order_status) values (1655, 'Bagpiper Deluxe Whisky', 'reject');
insert into porder (order_id, order_items, order_status) values (1685, 'Goanas Wine', 'reject');
insert into porder (order_id, order_items, order_status) values (1602, 'Viraat Red Wine', 'reject');
insert into porder (order_id, order_items, order_status) values (1562, 'Bagpiper Deluxe Whisky', 'accept');
insert into porder (order_id, order_items, order_status) values (1986, 'Original Choice Deluxe Whisky', 'accept');
insert into porder (order_id, order_items, order_status) values (1629, 'Goanas Wine', 'reject');
insert into porder (order_id, order_items, order_status) values (1762, 'Original Choice Deluxe Whisky', 'accept');
insert into porder (order_id, order_items, order_status) values (1776, 'Bagpiper Deluxe Whisky', 'accept');
insert into porder (order_id, order_items, order_status) values (1969, 'Bagpiper Deluxe Whisky', 'accept');
insert into porder (order_id, order_items, order_status) values (1817, '', 'accept');
insert into porder (order_id, order_items, order_status) values (1550, 'Morpheus XO Blended Premium Brandy', 'reject');
insert into porder (order_id, order_items, order_status) values (1991, 'No.1 Mcdowells Indian Brandy', 'accept');
insert into porder (order_id, order_items, order_status) values (1873, 'Original Choice Deluxe Whisky', 'accept');
insert into porder (order_id, order_items, order_status) values (1647, 'Goanas Wine', 'reject');
insert into porder (order_id, order_items, order_status) values (1669, 'Seagram''s Imperial Blue Superior Grain Whisky', 'reject');
insert into porder (order_id, order_items, order_status) values (1714, 'Seagram''s Imperial Blue Superior Grain Whisky', 'reject');
insert into porder (order_id, order_items, order_status) values (1648, 'No.1 Mcdowells Indian Brandy', 'reject');
insert into porder (order_id, order_items, order_status) values (1864, 'No.1 Mcdowells Indian Brandy', 'accept');
insert into porder (order_id, order_items, order_status) values (1649, 'Bagpiper Deluxe Whisky', 'reject');
insert into porder (order_id, order_items, order_status) values (1820, 'Bagpiper Deluxe Whisky', 'accept');
insert into porder (order_id, order_items, order_status) values (1587, 'Seagram''s Imperial Blue Superior Grain Whisky', 'reject');
insert into porder (order_id, order_items, order_status) values (1673, 'Bagpiper Deluxe Whisky', 'accept');
insert into porder (order_id, order_items, order_status) values (1928, 'TI Mansion House French Brandy', 'accept');
insert into porder (order_id, order_items, order_status) values (1790, 'Morpheus XO Blended Premium Brandy', 'accept');
insert into porder (order_id, order_items, order_status) values (1787, 'Mc Dowell''S No.1 Reserve Whisky', 'reject');
insert into porder (order_id, order_items, order_status) values (1285, 'No.1 Mcdowells Indian Brandy', 'reject');
insert into porder (order_id, order_items, order_status) values (1982, 'Bagpiper Deluxe Whisky', 'accept');
insert into porder (order_id, order_items, order_status) values (163269, 'Goanas Wine', 'reject');
insert into porder (order_id, order_items, order_status) values (1739, 'No.1 Mcdowells Indian Brandy', 'accept');
insert into porder (order_id, order_items, order_status) values (16616, 'No.1 Mcdowells Indian Brandy', 'accept');
insert into porder (order_id, order_items, order_status) values (1605, 'Goanas Wine', 'reject');
insert into porder (order_id, order_items, order_status) values (1728, 'Original Choice Deluxe Whisky', 'reject');
insert into porder (order_id, order_items, order_status) values (1689, 'Knock Out High Punch Strong Beer', 'reject');
insert into porder (order_id, order_items, order_status) values (1875, '8PM Rare Blend of Indian Whisky & Malts', 'accept');
insert into porder (order_id, order_items, order_status) values (1930, 'Seagram''s Imperial Blue Superior Grain Whisky', 'reject');
insert into porder (order_id, order_items, order_status) values (1747, 'Morpheus XO Blended Premium Brandy', 'accept');
insert into porder (order_id, order_items, order_status) values (1894, 'Morpheus XO Blended Premium Brandy', 'reject');
insert into porder (order_id, order_items, order_status) values (1660, 'Viraat Red Wine', 'reject');
insert into porder (order_id, order_items, order_status) values (1783, 'Original Choice Deluxe Whisky', 'accept');
insert into porder (order_id, order_items, order_status) values (1500, 'Seagram''s Imperial Blue Superior Grain Whisky', 'reject');
insert into porder (order_id, order_items, order_status) values (1929, '8PM Rare Blend of Indian Whisky & Malts', 'reject');
insert into porder (order_id, order_items, order_status) values (1814, 'Mc Dowell''S No.1 Reserve Whisky', 'accept');
insert into porder (order_id, order_items, order_status) values (1845, 'Mc Dowell''S No.1 Reserve Whisky', 'reject');
insert into porder (order_id, order_items, order_status) values (1810, '8PM Rare Blend of Indian Whisky & Malts', 'reject');
insert into porder (order_id, order_items, order_status) values (1880, 'Mc Dowell''S No.1 Reserve Whisky', 'reject');
insert into porder (order_id, order_items, order_status) values (1715, 'kingfisher', 'accept');
insert into porder (order_id, order_items, order_status) values (1632, 'Old Admiral VSOP Indian Brandy', 'accept');
insert into porder (order_id, order_items, order_status) values (15004, '8PM Rare Blend of Indian Whisky & Malts', 'accept');
insert into porder (order_id, order_items, order_status) values (15356, 'Mc Dowell''S No.1 Reserve Whisky', 'accept');

select * from porder;
select * from store;
with t1 as (select s_name ,order_status from store s1 inner join porder p1 
			on s1.s_id=p1.s_id)

select * from t1 where order_status="reject";
