-- Find the average rental duration for each category.

SELECT c.category_id, c.name, ROUND(avg(f.rental_duration),2) FROM category c
        INNER JOIN film_category fc using (category_id)
        inner join film f using (film_id)
        group by c.name, c.category_id