
-- Find the count of payments per customer in descending order
SELECT customer_id, COUNT(*) AS payment_count
FROM payment
GROUP BY customer_id
ORDER BY COUNT(*) DESC;

-- Find the top 5 customers who have spent the most money
SELECT customer_id, SUM(amount) AS total_payment_amount
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

-- Find the bottom 5 customers who have spent the least money
SELECT customer_id, SUM(amount) AS total_payment_amount
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) ASC
LIMIT 5;

-- Find the top 10 customers with the highest average payment
-- rounded to two decimal places
SELECT customer_id, ROUND(AVG(amount), 2) AS average_payment_amount
FROM payment
GROUP BY customer_id
ORDER BY AVG(amount) DESC
LIMIT 5;

-- BONUS 1
SELECT first_name, last_name, COUNT(customer_id) AS customer_count
FROM payment AS a
JOIN staff AS b ON a.staff_id = b.staff_id
GROUP BY first_name, last_name
ORDER BY COUNT(customer_id) DESC;


-- BONUS 2
SELECT CAST(payment_date AS DATE) as payment_date, COUNT(*)
FROM payment
GROUP BY CAST(payment_date AS DATE)
ORDER BY COUNT(*) DESC;


