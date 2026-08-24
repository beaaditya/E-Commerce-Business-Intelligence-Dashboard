-- Link Orders to Customers
ALTER TABLE orders_dataset
ADD CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id) REFERENCES customers_dataset(customer_id);

-- Link Order Items to Orders, Products, and Sellers
ALTER TABLE order_items_dataset
ADD CONSTRAINT fk_items_orders
FOREIGN KEY (order_id) REFERENCES orders_dataset(order_id),
ADD CONSTRAINT fk_items_products
FOREIGN KEY (product_id) REFERENCES products_dataset(product_id),
ADD CONSTRAINT fk_items_sellers
FOREIGN KEY (seller_id) REFERENCES sellers_dataset(seller_id);

-- Link Order Payments to Orders
ALTER TABLE order_payments_dataset
ADD CONSTRAINT fk_payments_orders
FOREIGN KEY (order_id) REFERENCES orders_dataset(order_id);

-- Link Order Reviews to Orders
ALTER TABLE order_reviews_dataset
ADD CONSTRAINT fk_reviews_orders
FOREIGN KEY (order_id) REFERENCES orders_dataset(order_id);