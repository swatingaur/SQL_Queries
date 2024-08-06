-- Write a query to categorize films as 'Short' if the length is less than 60 minutes, 'Medium' if the length is between 60 and 120 minutes, and 'Long' if the length is more than 120 minutes.

SELECT 
    title,
    length,
    CASE 
        WHEN length < 60 THEN 'Short'
        WHEN length BETWEEN 60 AND 120 THEN 'Medium'
        ELSE 'Long'
    END AS length_category
FROM 
    film;