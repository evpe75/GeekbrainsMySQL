CREATE TABLE user_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(100) NOT NULL COMMENT "Название статуса (уникально)",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Справочник статусов пользователей";  


ALTER TABLE profiles DROP COLUMN status; 
ALTER TABLE profiles ADD COLUMN status_id INT UNSIGNED DEFAULT 0 NOT NULL COMMENT "Текущий статус" AFTER photo_id;
ALTER TABLE profiles DROP COLUMN photo_id; 


ALTER TABLE messages ADD COLUMN is_read BOOLEAN COMMENT "Признак прочитанного сообщения" AFTER is_delivered;

ALTER TABLE media ADD COLUMN digest varchar(256) not null comment "SHA256 дайжест файла" AFTER filename;

CREATE TABLE users_media (
  user_id INT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
  media_id INT UNSIGNED NOT NULL COMMENT "Ссылка на медиа-файл",
  is_photo BOOLEAN NOT NULL DEFAULT false COMMENT "Данный файл является фотографией пользователя",	
  PRIMARY KEY (user_id, media_id) COMMENT "Составной первичный ключ"
) COMMENT "Принадлежность файла пользователю";

ALTER TABLE users ADD is_online BOOLEAN NOT NULL DEFAULT FALSE COMMENT "Статус текущей октивности" AFTER phone;
ALTER TABLE users ADD last_visited_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Когда был в сети последний раз" AFTER is_online;
ALTER TABLE users CHANGE phone phone VARCHAR(9) NOT NULL;
