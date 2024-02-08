SELECT user_id, MAX(EXTRACT(doy from post_date)) - MIN(EXTRACT(doy from post_date)) AS days_between
FROM posts
WHERE EXTRACT(year from post_date) = 2021
GROUP BY user_id
HAVING COUNT(user_id) >= 2
