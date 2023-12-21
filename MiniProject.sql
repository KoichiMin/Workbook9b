-- 1 

SELECT 
CONCAT(UPPER(first_name), ' ' ,
UPPER(last_name)) as ActorName
FROM sakila.actor;

-- 2

SELECT 
actor_id,
UPPER(first_name),
UPPER(last_name)
FROM sakila.actor
WHERE first_name = 'Joe';

-- 3

SELECT
actor_id,
UPPER(first_name),
UPPER(last_name),
last_update
FROM sakila.actor
WHERE last_name like "%GEN%";

-- 4

SELECT
actor_id,
UPPER(first_name),
UPPER(last_name),
last_update
FROM sakila.actor
WHERE last_name like "%LI%"
ORDER BY last_name, first_name;

-- 5

SELECT
country_id,
country
FROM sakila.country
WHERE country_id in ('1', '12', '23' );

-- 6

SELECT distinct
last_name,
COUNT(last_name) as actor_count
FROM 
sakila.actor
GROUP BY last_name
HAVING COUNT(last_name) > 1
ORDER BY COUNT(last_name) DESC;

-- 7

UPDATE sakila.actor
SET first_name = 'HARPO'
where first_name = 'GROUCHO' AND last_name = 'WILLIAMS';

SELECT
first_name,
last_name,
last_update
FROM 
sakila.actor
WHERE last_name LIKE '%WILLIAMS%';

-- 8

UPDATE sakila.actor
SET first_name = 'GROUCHO'
WHERE last_name = 'WILLIAMS' AND first_name = 'HARPO';

SELECT
first_name,
last_name,
last_update
FROM 
sakila.actor
WHERE last_name LIKE '%WILLIAMS%';


-- 9

SELECT 
first_name,
last_name,
SUM(amount)
FROM sakila.staff
JOIN sakila.payment
	ON sakila.staff.staff_id = sakila.payment.staff_id
GROUP BY sakila.staff.staff_id;


-- 10

SELECT 
title,
COUNT(actor_id) as number_of_actor
FROM 
sakila.film
JOIN sakila.film_actor
	ON sakila.film.film_id = sakila.film_actor.film_id
GROUP BY sakila.film.film_id
ORDER BY COUNT(actor_id) DESC;

-- 11

SELECT
title,
COUNT(inventory_id) as number_in_inventory
FROM 
sakila.film
JOIN sakila.inventory
	ON sakila.film.film_id = sakila.inventory.film_id
GROUP BY sakila.film.film_id
HAVING title = 'HUNCHBACK IMPOSSIBLE';


-- 12 

SELECT
title
FROM 
sakila.film
WHERE title like 'K%' OR title like 'Q%' AND sakila.film.language_id = (
SELECT
language_id
FROM 
sakila.language
WHERE sakila.language.name = 'English'
);

-- 13

INSERT INTO sakila.rental
VALUES('16050', '2005-05-31 00:46:31', '1', '1', NULL, 1, '2005-05-31 00:46:31');


SELECT 
* 
FROM 
sakila.rental
WHERE rental_id = '%16050%'
;
