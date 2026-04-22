with temp as (
	select *
    from order_details
    where quantity > 10
)
select order_id,
	avg(quantity) as average_quantity
from temp
group by order_id