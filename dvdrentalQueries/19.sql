-- Determine the monthly rental revenue for each city in the past year.

SELECT EXTRACT(MONTH FROM payment_date) mon, s.staff_id, city, SUM(amount)
FROM payment
JOIN staff s USING(staff_id)
JOIN address a USING(address_id)
JOIN city c USING(city_id)
WHERE payment_date < '2007-05-14 13:44:29.996577'::timestamp - interval '1 month'
GROUP BY mon, s.staff_id, city
ORDER BY mon, s.staff_id