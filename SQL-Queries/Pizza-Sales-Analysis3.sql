use [Pizza DB];
go

select * from pizza_sales

select top 5 pizza_name , cast(sum(total_price) as decimal(10,2)) as TOTAL_REVENUE from pizza_sales
group by pizza_name
order by TOTAL_REVENUE desc

select top 5 pizza_name , cast(sum(total_price) as decimal(10,2)) as TOTAL_REVENUE from pizza_sales
group by pizza_name
order by TOTAL_REVENUE asc

select top 5 pizza_name , cast(sum(quantity) as decimal(10,2)) as TOTAL_QUANTITY from pizza_sales
group by pizza_name
order by TOTAL_QUANTITY desc

select top 5 pizza_name , cast(sum(quantity) as decimal(10,2)) as TOTAL_QUANTITY from pizza_sales
group by pizza_name
order by TOTAL_QUANTITY

select top 5 pizza_name , count(distinct order_id) as TOTAL_ORDER from pizza_sales
group by pizza_name
order by TOTAL_ORDER desc

select top 5 pizza_name , count(distinct order_id) as TOTAL_ORDER from pizza_sales
group by pizza_name
order by TOTAL_ORDER
