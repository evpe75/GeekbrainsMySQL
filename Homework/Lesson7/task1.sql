-- 1. Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT users.* FROM users
JOIN 
(SELECT user_id from orders GROUP BY user_id) ou
ON users.id = ou.user_id

