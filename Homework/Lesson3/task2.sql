USE vk;

CREATE TABLE likes (
	id SERIAL PRIMARY KEY COMMENT "Идентификатор строки",
	content_id BIGINT UNSIGNED NOT NULL COMMENT "Идентификатор строки контента",
	content_type ENUM ("Media", "User", "Post", "Message") NOT NULL COMMENT "Тип контента",
	user_id BIGINT UNSIGNED NOT NULL COMMENT "Ссылка на пользователя",
    created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки'
) COMMENT "Лайки"