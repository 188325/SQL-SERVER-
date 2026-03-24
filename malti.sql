select * from customers 
select * from products 
select * from orders 
select * from order_items 
select * from returns 

select shipping_state,count(order_id) as total,sum(order_total) as revenue from orders 
group by shipping_state 
order by total desc 

select  top 10 shipping_city,count(*) as total_orders,sum(order_total) as revenue from orders 
group by shipping_city 
order by  total_orders desc, revenue desc

select oi.order_id,count(p.product_id)as product_count from order_items oi 
join products p on oi.product_id = p.product_id
group by order_id
having count(distinct p.product_id)=1

