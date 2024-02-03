-- Using subqueries, display the titles of all films of which
-- employee `Jon Stephens` rented out to customers.
SELECT title
FROM film
WHERE film_id IN
  (
  SELECT film_id
  FROM inventory
  WHERE inventory_id IN
    (
    SELECT inventory_id
    FROM rental
    WHERE rental_id IN
      (
      SELECT rental_id
      FROM payment
      WHERE staff_id IN
        (
        SELECT staff_id
        FROM staff
        WHERE last_name = 'Stephens' AND first_name = 'Jon'
        )
      )
    )
  );

-- Using subqueries, find the total rental amount paid for the film `ACE GOLDFINGER`
SELECT SUM(amount) AS total_amount
FROM payment
WHERE rental_id IN
	(
	SELECT rental_id
	FROM rental
	WHERE inventory_id IN
		(
		SELECT inventory_id
		FROM inventory
		WHERE film_id IN
			(
			SELECT film_id
			FROM film
			WHERE title = 'ACE GOLDFINGER'
			)
		)
	);
