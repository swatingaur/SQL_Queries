-- Determine the total number of rentals for films in each language.

SELECT language_id, count(rental_id)
FROM language l
LEFT JOIN film f USING(language_id)
LEFT JOIN inventory i USING(film_id)
LEFT JOIN rental r USING(inventory_id)
GROUP BY language_id