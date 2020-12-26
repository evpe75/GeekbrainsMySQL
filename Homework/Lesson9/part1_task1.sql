-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. 
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

TRUNCATE TABLE sample.users;

START TRANSACTION;

INSERT INTO sample.users SELECT u.* FROM shop.users u WHERE u.id = 1;

COMMIT;

select * from sample.users;
