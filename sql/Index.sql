-- Orders
CREATE INDEX IF NOT EXISTS ix_orders_order_id ON orders_dataset(order_id);
CREATE INDEX IF NOT EXISTS ix_orders_customer_id ON orders_dataset(customer_id);
CREATE INDEX IF NOT EXISTS ix_orders_purchase_date ON orders_dataset(order_purchase_timestamp);

-- Order Items
CREATE INDEX IF NOT EXISTS ix_items_order_id ON order_items_dataset(order_id);
CREATE INDEX IF NOT EXISTS ix_items_product_id ON order_items_dataset(product_id);
CREATE INDEX IF NOT EXISTS ix_items_seller_id ON order_items_dataset(seller_id);

-- Customers
CREATE INDEX IF NOT EXISTS ix_customers_customer_id ON customers_dataset(customer_id);
CREATE INDEX IF NOT EXISTS ix_customers_state ON customers_dataset(customer_state);

-- Payments
CREATE INDEX IF NOT EXISTS ix_payments_order_id ON order_payments_dataset(order_id);

-- Reviews
CREATE INDEX IF NOT EXISTS ix_reviews_order_id ON order_reviews_dataset(order_id);


