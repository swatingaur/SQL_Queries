--  Analyze the trend of total payments by day of the week.

SELECT
  TO_CHAR(p.payment_date, 'Day') AS day_of_week,
  SUM(p.amount) AS total_payment
FROM
  payment p
GROUP BY
  TO_CHAR(p.payment_date, 'Day')
ORDER BY
  day_of_week;