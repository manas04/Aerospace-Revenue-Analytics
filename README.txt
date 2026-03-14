<h1> Aircraft Parts Revenue & Pricing Analytics (Advanced SQL Project) </h1>
Project Overview

This project analyzes aerospace aircraft parts sales data using advanced SQL techniques. The goal is to simulate the work of a pricing or revenue analyst in the aerospace industry by answering real business questions such as revenue trends, pricing performance, airline purchasing behavior, and product demand patterns.

The analysis was performed using PostgreSQL in DBeaver and focuses on business insights derived from transactional sales data.

Dataset Description

The dataset represents aircraft parts sales transactions across multiple airlines and regions.

Tables

1. part_sales

Column	Description
transaction_id	Unique identifier for each sales transaction
order_date	Date of the order
airline	Airline purchasing the part
region	Geographic region of the airline
country	Airline country
aircraft_model	Aircraft model associated with the part
part_id	Unique identifier of the aircraft part
part_category	Category of aircraft part
quantity	Number of units purchased
unit_price	Price per unit
revenue	Total revenue generated from the transaction
discount_pct	Discount applied to the transaction

2. parts

Column	Description
part_id	Unique part identifier
part_name	Name of the aircraft part
part_category	Category of part
manufacturer	Manufacturer of the part
base_price_usd	Base price of the part
compatible_models	Aircraft models compatible with the part

3. airlines

Column	Description
airline	Airline name
country	Airline country
region	Geographic region
fleet_size	Total aircraft fleet size
Tools Used

PostgreSQL

DBeaver

Advanced SQL

Window Functions

CTEs (Common Table Expressions)

Key SQL Concepts Demonstrated

This project demonstrates several advanced SQL techniques including:

Aggregations and grouping

Window functions

Ranking functions (RANK, ROW_NUMBER, DENSE_RANK)

Common Table Expressions (CTEs)

Time series analysis

Rolling metrics

Revenue growth analysis

Business Questions Answered
Revenue Analytics

What is the total revenue generated from aircraft parts sales?

Which airlines generate the highest revenue?

Which parts generate the most revenue?

Time Series Analysis

Monthly revenue trends

Month-over-Month (MoM) revenue growth

Week-over-Week (WoW) revenue growth

Product Analytics

Top aircraft parts by revenue

Revenue contribution by part category

Average Selling Price (ASP) by category

Airline Analytics

Top airlines by total revenue

Airline purchase patterns

Airlines inactive in the last 180 days

Advanced Analytics

Top 3 parts by revenue within each month

Ranking parts by revenue

Running revenue analysis

Example Insights

Some potential insights from this dataset include:

Identifying the most profitable aircraft parts

Understanding airline purchasing behavior

Detecting revenue growth trends

Measuring pricing performance across categories

Evaluating discount impact on revenue

Project Structure
aerospace-sql-analytics
│
├── dataset
│   ├── part_sales.csv
│   ├── parts.csv
│   └── airlines.csv
│
├── sql
│   ├── revenue_analysis.sql
│   ├── pricing_analysis.sql
│   └── airline_analysis.sql
│
└── README.md
Learning Outcomes

Through this project, the following SQL and analytics skills were developed:

Writing complex SQL queries for business analytics

Using window functions for ranking and growth analysis

Building structured queries with CTEs

Performing pricing and revenue analysis on transactional datasets

Author

Manas Joshi
Pricing & Revenue Analytics | SQL | Python | Business Analytics
