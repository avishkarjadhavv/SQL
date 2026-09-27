SELECT * FROM products;

UPDATE products
SET discount_rate = price * 0.1
WHERE product_id NOT IN (1,3,6);

ALTER TABLE products
ADD COLUMN final_price NUMERIC(10,3)

UPDATE products
SET final_price = price * 0.9
WHERE product_id NOT IN (1,3,6);

UPDATE products
SET discount_rate = NULL
WHERE product_id IN (1,3,6);

SELECT product_name , price , discount_rate , final_price FROM products;



SELECT product_name , price , discount_rate ,
		COALESCE(final_price , price) AS final_price
FROM products;


-- Wherever final_price column have null values , 
-- Those empty space will be filled with price column values : with COALESCE(A_Column , B_Column)