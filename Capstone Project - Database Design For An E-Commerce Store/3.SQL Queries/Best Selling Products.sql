select products.product_name , sum(order_items.quantity) as total_sold
from products join order_items on products.product_id = order_items.product_id
group by product_name
order by total_Sold desc;


