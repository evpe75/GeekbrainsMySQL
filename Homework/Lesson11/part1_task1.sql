/* 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products 
 в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.*/
DROP TABLE IF EXISTS logs;

CREATE TABLE logs (
	id bigint UNSIGNED  NOT NULL AUTO_INCREMENT PRIMARY KEY,
	source_id bigint UNSIGNED NOT NULL COMMENT 'Первичный ключ',
	source_type enum("users", "catalogs", "products") NOT NULL COMMENT 'Тип источника',
	source_name varchar(255) DEFAULT NULL COMMENT 'Наименование из исходной таблицы',
	source_created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата и время создания строки исходной таблицы'
) COMMENT 'Лог создания записей' ENGINE=Archive;

DELIMITER //

CREATE TRIGGER log_users_insert AFTER INSERT ON users
FOR EACH ROW 
BEGIN
	INSERT INTO logs (source_id, source_type, source_name, source_created_at)
		VALUES (NEW.id, "users", NEW.name, NEW.created_at);
END//

CREATE TRIGGER log_catalogs_insert AFTER INSERT ON catalogs
FOR EACH ROW 
BEGIN
	INSERT INTO logs (source_id, source_type, source_name)
		VALUES (NEW.id, "catalogs", NEW.name);
END//

CREATE TRIGGER log_product_insert AFTER INSERT ON products
FOR EACH ROW 
BEGIN
	INSERT INTO logs (source_id, source_type, source_name, source_created_at)
		VALUES (NEW.id, "products", NEW.name, NEW.created_at);
END//