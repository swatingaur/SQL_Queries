-- Write a query to classify customers as 'Low' if their total payment amount is less than 100, 'Medium' if it is between 100 and 500, and 'High' if it is more than 500.

SELECT p.customer_id, c.first_name, c.last_name, SUM(amount) as paid_amount,
        CASE 
        WHEN  SUM(amount) < 100
        THEN 'LOW'
        WHEN  SUM(amount) > 100 AND  SUM(amount) < 500
        THEN 'MEDIUM'
        WHEN  SUM(amount) > 500
        THEN 'HIGH'
        END AS result
        FROM customer c
        JOIN payment p ON c.customer_id = p.customer_id
        GROUP BY p.customer_id , c.first_name, c.last_name