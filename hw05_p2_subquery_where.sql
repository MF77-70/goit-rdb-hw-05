select *
from order_details od
where od.order_id IN (
    select o.id
    from orders o
	where o.shipper_id = 3
);