SELECT name, COUNT(*) FROM genresauthors g 
LEFT JOIN genres g2  ON g2.geners_id  = g.genres_id 
GROUP BY name
ORDER BY COUNT(*) DESC;


SELECT COUNT(*)  FROM albums a 
LEFT JOIN songs s  ON a.albums_id  = s.albums_id 
WHERE "year" = 2019 OR "year" = 2020

SELECT a.name, AVG(s.duration) / 100 * 60  FROM albums a 
LEFT JOIN songs s  ON a.albums_id  = s.albums_id 
GROUP BY a.name


SELECT a.name FROM authors a 
WHERE authors_id NOT IN  (SELECT DISTINCT a2.authors_id  FROM albums a 
						  JOIN authorsalbums a2 ON a.albums_id = a2.albums_id 
						  WHERE a."year" = 2020)


					
					
SELECT DISTINCT c.name FROM authors a 
JOIN authorsalbums a2 ON a.authors_id = a2.authors_id 
JOIN songs s ON a2.albums_id = s.albums_id 
JOIN songcollection s2 ON s.songs_id = s2.song_id 
JOIN collection c ON s2.collection_id = c.collection_id 
WHERE a.name LIKE 'Король и шут';

						  


SELECT a2.name  FROM genresauthors g 
JOIN authorsalbums a ON g.authors_id = a.authors_id 
JOIN albums a2 ON a.albums_id = a2.albums_id 
GROUP BY a2."name" 
HAVING COUNT(*) > 1

						  
						  
SELECT s.name  FROM songs s 
LEFT JOIN songcollection s2 ON s.songs_id = s2.song_id 
WHERE s2.collection_id IS NULL




SELECT DISTINCT a2.name  FROM songs s 
LEFT JOIN authorsalbums a ON s.albums_id = a.albums_id 
LEFT JOIN authors a2 ON a.authors_id = a2.authors_id 
WHERE duration IN(SELECT MIN(duration) FROM songs s)



SELECT  a."name"  FROM songs s 
JOIN albums a ON s.albums_id = a.albums_id 
GROUP BY a."name" 
HAVING COUNT(*) = (SELECT COUNT(*) FROM songs s 
				   JOIN albums a ON s.albums_id = a.albums_id 
				   GROUP BY a."name" 
				   ORDER BY COUNT(*) 
				   LIMIT(1))
												

