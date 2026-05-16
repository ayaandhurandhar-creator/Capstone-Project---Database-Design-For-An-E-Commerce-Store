select count(*) as cancelled_orders
from orders
where order_status = "cancelled";