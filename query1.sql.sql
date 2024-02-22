-- SQL statement to return the name of all items manufactured by 'Samsung' in descending order of price.
SELECT item_name
FROM item
WHERE item_manufacturer = 'Samsung'
ORDER BY item_price DESC;
