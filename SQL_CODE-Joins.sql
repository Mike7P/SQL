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
