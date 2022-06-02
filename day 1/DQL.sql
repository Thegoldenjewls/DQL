-- I can start here
select * from actor a;

--query for specific specific columns in the actor table 
select first_name, last_name
from actor a;

--use the where clause to filter rows 
select * 
from actor a 
where first_name = 'Nick';

--like keyword
select * 
from actor a 
where first_name like 'Nick';

--like keyword with the wildcard aka (%) for 0 to infinity
select * 
from actor a 
where first_name = 'N%';

--like keyword with the wildcard aka (_) for 1 space

select * 
from actor a 
where first_name = '_ay';

--like keyword with the wildcard aka (_ and % ) for whatever

select * 
from actor a 
where first_name = '_ay';

--comparing operators are:
--not equal (<>)
--explore data with select * query (specifically when using a new table)
select * from payment; 

--get payments of over $2.00
select *
from payment
where amount > 2;

--get all payments between 3 and 8
select *
from payment 
where amount between 3 and 8;

--order our  rows of data  by using  the order by clause
select *
from payment p 
where amount between 3 and 8
order by amount desc ;

select customer_id,amount
from payment
where amount > 5 and customer_id < 200
order by amount ;

--sql aggregations sum, avg, count, min, max 
SELECT sum(amount)
FROM payment; 

--GET the total amount paid IF the amount greater than $5
SELECT sum(amount)
FROM payment p 
WHERE amount > 5;

--GET the avg amount paid IF the amount greater than $5
SELECT avg(amount)
FROM payment p 
WHERE amount > 5;

--GET number of payments paid greater than $5
SELECT count(*)
FROM payment p 
WHERE amount > 5;

--alias our COLUMN name AS keyword
SELECT max (amount) AS max_amount_paid
FROM payment p 
WHERE amount > 5;

--query different amounts
SELECT count(amount) 
FROM payment p 
WHERE amount = 1.99;

--GROUP BY clause ;
SELECT amount, count (*)
FROM payment p 
GROUP BY amount;

--query the payment TABLE TO display the customers who have spent the most (order by the sum amount)
SELECT customer_id, sum(amount)
FROM payment
GROUP BY customer_id 
ORDER BY sum(amount) DESC;

--HAVING clause --- HAVING IS TO GROUP BY /aggregation AS WHERE IS TO SELECT 
--query the payment TABLE TO display the customers who have spent  the most. HAVING made AT LEAST 40 payments
SELECT customer_id,sum(amount),count(*)
FROM payment p 
GROUP BY customer_id 
HAVING count(*) >=40 
ORDER BY sum(amount) DESC; 

--list the number of 
SELECT customer_id,sum(amount),count(*)
FROM payment p 
GROUP BY customer_id 
HAVING count(*) <=40 
ORDER BY sum(amount) DESC
LIMIT 5;

--START your ROWS AFTER a certain amount OF ROWS USING the offset clause
--ex. display customers 10- 15 IN the terms OF the most spent UNDER 40 purchases. 
SELECT customer_id,sum(amount),count(*)
FROM payment p 
GROUP BY customer_id 
HAVING count(*) <=40 
ORDER BY sum(amount) DESC 
OFFSET 9  ---SKIP OVER FIRST 9 ROWS
LIMIT 5;  --LIMIT TO showing ONLY 5 ROWS 


