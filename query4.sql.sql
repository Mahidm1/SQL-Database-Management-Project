SELECT 
    (SELECT customer_name FROM customer WHERE customer_id = r.customer_id) AS customer_name,
    (SELECT item_name FROM item WHERE item_id = r.item_id) AS item_name,
    MAX(r.rating_stars) AS highest_star_rating
FROM 
    rating r
GROUP BY 
    r.customer_id, r.item_id
HAVING 
    COUNT(DISTINCT r.rating_stars) > 1 
    AND MAX(r.rating_stars) > MIN(r.rating_stars);
