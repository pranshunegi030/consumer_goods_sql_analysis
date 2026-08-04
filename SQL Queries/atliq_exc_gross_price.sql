-- Get the complete report of the Gross sales amount for the customer  “Atliq 
-- Exclusive”  for each month  .  This analysis helps to  get an idea of low and 
-- high-performing months and take strategic decisions.

with
fact_cust_sales as(
select
	c.customer,
    s.product_code,
    monthname(s.date) as month,
    s.fiscal_year,
    s.sold_quantity
from dim_customer c
join fact_sales_monthly s
using (customer_code)
),

cust_gross_price as(
select 
	c.*,
    g.gross_price
from fact_cust_sales c
join fact_gross_price g
using (product_code, fiscal_year)
)

select
	month,
    fiscal_year as year,
    round(sum(sold_quantity * gross_price), 2) as "Gross Sales Amount"
from cust_gross_price
where customer like "%AtliQ Exclusive%"
group by month, year;