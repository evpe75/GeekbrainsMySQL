-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT count(id) as count_likes, 'm' as gender FROM likes
	WHERE user_id in (select user_id from profiles where gender = 'm')
UNION 	
SELECT count(id) as count_likes, 'f' as gender FROM likes
	WHERE user_id in (select user_id from profiles where gender = 'f')	 