# consumer_goods_sql_analysis
A comprehensive MySQL based Consumer Goods Analytics project developed to solve real world business requests for AtliQ Hardwares. This project focuses on analyzing sales performance, customer behavior, product trends, discounts, manufacturing costs and channel contributions by writing optimized SQL queries to generate actionable business insights.

**Project Overview :**

This project is a part of the Codebasics Resume Project Challenge, where the objective is to solve real-world business problems for AtliQ Hardwares, a leading consumer goods company, using MySQL.

The project consists of 10 ad-hoc business requests that require writing optimized SQL queries to extract actionable insights from multiple relational tables. Along with the SQL analysis, business insights were presented through a professional PowerPoint presentation to simulate reporting to stakeholders.

**Problem Statement :**

AtliQ Hardwares (imaginary company) is one of the leading computer hardware producers in India and has expanded well in other countries too.

The management team at AtliQ Hardwares requested several one-time (ad-hoc) analyses to better understand product performance, customer behavior, sales trends, discounts, manufacturing costs, and channel contribution.

The objective was to answer these business questions using SQL and translate the results into meaningful business insights that support strategic decision-making.

**Tools & Technologies :**

1) MySQL

2) SQL (Joins, CTEs, Window Functions, Aggregate Functions, CASE Statements)

3) Microsoft Excel (Charts)

4) Microsoft PowerPoint

**Database Overview :**

The analysis was performed using multiple fact and dimension tables, including:

1) dim_customer

   Link :
   https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Data%20Tables/dim_customer.png

2) dim_product

   Link :
   https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Data%20Tables/dim_product.png

3) fact_sales_monthly

   Link :
   https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Data%20Tables/fact_sales_monthly.png

4) fact_gross_price

   Link :
   https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Data%20Tables/fact_gross_price.png

5) fact_manufacturing_cost

   Link :
   https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Data%20Tables/fact_manufacturing_cost.png

6) fact_pre_invoice_deductions

   Link :
   https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Data%20Tables/fact_pre_invoice_deduction.png

**Business Requests Solved :**

**1) Markets of Atliq Exclusive in the APAC Region :**

Objective: Identified all APAC markets where AtliQ Exclusive operates to understand the company's regional footprint.

Business Value: Helps management evaluate market coverage and identify opportunities for expansion within the APAC region.

Query : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/SQL%20Queries/market_for_APAC_atliq_excl.sql

Output : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Output%20Screenshots/market_for_apac_atliq_excl.png

**2) Percentage Increase in Unique Products (2021 vs 2020) :**

Objective: Compared the number of unique products introduced in 2021 against 2020 and calculated the percentage growth.

Business Value: Measures product portfolio expansion and reflects the company's innovation and growth strategy.

Query : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/SQL%20Queries/unique_prod_pct_chg_20vs21.sql

Output : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Output%20Screenshots/unq_prod_pct_chg_20vs21.png

**3) Product Count by Segment :**

Objective: Analyzed the distribution of unique products across different business segments.

Business Value: Helps identify which segments have the widest product offerings and supports portfolio planning.

Query : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/SQL%20Queries/segment_unique_prod_count.sql

Output : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Output%20Screenshots/segment_unique_product_count.png

**4) Segment-wise Product Expansion :**

Objective: Measured the increase in unique products for each segment between 2020 and 2021.

Business Value: Highlights the fastest-growing segments and supports investment and product development decisions.

Query : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/SQL%20Queries/segment_unique_prod_count_increase.sql

Output : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Output%20Screenshots/segment_unique_product_count_increase.png

**5) Manufacturing Cost Analysis :**

Objective: Identified the products with the highest and lowest manufacturing costs.

Business Value: Enables cost optimization, pricing strategy evaluation, and profitability analysis.

Query : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/SQL%20Queries/max_min_prod_manufacturing_cost.sql

Output : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Output%20Screenshots/max_min_prod_manufacturing_cost.png

**6) Customer Discount Analysis :**

Objective: Retrieved the top five customers receiving the highest average pre-invoice discounts in the Indian market during FY2021.

Business Value: Supports discount policy evaluation and helps identify high-value customer relationships.

Query : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/SQL%20Queries/avg_pre_inv_disc_top5_cust.sql

Output : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Output%20Screenshots/avg_pre_inv_disc_top5_cust.png

**7) Monthly Gross Sales Trend :**

Objective: Analyzed month-wise gross sales for AtliQ Exclusive.

Business Value: Reveals seasonal trends, peak sales periods, and months requiring strategic attention.

Query : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/SQL%20Queries/atliq_exc_gross_price.sql

Output : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Output%20Screenshots/atliq_exc_gross_price.png

**8) Quarterly Sales Performance :**

Objective: Determined the fiscal quarter with the highest total sold quantity in FY2020.

Business Value: Assists demand planning, inventory management, and production scheduling.

Query : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/SQL%20Queries/2020_quarter_total_sales.sql

Output : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Output%20Screenshots/2020_quarter_total_sales.png

**9) Sales Channel Performance :**

Objective: Evaluated gross sales contribution across different sales channels during FY2021.

Business Value: Identifies the most effective sales channels and supports resource allocation decisions.

Query : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/SQL%20Queries/gross_sales_per_channel.sql

Output : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Output%20Screenshots/gross_sales_per_channel.png

**10) Top Products by Division :**

Objective: Ranked the top three products in each division based on total sold quantity during FY2021.

Business Value: Helps stakeholders identify best-selling products, optimize inventory, and prioritize product strategies.

Query : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/SQL%20Queries/top_3_products_division.sql

Output : https://github.com/pranshunegi030/consumer_goods_sql_analysis/blob/main/Output%20Screenshots/top3_product_division.png

**Key Skills Demonstrated :**

1) Complex SQL Query Writing

2) Multi-table Joins

3) Common Table Expressions (CTEs)

4) Window Functions (RANK, DENSE_RANK)

5) Aggregate Functions

6) CASE Statements

7) Business Problem Solving

8) Data Analysis

9) Data Storytelling

10) Business Insight Generation
