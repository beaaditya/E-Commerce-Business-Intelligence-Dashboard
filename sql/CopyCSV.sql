--copy com
COPY customers_dataset FROM 'Z:/archive/customers_dataset.csv' DELIMITER ',' CSV HEADER;

COPY geolocation_dataset FROM 'Z:/archive/geolocation_dataset.csv' DELIMITER ',' CSV HEADER;

COPY products_dataset FROM 'Z:/archive/products_dataset.csv' DELIMITER ',' CSV HEADER;

COPY sellers_dataset FROM 'Z:/archive/sellers_dataset.csv' DELIMITER ',' CSV HEADER;

COPY orders_dataset FROM 'Z:/archive/orders_dataset.csv' DELIMITER ',' CSV HEADER;

COPY order_items_dataset FROM 'Z:/archive/order_items_dataset.csv' DELIMITER ',' CSV HEADER;

COPY order_payments_dataset FROM 'Z:/archive/order_payments_dataset.csv' DELIMITER ',' CSV HEADER;

COPY order_reviews_dataset FROM 'Z:/archive/order_reviews_dataset.csv' DELIMITER ',' CSV HEADER;

COPY product_category_name_translation FROM 'Z:/archive/product_category_name_translation.csv' DELIMITER ',' CSV HEADER;



\i Z:/archive/geolocation_dataset_sql/geolocation_dataset_part001.sql

\d orders_dataset