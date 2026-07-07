 -- insert 
insert into eco_customer (customer_name, id_city)
values ('Green Foods', 1);

insert into eco_order (id_order, id_customer, id_distribution_center, order_date)
values ('O1021', last_insert_id(), 1, '2026-05-10');

-- update 
update eco_distribution_center
set distribution_center_name = 'Central Distribution Center'
where id_distribution_center = 1;

 -- delete 
delete from eco_product
where id_product = 999;