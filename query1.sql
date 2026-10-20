-- 1
SELECT name, year FROM movies WHERE year > 2000
-- 2
SELECT last_name FROM actors WHERE last_name ILIKE '%s'
-- 3
SELECT name, rating, year FROM movies WHERE rating >= 5 AND rating <= 7 AND year >= 2004 AND year <= 2006
-- 4
SELECT COUNT(id) from movies WHERE rating = 6