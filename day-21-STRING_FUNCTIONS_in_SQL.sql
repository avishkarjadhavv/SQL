SELECT * FROM products;


-- Get every category name in capital letters : with UPPER()

SELECT UPPER(category) FROM products;


-- Get every product name in lowercases : with LOWER()

SELECT LOWER(product_name) FROM products;


-- Get product names with their string length : with LENGTH()

SELECT product_name , LENGTH(product_name) FROM products;


-- Get product names , category , in one column : CONCAT()

SELECT CONCAT(product_name,category) FROM products;                                  -- displays both columns attached
SELECT product_name , category , CONCAT(product_name,category) FROM products;
SELECT product_name , category , CONCAT(product_name,'__',category) FROM products;   -- Also can add string in between


-- Get first 4 letters of Category names : with SUBSTRING() and LEFT()

SELECT category , SUBSTRING(category,4,LENGTH(category)) FROM products;

SELECT category , SUBSTRING(category,1,4) FROM products;
SELECT category , LEFT(category,4) FROM products;


-- Get last 4 letters of Category names : with SUBSTRING() and RIGHT()

SELECT category , SUBSTRING(category,LENGTH(category)-3,LENGTH(category)) FROM products;
SELECT category , RIGHT(category,4) FROM products;

-- Get Product names without leading or trailing spaces : with TRIM()

SELECT product_name , TRIM(product_name)
FROM products;


-- Replace category = 'Electronics' to 'Electronic' : with REPLACE()

SELECT product_name , category , REPLACE(category,'cs','c')
FROM products
WHERE category = 'Electronics';

-- Replace phone to Device everywhere in column product_name 

SELECT product_name , REPLACE(product_name,'phone','Device') FROM products;


