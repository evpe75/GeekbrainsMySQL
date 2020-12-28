-- 4. Подсчитать количество лайков которые получили 10 самых молодых пользователей.

SELECT 
	user_id, 
	birthday, 
	(select count(*) from likes where likes.user_id = profiles.user_id) as likes_count
FROM profiles
ORDER BY birthday DESC
LIMIT 10;