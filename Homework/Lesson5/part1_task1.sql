DROP TABLE IF EXISTS users_tmp;

CREATE TEMPORARY TABLE users_tmp (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) NOT NULL COMMENT 'Почта',
  `is_online` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Статус текущей октивности',
  `last_visited_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Когда был в сети последний раз',
  `created_at` datetime COMMENT 'Время создания строки',
  `updated_at` datetime COMMENT 'Время обновления строки',
  `countries_codes_id` bigint unsigned NOT NULL COMMENT 'Идентификатор кода страны',
  `telecom_operators_code` INT unsigned NOT NULL,
  PRIMARY KEY (`id`)
);


INSERT INTO users_tmp (first_name, last_name, email, is_online, last_visited_at, countries_codes_id, telecom_operators_code)
                SELECT first_name, last_name, email, is_online, last_visited_at, countries_codes_id, telecom_operators_code FROM users;
               
SELECT * FROM users_tmp;               
	
UPDATE users_tmp SET created_at = NOW(), updated_at = NOW(); 

SELECT * FROM users_tmp; 

DROP TABLE users_tmp;


