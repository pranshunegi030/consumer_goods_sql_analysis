--  segment that had the most increase in unique products in 2021 vs 2020

with
dim_product_fy as(
select
	p.*,
    s.fiscal_year
from dim_product p
join fact_sales_monthly s
on s.product_code = p.product_code
),

pc_2020 as (
select
	segment,
    count(distinct(product_code)) as product_count_2020
from dim_product_fy
where fiscal_year = 2020
group by segment
),

pc_2021 as (
select
	segment,
    count(distinct(product_code)) as product_count_2021
from dim_product_fy
where fiscal_year = 2021
group by segment
)

select 
o.segment,
o.product_count_2020,
l.product_count_2021,
(l.product_count_2021 - o.product_count_2020) as difference
from pc_2020 o
join pc_2021 l
using (segment);