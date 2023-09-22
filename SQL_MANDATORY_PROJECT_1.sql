-- SQL MANDATORY PROJECT 1 -- SUBMITTED BY VIDHYADHAR MELAM S4989 --

--  Q1 Write a SQL query to count the number of characters except for the spaces for each actor. Return the first 10 actors' name lengths along with their names.

select * from actor;
select first_name, last_name, length(first_name) + length(last_name) 
as total_length_of_actor_name 
from actor 
limit 10;

-- Q2 List all Oscar awardees(Actors who received the Oscar award) with their full names and the length of their names.

select * from actor_award;
select awards, CONCAT(first_name, ' ', last_name) 
as full_name, length(first_name) + length(last_name) 
as total_length_of_actor_name 
From actor_award 
where awards = 'oscar';

-- Q3 Find the actors who have acted in the film ‘Frost Head.’

 select * from actor;
 select * from film_actor;
 select * from film;
select title, CONCAT(first_name, ' ', last_name) 
as full_name from actor
inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film on film_actor.film_id = film.film_id
where title = 'frost head';

-- Q4 Pull all the films acted by the actor ‘Will Wilson

select title as list_of_films_acted, CONCAT(first_name, ' ', last_name) 
as full_name from actor
inner join film_actor on actor.actor_id = film_actor.actor_id
inner join film on film_actor.film_id = film.film_id
where first_name = 'Will' and last_name = 'Wilson';

-- Q5 Pull all the films which were rented and return them in the month of May

select * from film;
select * from rental;
select * from inventory;
select title from film
inner join inventory on film.film_id = inventory.film_id
inner join rental on inventory.inventory_id = rental.inventory_id
where rental_date between '2005-05-01' and '2005-05-31'; 

-- Q6 Pull all the films with ‘Comedy’ category

select * from category;
select * from film_category;
select title from film
inner join film_category on film.film_id = film_category.film_id
inner join category on film_category.category_id = category.category_id
where name = 'comedy';







