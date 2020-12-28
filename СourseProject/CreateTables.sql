
CREATE DATABASE IF NOT EXISTS football_life;

USE football_life;

CREATE TABLE IF NOT EXISTS countries_codes (
  code int unsigned NOT NULL PRIMARY KEY COMMENT 'Код страны',
  country_name varchar(60) NOT NULL UNIQUE COMMENT 'Наименование страны',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT='Коды стран';

CREATE TABLE IF NOT EXISTS cities (
  id int unsigned NOT NULL auto_increment PRIMARY KEY COMMENT 'Идентификатор города',
  countries_code int unsigned NOT NULL COMMENT 'Код страны',
  name varchar(100) NOT NULL COMMENT 'Название города',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT='ГОРОДА';


CREATE TABLE IF NOT EXISTS telecom_operators (
  countries_code int unsigned NOT NULL COMMENT 'Код страны',
  code int unsigned NOT NULL COMMENT 'Код оператора',
  operator_name varchar(60) NOT NULL UNIQUE COMMENT 'Наименование оператора связи',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (countries_code, code) COMMENT 'Составной первичный ключ'
) COMMENT='Коды операторов страны';
	

CREATE TABLE IF NOT EXISTS users (
  id SERIAL COMMENT 'Идентификатор строки',
  nikname varchar(100) NOT NULL UNIQUE COMMENT 'Псевдоним пользовтеля',
  first_name varchar(100) NOT NULL COMMENT 'Имя пользователя',
  last_name varchar(100) NOT NULL COMMENT 'Фамилия пользователя',
  email varchar(100) COMMENT 'Почта',
  phone_countries_code int unsigned COMMENT 'Код страны',
  phone_telecom_operators_code int unsigned COMMENT 'Код оператора страны',
  phone varchar(7) COMMENT 'Номер телефона',
  user_type enum("player", "field_owner") NOT NULL DEFAULT "player" COMMENT 'Тип пользователя: игрок или арендодатель',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (id)
) COMMENT='Пользователи';

 
CREATE TABLE IF NOT EXISTS players_profiles (
  user_id bigint unsigned NOT NULL PRIMARY KEY COMMENT 'Ссылка на пользователя',
  gender enum("male", "female") NOT NULL COMMENT 'Пол',
  birthday date DEFAULT NULL COMMENT 'Дата рождения',
  my_country_code int unsigned NOT NULL COMMENT 'Код страны пользователя',
  my_city_id int unsigned NOT NULL COMMENT 'Идентификатор города пользователя',
  is_online bit NOT NULL DEFAULT 0 COMMENT 'Пользователь в онлайне',
  last_visited_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Когда был в сети последний раз',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT='Профиль игрока'; 

	
CREATE TABLE IF NOT EXISTS player_roles (
  player_id bigint unsigned NOT NULL COMMENT 'Идентификатор игрока',
  player_role enum('forward', 'midfielder', 'defender', 'goalkeeper') COMMENT 'Роль игрока',
  role_type enum('base', 'can_do_if_necessary', 'never'),
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (player_id, player_role)
) COMMENT='Роли игрока в команде'; 

CREATE TABLE IF NOT EXISTS teams (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор команды',
  name varchar(100) NOT NULL UNIQUE COMMENT 'Название команды',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT='Команды'; 

	
CREATE TABLE IF NOT EXISTS team_members (
  team_id bigint unsigned NOT NULL COMMENT 'Идентификатор команды',
  player_id bigint unsigned NOT NULL COMMENT 'Идентификатор игрока',
  team_role enum ("admin", "capitan", "captains_assistant", "player") NOT NULL DEFAULT "player" COMMENT 'Роль игрока в команде',
  is_sponsor bit NOT NULL DEFAULT 0 COMMENT 'Игрок является спонсором команды',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT='Состав команды'; 

	
CREATE TABLE IF NOT EXISTS requests_join_team (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор запрос',
  from_player_id bigint unsigned NOT NULL COMMENT 'Идентификатор игрока от кого',
  to_team_id bigint unsigned NOT NULL COMMENT 'Идентификатор команды кому',
  ready_be_sponsor bit NOT NULL DEFAULT 0 COMMENT 'Готов быть спонсором команды',
  message varchar(500) COMMENT 'Сообщение',
  status enum("under_consideration", "viewed", "denied", "approved") NOT NULL DEFAULT "under_consideration" COMMENT 'Статус заявки',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT='Заявки на участие в команде'; 


CREATE TABLE IF NOT EXISTS invitations_join_team (
  id SERIAL PRIMARY KEY COMMENT 'Идентификатор приглашения',
  from_team_id bigint unsigned NOT NULL COMMENT 'Идентификатор команды от кого',
  to_player_id bigint unsigned NOT NULL COMMENT 'Идентификатор игрока кому',
  message varchar(500) COMMENT 'Сообщение',
  status enum("under_consideration", "viewed", "denied", "approved") NOT NULL DEFAULT "under_consideration" COMMENT 'Статус приглашения',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT='Приглашения на участие в команде'; 


CREATE TABLE IF NOT EXISTS favorite_teams_contenders (
  my_team_id bigint unsigned NOT NULL COMMENT 'Идентификатор моей команды',
  contender_team_id bigint unsigned NOT NULL COMMENT 'Идентификатор команды соперника',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (my_team_id, contender_team_id)
) COMMENT='Мои любимые соперники'; 

CREATE TABLE IF NOT EXISTS ignore_teams (
  my_team_id bigint unsigned NOT NULL COMMENT 'Идентификатор моей команды',
  ignore_team_id bigint unsigned NOT NULL COMMENT 'Идентификатор игнорируемой команды',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (my_team_id, ignore_team_id)
) COMMENT='Игнор-лист команд'; 

	

CREATE TABLE IF NOT EXISTS owners_profiles (
  user_id bigint unsigned NOT NULL PRIMARY KEY COMMENT 'Ссылка на пользователя',
  my_country_code int unsigned NOT NULL COMMENT 'Код страны пользователя',
  my_city_id int unsigned NOT NULL COMMENT 'Идентификатор города пользователя',
  is_online bit NOT NULL DEFAULT 0 COMMENT 'Пользователь в онлайне',
  last_visited_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Когда был в сети последний раз',
  created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT='Профиль арендодателя'; 


CREATE TABLE IF NOT EXISTS football_fields (
	id SERIAL PRIMARY KEY COMMENT 'Идентификатор поля',
	name varchar(100) NOT NULL COMMENT 'Наименование поля',
  	owner_id bigint unsigned NOT NULL COMMENT 'Владелец поля, ссылка на профиль владельца',
    country_code int unsigned NOT NULL COMMENT 'Код страны, в которой находится поле',
  	city_id int unsigned NOT NULL COMMENT 'Идентификатор города, в котором находится поле',
	field_format enum ("full_field", "half_field", "futsal") NOT NULL COMMENT 'Формат поля',
	address varchar(50) NOT NULL COMMENT 'Адрес',
	description varchar(1000) COMMENT 'Описание',
  	created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  	updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT='Футбольные поля'; 


CREATE TABLE IF NOT EXISTS timetable (
	id SERIAL PRIMARY KEY COMMENT 'Идентификатор записи расписания',
  	football_fields_id bigint unsigned NOT NULL COMMENT 'Идентификатор поля',
  	timetable_date date NOT NULL COMMENT 'День расписания',
  	begin_at datetime NOT NULL COMMENT 'Время начала игры',
  	end_at datetime NOT NULL COMMENT 'Время окончания игры',
  	cost DECIMAL(8,2) unsigned NOT NULL DEFAULT 0 COMMENT 'Стоимость',
  	team_id bigint unsigned COMMENT 'Играющая команда',
  	created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  	updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT='Расписание футбольных полей'; 

	
CREATE TABLE IF NOT EXISTS play_offers (
	id SERIAL PRIMARY KEY COMMENT 'Идентификатор записи предложения',
  	timetable_id bigint unsigned NOT NULL COMMENT 'Идентификатор расписания',
  	offer_type enum ("lease_transfer", "joint_game") NOT NULL COMMENT 'Тип предложения',
  	payment_demand enum ("free", "half_cost", "full_cost") NOT NULL COMMENT 'Требование по оплате',
  	min_players int unsigned COMMENT 'Минимальное количество игроков',
  	visibility enum ("all", "favorite_teams", "team") NOT NULL DEFAULT "all" COMMENT 'Видимость предложения',
  	team_id bigint unsigned COMMENT 'Идентификатор команды, которой направлено предложение',
  	status enum ("draft", "open", "closed") COMMENT 'Статус предложения',
  	created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  	updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT='Предложения игры'; 

	
CREATE TABLE IF NOT EXISTS play_offers_responses (
	id SERIAL PRIMARY KEY COMMENT 'Идентификатор записи отклика на предложение игры',
	play_offers_id bigint unsigned NOT NULL COMMENT 'Идентификатор предложения игры',
  	team_id bigint unsigned NOT NULL COMMENT 'Идентификатор команды, которой направлено предложение',
  	status enum("under_consideration", "viewed", "denied", "approved") NOT NULL DEFAULT "under_consideration" COMMENT 'Статус отклика',
  	created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  	updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT='Отклики на предложения игры'; 
	

