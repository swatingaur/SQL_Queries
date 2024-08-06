-- Write a query to transform the payment date to only include the year and month.

SELECT *, TO_CHAR(payment_date, 'YYYY-MM') FROM payment