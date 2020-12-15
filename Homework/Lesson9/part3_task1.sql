-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

-- DELIMITER //

DROP PROCEDURE IF EXISTS hello;

DELIMITER //

CREATE PROCEDURE hello()
BEGIN
	set time_zone = '+03:00';	
	CASE True
		WHEN CURRENT_TIME() BETWEEN '00:00:00' AND '05:59:59' THEN SELECT "Доброй ночи";
		WHEN CURRENT_TIME() BETWEEN '06:00:00' AND '11:59:59' THEN SELECT "Доброе утро";
		WHEN CURRENT_TIME() BETWEEN '12:00:00' AND '17:59:59' THEN SELECT "Добрый день";
		ELSE SELECT "Добрый вечер";
	END CASE;
END//



CALL hello();