## 1
SELECT * FROM movies WHERE movies.year = 1995;
## 2
SELECT count(actor_id) FROM roles as R JOIN movies as M on M.id=R.movie_id WHERE M.name="Lost in Translation";

## 3
SELECT first_name, last_name, M.name FROM actors  A JOIN roles R on A.id=R.actor_id JOIN  movies M on R.movie_id=M.id 
WHERE M.name="Lost in Translation";

## 4
SELECT first_name, last_name FROM directors as D JOIN movies_directors as MD on D.id=MD.director_id 
JOIN movies as M on MD.movie_id=M.id
WHERE M.name="Fight Club";

## 5
SELECT count(*) FROM movies M JOIN movies_directors  MD on MD.movie_id=M.id JOIN directors D 
on D.id=MD.director_id 
WHERE D.first_name="Clint" && D.last_name="Eastwood";

SELECT * FROM movies M JOIN movies_directors  MD on MD.movie_id=M.id JOIN directors D 
on D.id=MD.director_id 
WHERE D.first_name="Clint" && D.last_name="Eastwood";

## 6
SELECT M.name FROM movies M JOIN movies_directors  MD on MD.movie_id=M.id JOIN directors D 
on D.id=MD.director_id 
WHERE D.first_name="Clint" && D.last_name="Eastwood";

## 7 
SELECT D.first_name, D.last_name, MG.genre, M.name, M.year FROM directors as D JOIN movies_directors as MD 
on MD.director_id=D.id JOIN movies as M on MD.movie_id=M.id JOIN movies_genres as MG 
on M.id=MG.movie_id
WHERE MG.genre="Horror";

## 8
SELECT A.first_name, A.last_name, M.name as movie_name, M.year, CONCAT(D.first_name, ' ',D.last_name) as Director  FROM 
actors A JOIN roles  R on A.id=R.actor_id JOIN movies M on R.movie_id=M.id 
JOIN movies_directors MD on M.id=MD.movie_id JOIN directors D on MD.director_id=D.id
WHERE D.first_name="Christopher" && D.last_name="Nolan";
