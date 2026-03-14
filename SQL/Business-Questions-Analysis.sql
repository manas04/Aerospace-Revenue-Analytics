-- ################################################
-- 			Data Analysis of Aerospace data
-- ################################################


-- 1. query to see data in airlines table
select * from airlines limit 10;


-- 2. query to see in part_sales table
select * from part_sales limit 10;


-- 3. query to see in parts table
select * from parts limit 10;


-- 4. Total Revenue generated across all parts
select round(sum(revenue),2) as total_revenue from part_sales;


-- 5. Total quantity of parts sold
select count(*) as part_quantity from part_sales;


-- 6. Airline wise total revenue
select airline, sum(revenue) as total_revenue from part_sales group by airline order by total_revenue desc;


-- 7. Part wise total revenue
select part_id, sum(revenue) as total_revenue from part_sales group by part_id order by total_revenue desc;


-- 8. Part Category wise total revenue
select part_category, sum(revenue) as total_revenue from part_sales group by part_category order by total_revenue desc;


-- 9. Part Category wise Average Selling Price (Revenue/Quantity)
select part_category, sum(revenue)/sum(quantity) as asp from part_sales group by part_category order by asp desc;


-- 10. Monthly Revenue Trend
select date_trunc('month', order_date) as month, sum(revenue) from part_sales group by date_trunc('month', order_date) order by month;


-- 11. Month with Highest Revenue
select date_trunc('month', order_date) as month, sum(revenue) as total_revenue from part_sales group by month order by total_revenue desc limit 1;


-- 12. Revenue share of each airline 
select airline, round(100*sum(revenue)/ (select sum(revenue) from part_sales),2) as pct_share from part_sales group by airline order by pct_share desc;

-- 13. Month over Month (MoM) Revenue
-- CTE for monthly revenue
with monthly_revenue as (
select date_trunc('month', order_date) as month, sum(revenue) as revenue
from part_sales 
group by month
order by month
)

select month, revenue, lag(revenue) over(order by month) as previous_revenue, 
round(100*(revenue- lag(revenue) over(order by month))/nullif(lag(revenue) over(order by month),0),2)
as revenue_growth_pct from monthly_revenue


-- 14. Week Over Week (WoW) Revenue
-- CTE for weekly revenue
with weekly_revenue as (
select date_trunc('week', order_date) as week, sum(revenue) as revenue
from part_sales 
group by week
order by week
)

select week, revenue, lag(revenue) over(order by week) as previous_revenue, 
round(100*(revenue- lag(revenue) over(order by week))/nullif(lag(revenue) over(order by week),0),2) 
as revenue_growth_pct from weekly_revenue



































