--  Identify and remove duplicate customer records based on email.

DELETE FROM customer
WHERE customer_id NOT IN (
  SELECT MIN(customer_id)
  FROM customer
  GROUP BY email
);