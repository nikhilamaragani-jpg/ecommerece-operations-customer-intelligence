# Data Dictionary

## Orders
order_id; customer_id; order_status; order_purchase_timestamp; order_approved_at; order_delivered_carrier_date; order_delivered_customer_date; order_estimated_delivery_date

## Order items
order_id; order_item_id; product_id; seller_id; shipping_limit_date; price; freight_value

## Customers
customer_id; customer_unique_id; customer_zip_code_prefix; customer_city; customer_state

## Products
product_id; product_category_name

## Reviews
review_id; order_id; review_score

## Geolocation
geolocation_zip_code_prefix; geolocation_lat; geolocation_lng; geolocation_city; geolocation_state

## Important note
The order-items table has no quantity field; revenue is sum(price) at order-line grain.

## Derived
revenue; delivery_days; delivery_delay_days; on_time_flag; repeat_customer_flag; year; quarter; month; weekday; hour
