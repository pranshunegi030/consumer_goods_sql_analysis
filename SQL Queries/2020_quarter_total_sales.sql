-- quarter of 2020, got the maximum total_sold_quantity

with
fact_fiscal_month as(
select 
	sold_quantity,
    month(adddate(date, INTERVAL 4 MONTH)) as fiscal_month
from fact_sales_monthly
where fiscal_year = 2020
),

quarter_sales as(
select 
	sold_quantity,
    CASE
		when fiscal_month in (1, 2, 3) then CONCAT("Q", 1)
        when fiscal_month in (4, 5, 6) then CONCAT("Q", 2)
        when fiscal_month in (7, 8, 9) then CONCAT("Q", 3)
        else CONCAT("Q", 4)
	END AS Quarter
from fact_fiscal_month
)

select
	Quarter,
    sum(sold_quantity) as total_sold_quantity
from quarter_sales
group by Quarter
order by total_sold_quantity desc;