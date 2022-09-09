-- LAB sql join (10)

-- List the number of films per category.
use sakila;
select * from category;
select * from film;
select * from film_category;

select count(*),name from category c inner join film_category fc on c.category_id=fc.category_id group by name;

-- Display the first and the last names, as well as the address, of each staff member.

select * from staff;
select * from address;

select s.first_name, s.last_name,a.address from staff s left join address a on s.address_id = a.address_id;

-- Display the total amount rung up by each staff member in August 2005.
select * from staff;
select * from payment;

select s.last_name,sum(p.amount) from staff s left join payment p on s.staff_id = p.staff_id
group by s.last_name;

-- List all films and the number of actors who are listed for each film.

select title, count(actor_id) as no_of_actors from film f
join film_actor fa
on f.film_id=fa.film_id
group by title;

-- Using the payment and the customer tables as well as the JOIN command, list the total amount paid by each customer. List the customers alphabetically by their last names.

select * from payment;
select * from customer;

select last_name, round(sum(amount),1) total_amount from payment p
join customer c
using(customer_id)
group by last_name;

















