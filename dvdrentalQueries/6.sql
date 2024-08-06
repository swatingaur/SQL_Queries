-- Write a query to evaluate film ratings as 'Poor' if the rating is 'G', 'Average' if the rating is 'PG', 'Good' if the rating is 'PG-13', and 'Excellent' if the rating is 'R'.

SELECT film_id, title, rating,
CASE
        WHEN rating = 'G' THEN 'Poor'
        WHEN rating = 'PG' THEN 'Average'
        WHEN rating = 'PG-13' THEN 'Good'
        WHEN rating = 'R' THEN 'Excellent'
        ELSE 'Not rated'
END As ratings
FROM film