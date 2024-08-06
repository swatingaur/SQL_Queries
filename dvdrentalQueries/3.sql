--  Write a query to calculate rental fees where a 10% discount is applied for rentals of more than 7 days.

SELECT r.rental_id, r.rental_date, r.return_date, p.amount, p.payment_date, 
        CASE 
        WHEN (EXTRACT (DAY FROM r.return_date - r.rental_date) > 7) 
        THEN p.amount*0.9 
        ELSE p.amount 
        END discounted_price
        FROM rental r 
JOIN payment p 
ON p.rental_id = r.rental_id 