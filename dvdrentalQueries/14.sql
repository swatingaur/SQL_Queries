-- Calculate the total revenue generated by films featuring each actor.

SELECT first_name || ' ' || last_name, SUM(amount), ARRAY_AGG(DISTINCT film_id)
        FROM actor -- 200
        INNER JOIN film_actor USING (actor_id) -- 199
        INNER JOIN film USING(film_id)
        INNER JOIN inventory USING(film_id)
        INNER JOIN rental USING(inventory_id)
        INNER JOIN payment USING (rental_id)
        GROUP BY first_name, last_name