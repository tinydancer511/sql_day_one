-- #1 (Nick and Daryl)
select * from actor where last_name = 'Wahlberg';

--#2
select count(payment) from payment where amount between 3.99 and 5.99;

-- #3 
select max(inventory_id),film_id
from inventory 
group by film_id 
order by film_id desc

--#4 
select * from customer where last_name = 'William'

--#5
select staff_id, count(*) as total_rents
from rental 
group by staff_id
order by total_rents desc;

--#6 
select count(distinct first_name) from customer;
select count(distinct last_name) from customer;

--#7
select * from film_actor;
select film_id, count(*) film_actor
from film_actor
group by film_id
order by film_actor desc;

-- #8
select customer_id,last_name,store_id from customer where last_name like '%es'

-- #9 
select rental_id,customer_id from payment where customer_id between 380 and 430 and rental_id > 250 group by rental_id,customer_id order by rental_id desc

--#10
select distinct rating, count(*) as value_occurence from film group by rating order by value_occurence desc;
