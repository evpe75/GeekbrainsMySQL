-- В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них. 
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //

CREATE TRIGGER check_product_name_description_insert BEFORE INSERT ON products
FOR EACH ROW 
BEGIN 
	IF NEW.name IS NULL and NEW.description IS NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insert canceled';
	END IF;
END//

CREATE TRIGGER check_product_name_description_update BEFORE UPDATE ON products
FOR EACH ROW 
BEGIN 
	IF NEW.name IS NULL and NEW.description IS NULL THEN
		SET NEW.name = COALESCE(NEW.name, OLD.name);
		IF NEW.name IS NULL THEN
			SET NEW.description = COALESCE(NEW.description, OLD.description);
		END IF;
	END IF;
END//


