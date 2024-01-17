/* Link to challenge: https://datalemur.com/questions/sql-histogram-tweets */

-- Using common table expression (CTE) to get user id and the number of tweet in that year
WITH tweet_2022 AS(
SELECT user_id, COUNT(tweet_id) as total_tweet
FROM tweets
WHERE DATE_PART('YEAR', tweet_date) = 2022
GROUP BY user_id
)

-- Get the total of user(s) with same total of tweet
SELECT total_tweet as tweet_bucket, COUNT(user_id) as users_num
FROM tweet_2022
GROUP BY total_tweet;
