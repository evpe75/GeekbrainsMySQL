-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT products.* FROM products
JOIN 
	(SELECT catalog_id from products 
		WHERE products.name LIKE "Intel Core%"
		group by catalog_id) pc
ON products.catalog_id = pc.catalog_id