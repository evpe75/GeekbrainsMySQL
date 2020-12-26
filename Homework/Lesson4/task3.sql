
desc countries_codes;
SELECT * FROM countries_codes;

DELETE FROM countries_codes WHERE id > 30; 
UPDATE countries_codes SET updated_at = created_at WHERE updated_at < created_at;
UPDATE countries_codes SET cou = FLOOR(RAND() * 2);


desc telecom_operators;
SELECT * from telecom_operators;
UPDATE telecom_operators SET code = code + 100 WHERE code < 100;
UPDATE telecom_operators SET updated_at = created_at WHERE updated_at < created_at;

desc users;

SELECT * FROM users;

UPDATE users SET id = id-100;
UPDATE users SET is_online = FLOOR(RAND() * 2);
UPDATE users SET countries_codes_id = FLOOR(1 + RAND() * 30);
UPDATE users SET telecom_operators_code = (SELECT code FROM telecom_operators telop WHERE telop.countries_codes_id = users.countries_codes_id ORDER BY RAND() LIMIT 1);
UPDATE users SET countries_codes_id = FLOOR(1 + RAND() * 30);
UPDATE users SET phone = CONCAT(SUBSTR(CAST(FLOOR(10000 + RAND() * 1000) as CHAR(5)), 3, 3),
 				                "-",
					            SUBSTR(CAST(FLOOR(10000 + RAND() * 100) as CHAR(5)), 4, 2),
					            "-", 
					            SUBSTR(CAST(FLOOR(10000 + RAND() * 100) as CHAR(5)), 4, 2));
					           
DESC messages;
SELECT * FROM messages LIMIT 100;
UPDATE messages SET 
  from_user_id = FLOOR(1 + RAND() * 100),
  to_user_id = FLOOR(1 + RAND() * 100),
  is_read = 0;			
 
 
SELECT * FROM users_media;
UPDATE users_media SET is_photo = FLOOR(RAND() * 2);
					           

SELECT *FROM media_types;					           
TRUNCATE media_types;
INSERT INTO media_types (name) VALUES
  ('photo'),
  ('video'),
  ('audio');
					           
SELECT * FROM media;

UPDATE media SET media_type_id = FLOOR(1 + RAND() * 3);
UPDATE media SET user_id = FLOOR(1 + RAND() * 100);

CREATE TEMPORARY TABLE extensions (name VARCHAR(10));

INSERT INTO extensions VALUES ('jpeg'), ('avi'), ('mpeg'), ('png');

SELECT * FROM extensions;

UPDATE media SET filename = CONCAT(
  'http://dropbox.net/vk/',
  filename,
  (SELECT last_name FROM users ORDER BY RAND() LIMIT 1),
  '.',
  (SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);

UPDATE media SET size = FLOOR(10000 + (RAND() * 1000000)) WHERE size < 1000;


ALTER TABLE media MODIFY COLUMN metadata VARCHAR(150);

-- Заполняем метаданные
UPDATE media SET metadata = CONCAT('{"owner":"', 
  (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
  '"}');  

-- Возвращаем столбцу метеданных правильный тип
ALTER TABLE media MODIFY COLUMN metadata JSON;


desc cities;
SELECT * FROM cities;
UPDATE cities SET name = CONCAT(UCASE(SUBSTR(name, 1, 1)), SUBSTR(name, 2, LENGTH(name)-1))
				           
					           
desc profiles;
select * from profiles;
UPDATE profiles SET user_id = user_id-100;

CREATE TEMPORARY TABLE genders (name CHAR(1));

INSERT INTO genders VALUES ('m'), ('f'); 

SELECT * FROM genders;

UPDATE profiles 
  SET gender = (SELECT name FROM genders ORDER BY RAND() LIMIT 1);
 
UPDATE profiles 
  SET city_name = (SELECT name FROM cities WHERE countries_codes_id = profiles.countries_codes_id ORDER BY RAND() LIMIT 1);
 
UPDATE profiles SET status_id = (SELECT id FROM user_statuses ORDER BY RAND() LIMIT 1);

DESC friendship;
RENAME TABLE friendship TO friendships;

SELECT * FROM friendships;
UPDATE friendships SET 
  user_id = FLOOR(1 + RAND() * 100),
  friend_id = FLOOR(1 + RAND() * 100);

-- Исправляем случай когда user_id = friend_id
UPDATE friendships SET friend_id = friend_id + 1 WHERE user_id = friend_id;



SELECT * FROM friendship_statuses;

TRUNCATE friendship_statuses;

INSERT INTO friendship_statuses (name) VALUES
  ('Requested'),
  ('Confirmed'),
  ('Rejected');
 
-- Обновляем ссылки на статус 
UPDATE friendships SET status_id = FLOOR(1 + RAND() * 3); 


SELECT * FROM communities;

DELETE FROM communities WHERE id > 20;

SELECT * FROM communities_users;

UPDATE communities_users 
	SET community_id = FLOOR(1 + RAND() * 20),
        user_id = user_id - 100;





