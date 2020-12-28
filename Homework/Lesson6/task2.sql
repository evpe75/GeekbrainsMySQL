

ALTER TABLE profiles 
ADD CONSTRAINT profiles_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE,
ADD CONSTRAINT profiles_photo_id_fk
	FOREIGN KEY (photo_id) REFERENCES media(id)
		ON DELETE SET NULL,
ADD CONSTRAINT profiles_status_id_fk
	FOREIGN KEY (status_id) REFERENCES user_statuses(id)
		ON DELETE RESTRICT,
ADD CONSTRAINT profiles_countries_codes_id_fk
	FOREIGN KEY (countries_codes_id) REFERENCES countries_codes(id)
		ON DELETE RESTRICT,
ADD CONSTRAINT profiles_city_name_fk
	FOREIGN KEY (countries_codes_id, city_name) REFERENCES cities(countries_codes_id, name);
		ON DELETE RESTRICT;
	
ALTER TABLE cities 
ADD CONSTRAINT cities_countries_codes_id_fk
	FOREIGN KEY (countries_codes_id) REFERENCES countries_codes(id)
		ON DELETE RESTRICT;
	
	
DESC media;

ALTER TABLE media 
ADD CONSTRAINT media_type_id_fk
	FOREIGN KEY (media_type_id) REFERENCES media_types(id)
		ON DELETE RESTRICT;

ALTER TABLE media_owners 
ADD CONSTRAINT media_owners_media_id_fk
	FOREIGN KEY (media_id) REFERENCES media(id)
		ON DELETE CASCADE,
ADD CONSTRAINT media_owners_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE;	
	
ALTER TABLE users_media 
ADD CONSTRAINT users_media_media_id_fk
	FOREIGN KEY (media_id) REFERENCES media(id)
		ON DELETE CASCADE,
ADD CONSTRAINT users_media_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE;	
	
ALTER TABLE telecom_operators 
ADD CONSTRAINT telecom_operators_countries_codes_id_fk
	FOREIGN KEY (countries_codes_id) REFERENCES countries_codes(id)
		ON DELETE RESTRICT;
	
	
ALTER TABLE users 
ADD CONSTRAINT users_telecom_operators_fk
	FOREIGN KEY (countries_codes_id, telecom_operators_code) REFERENCES telecom_operators(countries_codes_id, code)
		ON DELETE RESTRICT;
			
		
ALTER TABLE communities_users  
ADD CONSTRAINT communities_users_community_id_fk
	FOREIGN KEY (community_id) REFERENCES communities(id)
		ON DELETE CASCADE,
ADD CONSTRAINT communities_users_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE;

	
ALTER TABLE friendships 
ADD CONSTRAINT friendships_statuses_id_fk
	FOREIGN KEY (status_id) REFERENCES vk.friendship_statuses(id)
		ON DELETE RESTRICT,
ADD CONSTRAINT friendships_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE,	
ADD CONSTRAINT friendships_friend_id_fk
	FOREIGN KEY (friend_id) REFERENCES users(id)
		ON DELETE CASCADE;	
	
	
ALTER TABLE posts 
ADD CONSTRAINT posts_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE;
	
ALTER TABLE likes 
ADD CONSTRAINT likes_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE;

	
desc 	messages;

ALTER TABLE messages 
ADD CONSTRAINT messages_from_user_id_fk
	FOREIGN KEY (from_user_id) REFERENCES users(id),	
ADD CONSTRAINT messages_to_user_id_fk
	FOREIGN KEY (to_user_id) REFERENCES users(id);	

ALTER TABLE post_media 
ADD CONSTRAINT post_media_post_id_fk
	FOREIGN KEY (post_id) REFERENCES posts(id)
		ON DELETE CASCADE,
ADD CONSTRAINT post_media_media_id_fk
	FOREIGN KEY (media_id) REFERENCES media(id)
		ON DELETE CASCADE;
	
	
ALTER TABLE post_communities
ADD CONSTRAINT post_communities_post_id_fk
	FOREIGN KEY (post_id) REFERENCES posts(id)
		ON DELETE CASCADE,
ADD CONSTRAINT post_communities_community_id_fk
	FOREIGN KEY (community_id) REFERENCES communities(id)
		ON DELETE CASCADE;
	

	
	
		