-- Create customer revenue view
CREATE VIEW customer_revenues AS
SELECT first_name, last_name, COUNT(payment_id) AS payment_count, SUM(amount) AS total_amount
FROM payment AS a
JOIN customer AS b ON a.customer_id = b.customer_id
GROUP BY first_name, last_name
ORDER BY SUM(amount) DESC;

-- Query customer revenue view
SELECT *
FROM customer_revenues
WHERE first_name = 'THERESA'
AND last_name = 'WATSON';

-- BONUS
-- Create staff sales view
CREATE VIEW staff_sales AS
SELECT staff_id, CAST(payment_date as DATE), COUNT(payment_id) AS payment_count, SUM(amount) AS total_amount
FROM payment
WHERE staff_id IN
(
	SELECT staff_id
	FROM staff
	WHERE first_name = 'Mike'
	AND last_name = 'Hillyer'
)
GROUP BY staff_id, CAST(payment_date AS DATE)
ORDER BY CAST(payment_date AS DATE) DESC;

-- Query staff sales view
SELECT *
FROM staff_sales
WHERE payment_date = '2005-07-31';
