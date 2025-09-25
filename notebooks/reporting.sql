%sql
-- Total Sales per Product Category
SELECT
  product_category_name,
  total_sales
FROM delta.`/Volumes/lufthansa/gold/gold_vol/gold_sales_by_category`
ORDER BY total_sales DESC;

-- Avg Delivery Time per Seller (days)
SELECT
  seller_id,
  avg_delivery_days
FROM delta.`/Volumes/lufthansa/gold/gold_vol/gold_avg_delivery_by_seller`
ORDER BY avg_delivery_days DESC;

-- Number of Orders by Customer State
SELECT
  customer_state,
  order_count
FROM delta.`/Volumes/lufthansa/gold/gold_vol/gold_orders_by_state`
ORDER BY order_count DESC;