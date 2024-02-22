
SELECT DISTINCT item_name
FROM item
WHERE item_id IN (
    SELECT item_id
    FROM rating
    WHERE rating_stars >= 4
);
