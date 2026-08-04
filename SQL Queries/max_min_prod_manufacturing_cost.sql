--   Get the products that have the highest and lowest manufacturing costs.

with 
cte as(
select
	p.product_code,
    p.product,
    m.manufacturing_cost
from dim_product p
join fact_manufacturing_cost m
on m.product_code = p.product_code
)

select *
from cte
where manufacturing_cost in
(
	(select max(manufacturing_cost) from cte),
    (select min(manufacturing_cost) from cte)
)
order by manufacturing_cost desc;