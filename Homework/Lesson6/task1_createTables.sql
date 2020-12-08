CREATE TABLE likes (
	id SERIAL PRIMARY KEY COMMENT "Идентификатор лайка",
	content_id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор контента",
	content_type ENUM ("Media", "User", "Post", "Message") NOT NULL COMMENT "Тип контента",
	user_id BIGINT UNSIGNED NOT NULL COMMENT "Код кользователя, который поставил лайк",
	is_positive bool NOT NULL DEFAULT TRUE COMMENT "Лайк\Дизлайк",
    created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT "Лайки";

CREATE TABLE posts (
	id SERIAL PRIMARY KEY COMMENT 'Идентификатор поста',
	user_id bigint(20) unsigned NOT NULL COMMENT 'Идентификатор пользователя',
	posts_text VARCHAR(1000) COMMENT 'Текст поста',
	visibility ENUM('draft', 'private', 'for_friends', 'for_groups', 'for_all') NOT NULL DEFAULT 'draft' COMMENT 'Видимость поста',
  	created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  	updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки'
) COMMENT "Посты";

CREATE TABLE post_communities (
	post_id bigint unsigned NOT NULL COMMENT 'Идентификатор поста',
	community_id bigint unsigned NOT NULL COMMENT 'Идентификатор группы',
	enable bool NOT NULL DEFAULT TRUE COMMENT 'Признак включения доступности поста для группы, определяет валделец поста',	
	confirmed bool NOT NULL DEFAULT FALSE COMMENT 'Признак подвержденния администратором группы на показ поста в группе',
  	created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  	updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
	PRIMARY KEY (post_id, community_id)
) COMMENT 'Группы, для которых предназначен пост';

CREATE TABLE post_media (
	post_id bigint unsigned NOT NULL COMMENT 'Идентификатор поста',
	media_id bigint unsigned NOT NULL COMMENT 'Идентификатор медиа файла',
  	created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  	updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
	PRIMARY KEY (post_id, media_id)
) COMMENT 'Медиа файлы, опубликованные в посте';


