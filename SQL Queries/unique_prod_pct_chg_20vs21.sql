--  What is the percentage of unique product increase in 2021 vs. 2020

with 
unq_prod as(
select
	COUNT(distinct case when fiscal_year = 2020 then product_code end) as unique_products_2020,
    COUNT(distinct case when fiscal_year = 2021 then product_code end) as unique_products_2021
from fact_sales_monthly
)

select 
unique_products_2020,
unique_products_2021,
ROUND((unique_products_2021 - unique_products_2020)/unique_products_2020, 2) as percentage_chg
from unq_prod;