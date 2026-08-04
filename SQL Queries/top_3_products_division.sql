-- Get the Top 3 products in each division that have a high 
-- total_sold_quantity in the fiscal_year 2021

with
fact_prod_sales as (
select
	p.division,
    s.product_code,
    p.product,
    s.sold_quantity
from dim_product p
join fact_sales_monthly s
on s.product_code = p.product_code
where s.fiscal_year = 2021
),

prod_total_sales as (
select 
	division,
    product_code,
    product,
    sum(sold_quantity) as total_sold_quantity
from fact_prod_sales
group by product_code, product, division
),

div_rank as(
select
	*,
    dense_rank() over ( partition by division order by total_sold_quantity desc) as rank_order
from prod_total_sales
)

select *
from div_rank
where rank_order <= 3
order by division;