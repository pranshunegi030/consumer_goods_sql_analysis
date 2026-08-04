-- Provide the list of markets in which customer  "Atliq  Exclusive"  operates its business in the  APAC  region.

select 
distinct(market) as market,
region
from dim_customer
where customer like "%AtliQ Exclusive%"
and
region = "APAC";
