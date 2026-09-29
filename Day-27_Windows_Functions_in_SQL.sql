SELECT * FROM products;

-- Assign a unique row number to each product within the same category

SELECT product_name , category , price ,
		ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC) AS row_rank FROM products;


SELECT product_name , category , price ,
		DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS row_rank FROM products;
		

SELECT product_name , category , price ,
		RANK() OVER(PARTITION BY category ORDER BY price DESC) AS row_rank FROM products;


-- Add the price of previous product to current product price and display in separate column

SELECT product_name , category , price ,
		SUM(price) OVER(ORDER BY price DESC) AS row_rank FROM products;


-- Give average of the price of product and display in separate column

SELECT product_name , category , price ,
		AVG(price) OVER(PARTITION BY category ORDER BY price DESC) AS row_avg FROM products;