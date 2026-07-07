-- query 1: available inventory by product
select
    product_name,
    stock
from eco_product
order by stock desc;

-- query 2: order history by city
select
    eco_city.city_name,
    count(eco_order.id_order) as total_orders
from eco_order
join eco_customer
    on eco_order.id_customer = eco_customer.id_customer
join eco_city
    on eco_customer.id_city = eco_city.id_city
group by eco_city.city_name
order by total_orders desc;

-- query 3: total sales by category
select
    eco_category.category_name,
    sum(eco_order_detail.quantity * eco_order_detail.historical_price) as total_sales
from eco_order_detail
join eco_product
    on eco_order_detail.id_product = eco_product.id_product
join eco_category
    on eco_product.id_category = eco_category.id_category
group by eco_category.category_name
order by total_sales desc;

-- query 4: products with the lowest inventory
select
    product_name,
    stock
from eco_product
order by stock asc
limit 5;

-- query 5: customers with the highest number of orders
select
    eco_customer.customer_name,
    count(eco_order.id_order) as total_orders
from eco_customer
join eco_order
    on eco_customer.id_customer = eco_order.id_customer
group by eco_customer.customer_name
order by total_orders desc;

-- query 6: inventory value by distribution center
select
    eco_distribution_center.distribution_center_name,
    sum(eco_product.stock * eco_product.unit_price) as inventory_value
from eco_distribution_center
cross join eco_product
group by eco_distribution_center.distribution_center_name;