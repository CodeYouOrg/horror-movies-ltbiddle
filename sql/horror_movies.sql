-- Add your SQL here

-- Write a SQL query that returns the id, name and imdb rating of top 3 movies in 
-- the horror genre that were released in or before 1985. Note that the column 
-- names in the resulting file have been changed from "id", "name", and 
-- "imdb_rating" to "Movie_ID", "Movie_Title", and "Rating".

-- ### Example Output Data

-- | Movie_ID | Movie_Title | Rating |
-- | -------- | ------ | ---- |
-- | 226 | The Shining | 8.4 |
-- | 100 | Gremlins | 7.2 |
-- | 116 | The Amityville Horror | 6.2 |


SELECT id AS "Movie_Id", name AS "Movie_Title", imdb_rating AS "Rating" 
FROM movies 
WHERE year <= 1985 
AND genre = "horror"
ORDER BY imdb_rating desc
LIMIT 3