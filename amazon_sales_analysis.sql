DROP TABLE amazon_sales;
CREATE TABLE amazon_sales (
product_id TEXT,
product_name TEXT,
category TEXT,
discounted_price TEXT,
actual_price TEXT,
discount_percentage TEXT,
rating TEXT,
rating_count TEXT,
about_product TEXT,
user_id TEXT,
user_name TEXT,
review_id TEXT,
review_title TEXT,
review_content TEXT,
img_link TEXT,
product_link TEXT
);
COPY amazon_sales FROM 'C:\amazon.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',');
ALTER TABLE amazon_sales ADD COLUMN id SERIAL PRIMARY KEY;
SELECT product_name, actual_price, rating FROM amazon_sales WHERE rating ~ '^[0-9.]+$' AND rating:: numeric >= 4.5 ORDER BY actual_price DESC LIMIT 10;
