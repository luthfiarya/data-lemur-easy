SELECT COUNT(CASE WHEN device_type = 'laptop' THEN device_type END) AS laptop_views,
COUNT(CASE WHEN device_type IN ('phone','tablet') THEN device_type END) AS mobile_views
FROM viewership
