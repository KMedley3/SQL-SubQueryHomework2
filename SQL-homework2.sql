-- Question 1 Homework
select first_name, last_name, customer_id, district
from customer
inner join address 
on customer.address_id = address.address_id
where district = 'Texas';

-- Question 2 Homework
select first_name, last_name, amount
from customer
inner join payment
on customer.customer_id = payment.customer_id
where amount > 6.99
order by amount

--Question 3 Homework
select first_name, last_name
from customer
where customer_id in (
	select customer_id
	from payment
	where amount > 175
)

--Question 4 Homework*****************
select customer.first_name, customer.last_name, country.country
from customer
full join address
on address.address_id = customer.address_id 
full join city
on city.city_id = address.city_id 
full join country
on country.country_id = city.country_id 
where country = 'Nepal'
-- 1  customer - Kevin Schuler is from Nepal


-- Question 5 Homework
select count(payment_id), staff_id 
from payment
group by staff_id 
-- staff_id 2
	
--Question 6 Homework
select count(film_id), rating
from film
group by rating 
--NC-17(209),G (178), PG-13 (223), PG (194), R (196)

--Question 7 Homework*************

select first_name, last_name
from customer
where customer_id in(
	select customer_id 
	from payment
	where amount > 6.99)
	
-- Mary Smith, Peter Menard, Harold Martino, Douglas Graf, Alvin Deloach, Alfredo Mcadams

--Question 8 Homework
select amount
from payment
inner join rental
on rental.rental_id = payment.rental_id 
where amount = 0
-- checked amount, there are negative number there were no "free" as in zero dollar amounts. 