SELECT sender_id, message_count
FROM(
  SELECT sender_id, COUNT(sender_id) as message_count, ROW_NUMBER() OVER(ORDER BY COUNT(sender_id) DESC) as rank
  FROM messages
  WHERE to_char(sent_date, 'mm-yyyy') = '08-2022'
  GROUP BY sender_id, message_count
) count_message
WHERE rank BETWEEN 1 AND 2
ORDER BY message_count DESC
