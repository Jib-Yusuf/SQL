USE world;

Question 1
SELECT COUNT(ct.id) FROM city ct
 INNER JOIN country co ON ct.countrycode = co.code
WHERE ct.countrycode = "USA";

Question 2
SELECT name, population, lifeexpectancy FROM country WHERE name = "argentina";

Question 3
SELECT name FROM country GROUP BY lifeexpectancy  HAVING MAX(lifeexpectancy IS NOT NULL) ORDER BY lifeexpectancy DESC LIMIT 1;

Question 4
SELECT ct.name FROM city ct
 INNER JOIN country co ON ct.id = co.capital
WHERE co.name ="spain";

Question 5
SELECT cl.language FROM countrylanguage cl
 INNER JOIN country co ON cl.countrycode = co.code
WHERE co.region = "southeast asia";

Question 6
SELECT name FROM city WHERE name LIKE "f%" LIMIT 25;

Question 7
SELECT COUNT(ct.name) FROM city ct
 INNER JOIN country co ON ct.countrycode = co.code
WHERE co.code = "CHN";
Question 8

SELECT `Name`, Population FROM country
HAVING Population IS NOT NULL AND Population != 0
ORDER BY Population ASC LIMIT 1;

Question 9
SELECT COUNT(code) FROM country

Question 10

