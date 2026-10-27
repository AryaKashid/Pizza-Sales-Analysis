select * from pizza_sales
select sum(total_price) as Total_Revenue from pizza_sales
select sum(total_price) / count(distinct order_id) as Average_order_value from pizza_sales
select sum(quantity) as total_pizza_sold from pizza_sales
select count(distinct order_id) as Total_orders from pizza_sales
select sum(quantity) / count(distinct order_id) as Average_pizzas_per_Order from pizza_sales
select cast(cast(sum(quantity) as decimal(10,2)) / cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) as Average_pizzas_per_Order from pizza_sales
