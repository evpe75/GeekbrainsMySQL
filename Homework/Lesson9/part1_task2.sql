-- Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW producs_catalogs_names AS
SELECT 
	p.name as product_name,
	c.name as catalod_name
FROM products p
JOIN catalogs c
ON p.catalog_id = c.id;

