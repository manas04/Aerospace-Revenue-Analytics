# Aerospace SQL Practice Dataset

Files included:
- parts_sales.csv (50,000 rows) -> fact table
- parts.csv -> part dimension
- airlines.csv -> airline dimension

Recommended tables:
1. parts_sales(transaction_id, order_date, airline, region, country, aircraft_model, part_id, part_category, quantity, unit_price, revenue, discount_pct)
2. parts(part_id, part_name, part_category, manufacturer, base_price_usd, compatible_models)
3. airlines(airline, country, region, fleet_size)

Suggested joins:
- parts_sales.part_id = parts.part_id
- parts_sales.airline = airlines.airline

Good advanced SQL practice questions:
1. Monthly revenue by aircraft model
2. Top 3 parts by revenue in each month
3. Month-over-month revenue growth
4. Running revenue by airline
5. Rolling 90-day revenue by part category
6. Airlines with no purchases in the last 180 days
7. Rank manufacturers by total revenue
8. Average selling price by month and part category
9. Parts with increasing monthly revenue
10. Revenue share by region each month

DBeaver import:
- Right click database/schema
- Tools -> Import Data
- Choose CSV
- Import each file into a table with the same name as the file
