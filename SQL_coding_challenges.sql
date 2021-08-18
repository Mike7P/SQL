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
