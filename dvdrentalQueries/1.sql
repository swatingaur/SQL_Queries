SELECT f.actor_id, a.first_name, a.last_name, count(film_id) film_count
        FROM film_actor f
        JOIN actor a 
        ON a.actor_id = f.actor_id
GROUP BY f.actor_id, a.first_name, a.last_name
ORDER BY film_count desc