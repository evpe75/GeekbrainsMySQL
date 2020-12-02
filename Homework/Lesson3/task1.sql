USE vk;

CREATE TABLE countries_codes (
	id SERIAL PRIMARY KEY COMMENT "Идентификатор строки",
	code BIGINT(10) NOT NULL UNIQUE COMMENT "Код страны",
	country_name VARCHAR(60) NOT NULL UNIQUE COMMENT "Наименование страны",
    created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT "Коды стран";

CREATE TABLE telecom_operators (
	countries_codes_id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатора кода страны",
	code INT(14) UNSIGNED NOT NULL COMMENT "Код оператора",
	operator_name VARCHAR(60) NOT NULL UNIQUE COMMENT "Наименование оператора связи",
    created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
	PRIMARY KEY (countries_codes_id, code) COMMENT "Составной первичный ключ"
) COMMENT "Коды операторов страны";


ALTER TABLE users ADD COLUMN countries_codes_id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор кода страны";

ALTER TABLE users ADD COLUMN telecom_operators_code INT(14) UNSIGNED NOT NULL COMMENT "Код оператора страны";

ALTER TABLE users MODIFY COLUMN phone VARCHAR(6) NOT NULL COMMENT "Телефон";

CREATE TABLE cities (
	countries_codes_id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатора кода страны",
	name varchar(100) NOT NULL COMMENT "Название города",
    created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
	PRIMARY KEY (countries_codes_id, name) COMMENT "Составной первичный ключ"
) COMMENT "ГОРОДА";

ALTER TABLE profiles DROP COLUMN city;
ALTER TABLE profiles DROP COLUMN country;

ALTER TABLE profiles ADD COLUMN countries_codes_id BIGINT UNSIGNED COMMENT "Идентификатор кода страны";
ALTER TABLE profiles ADD COLUMN city_name varchar(100) COMMENT "Название города";

/*
По материалу курса все понятно
 */

