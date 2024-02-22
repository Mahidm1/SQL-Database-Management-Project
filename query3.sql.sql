SELECT (SELECT item_name FROM item WHERE item_id = r.item_id) as item_name,
       ROUND(AVG(r.rating_stars), 2) as average_star_rating,
       MAX(r.rating_date) as most_recent_rating_date
FROM rating r
GROUP BY r.item_id
ORDER BY average_star_rating DESC;
