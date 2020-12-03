CREATE TEMPORARY TABLE storehouses_products (
  id bigint unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  product_name varchar(100) NOT NULL COMMENT 'Наименование продукта',
  value int NOT NULL COMMENT 'Количество в наличии'
)

INSERT INTO storehouses_products (product_name, value) VALUES 
('Хлеб', 0),
('Пиво', 2500),
('Яблоки', 0),
('Шампанское', 30),
('Лимонад', 500),
('Шоколад', 1)

SELECT * FROM storehouses_products ORDER BY IF (VALUE > 0, 0, 1), value;

