--1. How many actors are there with the last name �Wahlberg�?
select * 
from actor a 
where last_name = 'Wahlberg'; Answer = 2 
-- 
--2. How many payments were made between $3.99 and $5.99?

select count(*)
FROM payment 
WHERE amount between 3.99 and 5.99; Answer 5607

--
--3. What film does the store have the most of? (search in inventory)
SELECT film_id,count(film_id)
FROM inventory i
GROUP BY 
ORDER BY ; 

--4. How many customers have the last name �William�?
select * 
FROM customer c 
where last_name = 'William'; answer 0


--5. What store employee (get the id) sold the most rentals?
SELECT count(staff_id) 


--
--6. How many different district names are there?
SELECT count(district)
FROM address a; answe 603

--
--7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, 
FROM film_actor fa 
ORDER BY count(film_actor);
--
--8. From store_id 1, how many customers have a last name ending with �es�? (use customer table)
--
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
--
--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?