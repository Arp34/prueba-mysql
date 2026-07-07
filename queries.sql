 -- Query 1: Available inventory by product
select
    product_name,
    stock
from eco_product
order by stock desc;

-- Query 2: Order history by city
select
    c.city_name,
    count(o.id_order) as total_orders
from eco_order o
join eco_customer cu on o.id_customer = cu.id_customer
join eco_city c on cu.id_city = c.id_city
group by c.city_name
order by total_orders desc;

-- Query 3: Total sales by category
select
    ca.category_name,
    sum(od.quantity * od.historical_price) as total_sales
from eco_order_detail od
join eco_product p on od.id_product = p.id_product
join eco_category ca on p.id_category = ca.id_category
group by ca.category_name
order by total_sales desc;

-- Query 4: Products with the lowest inventory
select
    product_name,
    stock
from eco_product
order by stock asc
limit 5;

-- Query 5: Customers with the highest number of orders
select
    cu.customer_name,
    count(o.id_order) as total_orders
from eco_customer cu
join eco_order o on cu.id_customer = o.id_customer
group by cu.customer_name
order by total_orders desc;

-- Query 6: Inventory value by distribution center
select
    dc.distribution_center_name,
    sum(p.stock * p.unit_price) as inventory_value
from eco_distribution_center dc
cross join eco_product p
group by dc.distribution_center_name;