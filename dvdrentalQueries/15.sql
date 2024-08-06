--  List all inventory items along with their rental status (rented or available).

SELECT *, CASE WHEN return_date IS NULL 
THEN 'RENTED'
ELSE 'AVAILABLE' 
END Availability
FROM rental