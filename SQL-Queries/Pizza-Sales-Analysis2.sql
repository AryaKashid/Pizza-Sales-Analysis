select * from pizza_sales
select DATENAME(DW , order_date) as Order_day , count(distinct order_id) as Total_order from pizza_sales
group by DATENAME(DW , order_date) 

select DATENAME(Month , order_date) as Order_Month , COUNT(distinct order_id) as Total_order from pizza_sales
group by DATENAME(month , order_date)
order by Total_order desc