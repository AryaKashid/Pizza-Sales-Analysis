use [Pizza DB];
GO

select * from pizza_sales

select datename(dw , order_date) as order_day , count(distinct order_id) as Total_order from pizza_sales
group by datename(dw , order_date) , Datepart(dw , order_date)
order by datepart(dw, order_date)


select datename(mm , order_date) as order_month , count(distinct order_id) as Total_orders from pizza_sales
group by datename(mm , order_date) , datepart(mm , order_date)
order by  datepart(mm , order_date)

select pizza_category ,sum(total_price) as total_sales ,  sum(total_price) * 100 / ( select sum(total_price) from pizza_sales) as percentage_total from pizza_sales
group by pizza_category

select pizza_category ,sum(total_price) as total_sales ,  sum(total_price) * 100 / ( select sum(total_price) from pizza_sales) as percentage_total from pizza_sales where month(order_date)=7
group by pizza_category

select pizza_category ,sum(total_price) as total_sales ,  sum(total_price) * 100 / ( select sum(total_price) from pizza_sales where month(order_date)=7) as percentage_total from pizza_sales where month(order_date)=7
group by pizza_category

select pizza_size ,sum(total_price) ,  sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as percent_total from pizza_sales 
group by pizza_size
order by percent_total desc

select pizza_size , sum(total_price) as Total_sales , cast(sum(total_price) *100 / (select sum(total_price) from pizza_sales) as decimal(10,2)) as PCT from pizza_sales
group by pizza_size
order by PCT desc

select pizza_size , cast(sum(total_price) as decimal(10,2)) as Total_sales , cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales where datepart(q , order_date) = 1 ) as decimal(10,2)) as PCT from pizza_sales 
where datepart(q , order_date) = 1
group by pizza_size
order by PCT desc

select pizza_category , sum(quantity) as Total_pizza_sold from pizza_sales
where datepart(q , order_date) = 2
group by pizza_category
order by Total_pizza_sold desc
