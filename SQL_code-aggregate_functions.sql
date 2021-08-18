AVG() - Returns average
COUNT() - Returns number of values
MAX() - Returns Maximum value
MIN() - Returns Minimum value
SUM() - Returns the sum of all values
ROUND() - Rounds floating point number


SELECT MIN(replacement_cost) FROM film;
#Returns single MIN value

SELECT MAX(replacement_cost) FROM film;
#Returns single MAX value

SELECT MAX(replacement_cost), MIN (replacement_cost) FROM film;
Returns two values - MIN & MAX

SELECT AVG(replacement_cost) FROM film;
#Returns Average in floating point number

SELECT ROUND(AVG(replacement_cost), 2) FROM film;
#Returns rounded value (2sf in above e.g.)

SELECT SUM(replacement_cost) FROM film;
#Returns the sum of the coloumn



SELECT * customer_id FROM payment
GROUP BY customer_id;
# Simmilar outcome to DISTINCT. Youve grouped by customer_id.

SELECT * customer_id, SUM(amount) FROM payment
GROUP BY customer_id;
#Returns amount every cusommer spent.  grouped by customer_id

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;
# Same as above but  ordered by (Note, SUMM is used again as group by)

SELECT customer_id, COUNT(amount) FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) DESC;
#Returns the amount of transactions per customer

SELECT customer_id, staff_id SUM(amount) FROM payment
GROUP BY staff_id, customer_id
ORDER BY customer_id
#Returns how much each customer spent with each sales assistant.

SELECT DATE(payment_type) FROM payment
#Returns only DATE from timestamped coloumn

SELECT DATE(payment_type) FROM payment
GROUP BY DATE(payment_type)
#Returns DISTINCT dates

SELECT DATE(payment_type), SUM(amount) FROM payment
GROUP BY DATE(payment_type)
#Returns date with amounts per day
