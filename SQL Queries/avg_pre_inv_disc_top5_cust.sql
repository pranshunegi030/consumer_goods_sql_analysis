--  Generate a report which contains the top 5 customers who received an 
-- average high  pre_invoice_discount_pct  for the  fiscal  year 2021  and in the 
-- Indian  market.

with 
fact_sales_pre_inv as (
select
	c.customer_code,
    c.customer,
    i.pre_invoice_discount_pct
from fact_pre_invoice_deductions i
join dim_customer c
on c.customer_code = i.customer_code
where i.fiscal_year = 2021 and c.market = "India"
)

select 
	customer_code,
    customer,
    round(avg(pre_invoice_discount_pct), 3) as average_discount_percentage
from fact_sales_pre_inv 
group by customer_code, customer
order by avg(pre_invoice_discount_pct) desc
limit 5;