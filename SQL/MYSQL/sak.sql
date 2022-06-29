SELECT * FROM actor_info;
SELECT * FROM actor WHERE first_name = 'john';
SELECT * FROM actor WHERE last_name LIKE 'neeson';
SELECT * FROM actor WHERE (actor_id % 10) = '0';
SELECT * FROM film WHERE film_id = '100';
SELECT * FROM film WHERE rating = 'R';
SELECT * FROM film WHERE rating != 'R';
SELECT MIN(length) FROM film;
SELECT title FROM film WHERE length=(
    SELECT max(length)
    FROM film);
    QUESTION 10
    SELECT * FROM film WHERE special_features = "Deleted Scenes";
    
    QUESTION 11
SELECT last_name FROM actor GROUP BY last_name HAVING count(*)>=1 ORDER BY last_name DESC;
  Question 12
  SELECT last_name, COUNT(*) name_count FROM actor
  GROUP BY last_name
  HAVING name_count> 1
  ORDER BY COUNT(last_name) DESC;
   QUESTION 13
  
SELECT a.first_name "First name", a.last_name "Last name", count(f.film_id) "films" FROM actor a
  INNER JOIN film_actor f ON a.actor_id = f.actor_id
  GROUP BY f.actor_id ORDER BY count(f.film_id) DESC;
  QUESTION 14
  
  SELECT * FROM film f
  INNER JOIN inventory i ON f.film_id = i.film_id
  INNER JOIN rental r ON i.inventory_id = r.inventory_id
  WHERE f.title = "ACADEMY DINOSAUR"
  Question 15
 SELECT AVG(length) FROM film;

  Question 16
 SELECT c.name, AVG(f.length) FROM film f
 INNER JOIN film_category fc ON f.film_id = fc.film_id
 INNER JOIN category c ON fc.category_id = c.category_id
GROUP BY fc.category_id ORDER BY AVG(f.length);
Question 17

SELECT * FROM film WHERE description LIKE "%Robot%";
Question 18
SELECT * FROM film WHERE release_year LIKE "%2010%";
Question 19
SELECT f.title, ca.`name`, ca.category_id FROM film f
INNER JOIN film_category fc ON f.film_id = fc.film_id
INNER JOIN category ca ON fc.category_id = ca.category_id
WHERE ca.`name` = 'Horror';


Question 20
SELECT first_name, last_name FROM staff
WHERE staff_id = 2;
Question 21

 SELECT f.title, a.actor_id FROM film f
  INNER JOIN film_actor fa ON f.film_id = fa.film_id
  INNER JOIN actor a ON fa.actor_id = a.actor_id
WHERE a.first_name = "fred" AND a.last_name = "costner";
 Qestion 22
 SELECT * FROM country;
 Question 23
 
SELECT * FROM film WHERE language_id GROUP BY language_id HAVING count(*)>=1 ORDER BY language_id DESC;
Question 24
SELECT first_name, last_name FROM actor WHERE last_name LIKE '%son' ORDER by first_name asc;
Question 25




SELECT * FROM film;filmcustomerfilm_actor
  
  