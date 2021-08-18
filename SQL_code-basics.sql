SELECT FROM
WHERE
AND
OR
ORDER BY
ASC / DESC
LIMIT
BETWEEN
LIKE / ILIKE / NOT LIKE ('_%'')
IN / NOT IN ('John', 'Lucy)



SELECT * FROM film;

SELECT DISTINCT * FROM film;

SELECT COUNT (*) FROM film;

SELECT COUNT (DISTINCT title) FROM film;

SELECT email FROM customer
WHERE first_name='Nancy'
AND last_name='Thomas';

SELECT description FROM film
WHERE title='Outlaw Hanky';


SELECT phone FROM address
WHERE address='259 Ipoh Drive';


SELECT store_id, first_name, last_name FROM customer
ORDER BY store_id, first_name ASC;
# ORDER BY always goes last in your code block (Unless LIMIT is used)-


SELECT first_name, last_name FROM customer
ORDER BY store_id ASC, first_name DESC;

#What are the customer ids of the first 10 customers who created a payment -
SELECT customer_id FROM payment
ORDER BY payment_date ASC
LIMIT 10;

#What are the shortest 5 (in length of runtime) movies?
SELECT title FROM film
ORDER BY length ASC
LIMIT 5;

#Which movies are under 60mins long, order by shortest first.
SELECT title FROM film
WHERE length<60
ORDER BY length ASC;

#How amny movies are 50min or less-
SELECT COUNT(title) FROM film
WHERE length<=50
#37

#Tell me the first 5 payments between 2007-02-01 and 2007-02-20
SELECT * FROM payment
WHERE payment_date BETWEEN '2007-02-15' AND '2007-02-21'
LIMIT 5;

SELECT COUNT (*) FROM film
WHERE rating='R'
AND replacement_cost BETWEEN '4.99' AND '15.01'

SELECT * FROM customer
WHERE first_name in ('John', 'Julie', 'Jake')
#Selects the first names that are IN the coloumns

SELECT * FROM customer
WHERE first_name NOT in ('John', 'Julie', 'Jake')
#Selects the first names that are NOT IN the coloumns

SELECT * FROM customer
WHERE first_name LIKE 'J%';
#Returns every first name beginning with J

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%';
#Returns every first name beginning with and last name with S
#If you don't want it to be case sensitive you can use ILIKE 'j' or 's

SELECT * FROM customer
WHERE first_name LIKE '%er%';
#Returns anyone with er in their names

SELECT * FROM customer
WHERE first_name LIKE '_her%';
#Returns a first name with any one character at the front her and then whatever.


SELECT * FROM customer
WHERE first_name LIKE '__her%';
#Returns a first name with any two characters at the front, her and then wtr

SELECT * FROM customer
WHERE email NOT LIKE '%@gmail.com%' AND NOT LIKE '%@hotmail.co.uk%'
#Returns every email except Gmail emails AND hotmail accounts
