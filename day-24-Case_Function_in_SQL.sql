SELECT * FROM products;

/* Categorize the products in : 'Expensive' , 'Moderate' , 'Affordable'

if product is greater than RS.50000 , its expensive
if product is between RS.10000 and RS.50000 , its moderate
if product is less than RS.10000 , its affordable

*/

SELECT product_name , price ,
	CASE
		WHEN price>=50000 THEN 'Expensive'
		WHEN price>=10000 AND price<50000 THEN 'Moderate'
		ELSE 'Affordable'
	END AS product_expense
FROM products;