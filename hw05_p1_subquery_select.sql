select 
	od.*,
    (select customer_id
    from orders o
     WHERE o.id = od.order_id) AS customer_id
from order_details od


