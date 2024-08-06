--  Find the average number of times each film has been rented

SELECT
  f.title,
  COUNT(r.rental_id) / COUNT(DISTINCT i.inventory_id) AS avg_rental_count
FROM
  film f
  JOIN inventory i ON f.film_id = i.film_id
  JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY
  f.title
ORDER BY
  avg_rental_count DESC;