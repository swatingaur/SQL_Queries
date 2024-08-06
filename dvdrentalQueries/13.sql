--  Identify customers who have rented more than 10 films in the past month.

select distinct(customer_id), count(customer_id) from rental
GROUP BY customer_id, rental_date
having        rental_date >= to_date('2006-02-14','yyyy-mm-dd') - INTERVAL '6 month' AND COUNT(customer_id) > 1