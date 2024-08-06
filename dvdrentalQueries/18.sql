--  Find the total number of rentals for each store for each day in the past week.

SELECT
  s.store_id,
  DATE_TRUNC('day', r.rental_date) AS day,
  COUNT(r.rental_id) AS rental_count
FROM
  store s
  JOIN inventory i ON s.store_id = i.store_id
  JOIN rental r ON i.inventory_id = r.inventory_id
WHERE
  r.rental_date >= NOW() - INTERVAL '1 week'
GROUP BY
  s.store_id, day
ORDER BY
  s.store_id, day;
