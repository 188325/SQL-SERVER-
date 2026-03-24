select * from customers 
select * from products 
select * from orders 
select * from order_items 
select * from returns 

with store as (select count(customer_id) as total,
	case when count(*)=1 then 'one_time_customer'
	else 'repeat_customer'
	end as customer_type,sum(order_total) as revenue from orders 
group by customer_id)

select customer_type,count(*) as total_customers, sum(revenue)as total_revenue from store 
group by customer_type 

select  datepart(hour,order_datetime)as order_hour,count(*) as order_number from orders 
group by datepart(hour,order_datetime) 
order by order_number  desc 

select  datepart(month,order_datetime) as months, sum(order_total) as month_revenue from orders 
group by datepart(month,order_datetime)
order by month_revenue  desc 

select payment_method,count(*) as total,sum(order_total) as revenue,((revenue/total)*100)as percentage from orders 
group by payment_method
order by revenue desc 