USE vk;

CREATE TABLE countries_codes (
	id SERIAL PRIMARY KEY COMMENT "������������� ������",
	code BIGINT(10) NOT NULL UNIQUE COMMENT "��� ������",
	country_name VARCHAR(60) NOT NULL UNIQUE COMMENT "������������ ������",
    created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������'
) COMMENT "���� �����";

CREATE TABLE telecom_operators (
	countries_codes_id BIGINT UNSIGNED NOT NULL COMMENT "�������������� ���� ������",
	code INT(14) UNSIGNED NOT NULL COMMENT "��� ���������",
	operator_name VARCHAR(60) NOT NULL UNIQUE COMMENT "������������ ��������� �����",
    created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
	PRIMARY KEY (countries_codes_id, code) COMMENT "��������� ��������� ����"
) COMMENT "���� ���������� ������";


ALTER TABLE users ADD COLUMN countries_codes_id BIGINT UNSIGNED NOT NULL COMMENT "������������� ���� ������";

ALTER TABLE users ADD COLUMN telecom_operators_code INT(14) UNSIGNED NOT NULL COMMENT "��� ��������� ������";

ALTER TABLE users MODIFY COLUMN phone VARCHAR(6) NOT NULL COMMENT "�������";

CREATE TABLE cities (
	countries_codes_id BIGINT UNSIGNED NOT NULL COMMENT "�������������� ���� ������",
	name varchar(100) NOT NULL COMMENT "�������� ������",
    created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������',
	PRIMARY KEY (countries_codes_id, name) COMMENT "��������� ��������� ����"
) COMMENT "������";

ALTER TABLE profiles DROP COLUMN city;
ALTER TABLE profiles DROP COLUMN country;

ALTER TABLE profiles ADD COLUMN countries_codes_id BIGINT UNSIGNED COMMENT "������������� ���� ������";
ALTER TABLE profiles ADD COLUMN city_name varchar(100) COMMENT "�������� ������";

/*
�� ��������� ����� ��� �������
 */

