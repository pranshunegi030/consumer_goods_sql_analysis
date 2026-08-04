-- channel helped to bring more gross sales in the fiscal year 2021 
-- and the percentage of contribution

with
fact_gross_channel as(
select
	s.product_code,
    s.customer_code,
    c.channel,
    g.gross_price,
    s.sold_quantity
from fact_sales_monthly s
join dim_customer c
on c.customer_code = s.customer_code
join fact_gross_price g
on g.product_code = s.product_code and s.fiscal_year = g.fiscal_year
where s.fiscal_year = 2021
),

gross_sales_channel as (
select
	channel,
    round(sum(sold_quantity * gross_price)/1000000, 2) as gross_sales_mln
from fact_gross_channel
group by channel
)

select
	channel,
    gross_sales_mln,
    round(gross_sales_mln * 100/sum(gross_sales_mln) over(), 2) as percentage
from gross_sales_channel
group by channel
order by gross_sales_mln desc, percentage desc;


    