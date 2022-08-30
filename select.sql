--количество исполнителей в каждом жанре
SELECT genre_id,count(performer_id) FROM performer_genre
GROUP BY genre_id; 

--количество треков, вошедших в альбомы 2019-2020 годов
SELECT count(*) FROM tracks t
JOIN albums a ON t.album_id = a.id 
WHERE YEAR BETWEEN 2019 AND 2020;

--средняя продолжительность треков по каждому альбому
SELECT album_name, avg(length) FROM tracks t 
JOIN albums a ON  t.album_id = a.id 
GROUP BY album_name
;
--все исполнители, которые не выпустили альбомы в 2020 году
SELECT performer_name FROM performers p 
JOIN performer_album ON p.id = performer_album.performer_id 
JOIN albums a ON performer_album.album_id = a.id 
WHERE YEAR != 2020 ;

--названия сборников, в которых присутствует конкретный исполнитель (AC-DC)
SELECT collection_name FROM collections c 
JOIN collection_tracks ct ON c.id = ct.collection_id 
JOIN tracks t ON ct.track_id = t.id 
JOIN albums a ON t.album_id = a.id 
JOIN performer_album pa ON a.id = pa.album_id  
JOIN performers p ON pa.performer_id = p.id 
WHERE p.performer_name iLIKE '%U2%'
GROUP BY collection_name;

--название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT album_name FROM albums a 
JOIN performer_album pa ON a.id = pa.album_id 
JOIN performers p ON pa.performer_id = p.id 
JOIN performer_genre ON p.id = performer_genre.performer_id 
GROUP BY a.album_name
HAVING COUNT(performer_genre.performer_id) > 1; 

--наименование треков, которые не входят в сборники;
SELECT name,collection_id  FROM tracks t 
LEFT JOIN collection_tracks ct ON t.id = ct.track_id 
WHERE ct.collection_id IS NULL;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT performer_name FROM performers p 
JOIN performer_album pa ON p.id =pa.performer_id
JOIN albums a ON pa.album_id = a.id 
JOIN tracks t ON a.id = t.album_id 
WHERE t.length = (SELECT min(length) FROM tracks t2);


--название альбомов, содержащих наименьшее количество треков.
SELECT album_name, count(*) FROM albums a 
JOIN tracks t ON a.id = t.album_id
GROUP BY album_name
HAVING count(*) = (SELECT count(*) FROM albums a 
JOIN tracks t ON a.id = t.album_id
GROUP BY album_name
ORDER BY count(*)
LIMIT 1
);
