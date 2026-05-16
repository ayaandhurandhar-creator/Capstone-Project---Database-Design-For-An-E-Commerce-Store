select customers.name , sum(amount) as total_spent 
from customers
join orders on customers.customer_id = orders.customer_id
join payments on orders.order_id = payments.order_id
group by name 
order by total_spent desc;   