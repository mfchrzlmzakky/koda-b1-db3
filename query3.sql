-- 1
-- SELECT d.id AS director_id, d.first_name, d.last_name, string_agg(DISTINCT dg.genre, ', ') AS genre, count(DISTINCT dg.genre) AS genre_total
-- FROM directors d
-- JOIN directors_genres dg
--   ON d.id = dg.director_id
-- GROUP BY d.id
-- ORDER BY d.id ASC

-- 2
-- SELECT a.id AS actor_id, a.first_name, a.last_name, string_agg(DISTINCT r.role , ', ') as actor_role, COUNT(DISTINCT r.role)
-- FROM actors a 
-- JOIN roles r 
--   ON a.id = r.actor_id
-- GROUP BY a.id
-- HAVING count(DISTINCT r.role) > 5

-- 3
-- SELECT d.id AS director_id, d.last_name, COUNT(md.movie_id) as movie_total
-- FROM directors d
-- JOIN movies_directors md
--   ON d.id = md.director_id
-- GROUP BY d.id
-- ORDER BY movie_total DESC
-- LIMIT 1;

-- 4
-- SELECT m.year, COUNT(id) AS total_film
-- FROM movies m
-- GROUP BY m.year
-- ORDER BY COUNT(id) DESC
-- LIMIT 1

-- 5
-- SELECT DISTINCT m.id, m.name, string_agg(DISTINCT mg.genre , ', ')
-- FROM movies m 
-- JOIN movies_genres mg
--   ON m.id = mg.movie_id
-- GROUP BY m.id

