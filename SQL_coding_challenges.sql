
#GROUP BY Challenges

SELECT staff_id, COUNT(payment_id) FROM payment
GROUP BY staff_id
ORDER BY COUNT(payment_id) DESC;


SELECT rating, ROUND(AVG(replacement_cost), 2) FROM film
GROUP BY rating


SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;



#HAVING Challenges

SELECT customer_id, COUNT(payment_id) FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) >= 40
ORDER BY COUNT(payment_id) DESC;
#or
SELECT customer_id, COUNT(*) FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40
ORDER BY COUNT(*) DESC;


SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >=100

Assignment 1

1. Return the customer IDs of customers who have spent at least $110 with
the staff member who has an ID of 2.
The answer should be customers 187 and 148.
SELECT customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >=110
or
SELECT customer_id,SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 110;

2. How many films begin with the letter J?
The answer should be 20.
SELECT COUNT(title) FROM film
WHERE title ILIKE 'j%';
or
SELECT COUNT(*) FROM film
WHERE title LIKE 'J%';

3. What customer has the highest customer ID number whose name starts
 with an 'E' and has an address ID lower than 500?
The answer is Eddie Tomlin
SELECT * FROM customer
WHERE first_name ILIKE 'E%' AND address_id < 500
ORDER BY customer_id DESC;
or
SELECT first_name,last_name FROM customer
WHERE first_name LIKE 'E%'
AND address_id <500
ORDER BY customer_id DESC
LIMIT 1;
