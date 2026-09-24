/* 
	Q1) Classify products based on quantity available  : using CASE & AND & OR operator
		quantity >= 10 ---> In stock
		5 <= quantity < 10  ---> Limited Stock
		quantity < 5  ---> Out of stock soon
*/

SELECT * FROM products;

SELECT product_name , quantity ,
	CASE
		WHEN quantity >= 10 THEN 'In Stock'
		WHEN quantity < 10 AND quantity >= 5 THEN 'Limited Stock'
		WHEN quantity < 5 THEN 'Out of Stock soon'
		ELSE 'Out of Stock'
	END AS quanity_status

	FROM products;


/* 
	Q2) Category Classification  : using 	CASE & LIKE operater
		If category name is Electronics return Electronic Item
*/


SELECT product_name , category ,
	CASE
		WHEN category LIKE 'Electronic%' THEN 'Electronic Item'
		WHEN category LIKE 'Accessories' THEN 'Accessory Item'
		ELSE 'Furniture Item'
	END AS Category_Type
FROM products;