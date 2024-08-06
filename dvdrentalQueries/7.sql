-- Write a query to determine if a rental is 'Late' if returned more than 3 days after the rental date, and 'On Time' otherwise.

SELECT rental_id, rental_date, return_date,
CASE 
WHEN return_date > rental_date + INTERVAL '3 days' THEN 'LATE' 
--EXTRACT(DAY FROM return_date-rental_date) >=3 THEN 'LATE'
ELSE 'ON TIME'
END as Rentals
FROM rental