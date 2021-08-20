INNER JOINS

SELECT reg_id, Logins.name, log_id From Registrations
INNER JOIN Logins
ON Registrations.name = Logins.name;


SELECT * FROM payment
INNER JOIN customer
ON customer.customer_id = payment.customer_id;

SELECT customer.customer_id, first_name, last_name, email
FROM payment
INNER JOIN customer
ON customer.customer_id = payment.customer_id;
#Use . notation when the colounm you select is in both tables.


FULL OUTER JOINS

SELECT * FROM regestrations
FULL OUTER JOIN Logins
ON regestrations.name = Logins.name;


FULL OUTER JOINS BELOW
(Gets rows unique to either table. Not in both tables)
The exact opposite to an INNER JOIN

SELECT * FROM regestrations
FULL OUTER JOIN Logins
ON regestrations.name = Logins.name
WHERE regestrations.name is null
OR Logins.name is null
