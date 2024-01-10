-- Query only the `first_name` field
SELECT first_name
FROM customer;

-- Filter the query to show only male customers under the age of 34
SELECT first_name, last_name
FROM customer
WHERE gender = 'Male'
AND age < 34;

-- Alias
SELECT c.first_name, c.last_name
FROM customer as c
WHERE c.gender = 'Male'
AND c.age < 34;