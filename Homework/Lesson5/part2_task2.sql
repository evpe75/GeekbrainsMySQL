SELECT 
	DATE_FORMAT(DATE_ADD(birthday, INTERVAL TIMESTAMPDIFF(YEAR, birthday, NOW()) YEAR), "%W") as day_of_week,
	count(*),
	DATE_FORMAT(DATE_ADD(birthday, INTERVAL TIMESTAMPDIFF(YEAR, birthday, NOW()) YEAR), "%w") as num_day_of_week
FROM profiles
GROUP BY day_of_week, num_day_of_week
ORDER BY num_day_of_week;

