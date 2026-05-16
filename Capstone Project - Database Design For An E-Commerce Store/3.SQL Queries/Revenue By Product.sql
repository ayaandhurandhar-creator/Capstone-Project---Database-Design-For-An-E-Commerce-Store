select products.product_name , sum(order_items.quantity * products.price) as revenue
from products 
join order_items on products.product_id = order_items.product_id
join orders on order_items.order_id = orders.order_id
where order_status = "delivered"
group by product_name 
order by revenue desc;

