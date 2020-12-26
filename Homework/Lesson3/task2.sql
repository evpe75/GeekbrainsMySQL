USE vk;

CREATE TABLE likes (
	id SERIAL PRIMARY KEY COMMENT "������������� ������",
	content_id BIGINT UNSIGNED NOT NULL COMMENT "������������� ������ ��������",
	content_type ENUM ("Media", "User", "Post", "Message") NOT NULL COMMENT "��� ��������",
	user_id BIGINT UNSIGNED NOT NULL COMMENT "������ �� ������������",
    created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT '����� �������� ������',
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '����� ���������� ������'
) COMMENT "�����"