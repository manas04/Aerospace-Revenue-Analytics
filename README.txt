# Aerospace SQL Practice Dataset

Files included:
- parts_sales.csv (50,000 rows) -> fact table
- parts.csv -> part dimension
- airlines.csv -> airline dimension

Tables with their respective columns:
1. parts_sales(transaction_id, order_date, airline, region, country, aircraft_model, part_id, part_category, quantity, unit_price, revenue, discount_pct)
2. parts(part_id, part_name, part_category, manufacturer, base_price_usd, compatible_models)
3. airlines(airline, country, region, fleet_size)



