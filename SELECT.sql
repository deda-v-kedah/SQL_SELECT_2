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


					
					
SELECT DISTINCT c.name  FROM songcollection s 
JOIN collection c ON s.collection_id = c.collection_id 
WHERE song_id IN (SELECT songs_id  FROM songs s 
					WHERE albums_id IN (SELECT albums_id  FROM authorsalbums a 
										WHERE authors_id IN (SELECT authors_id FROM authors a 
															WHERE "name" LIKE 'Король и шут')))

																											


SELECT a2.name  FROM authorsalbums a 
LEFT JOIN albums a2 ON a.albums_id = a2.albums_id 
WHERE authors_id IN (SELECT authors_id FROM genresauthors g  
					GROUP BY authors_id 
					HAVING COUNT(*) > 1)

															

					
SELECT name FROM songs s 
WHERE songs_id NOT IN (SELECT song_id FROM songcollection s2)



SELECT DISTINCT a2.name, count(*)  FROM songs s 
LEFT JOIN authorsalbums a ON s.albums_id = a.albums_id 
LEFT JOIN authors a2 ON a.authors_id = a2.authors_id 
WHERE duration IN(SELECT MIN(duration) FROM songs s)
GROUP BY a2."name" 




SELECT a.name my_count FROM songs s
JOIN albums a ON a.albums_id = s.albums_id 
GROUP BY a.name
HAVING s.count IN (SELECT MIN(_count) FROM (SELECT albums_id, COUNT(*) as _count FROM songs s GROUP BY albums_id ) as count_treck)



															

