select order_id,
	avg(quantity) as average_quauntity
from (select *
from order_details
where quantity > 10) as order_details_filtered
-- where quantity > 10
group by order_id
