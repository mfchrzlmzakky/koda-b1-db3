SELECT directors.first_name, directors.last_name, movies.name AS movie, movies_genres.genre
FROM directors
JOIN movies_directors
  ON directors.id = movies_directors.director_id
LEFT JOIN movies_genres
  ON movies_directors.movie_id = movies_genres.movie_id
LEFT JOIN movies
  ON movies_genres.movie_id = movies.id
LIMIT 50

-- SELECT actors.id AS Actor, actors.first_name, actors.last_name, roles.role, movies.name AS Movie
-- FROM actors
-- LEFT JOIN roles
--   ON actors.id = roles.actor_id
-- LEFT JOIN movies
--   ON roles.movie_id = movies.id
