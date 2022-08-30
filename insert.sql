INSERT INTO performers (performer_name)
VALUES ('AC-DC'),
       ('Madonna'),
       ('Rammstein'),
       ('The Beatles'),
       ('U2'),
       ('Nirvana'),
       ('Pink Floyd'),
       ('Vanessa Mey'),
       ('Eminem'),
       ('Scooter'),
       ('Arvin Van Buuren');
       
INSERT INTO genres (genre_name)
VALUES ('Classical'),
       ('Pop'),
       ('Rock'),
       ('Hip hop'),
       ('Electronic');
            
INSERT INTO albums (album_name, year)
VALUES ('POWER UP', 2020),
       ('Realize', 2020),
       ('Don''t_Cry_For_Me_Argentina', 2022),
       ('Liebe Ist Für Alle Da', 2009),
       ('Get Back', 1969),
       ('Your Song Saved My Life', 2021),
       ('Live At The Paramount', 2019),
       ('London 1966', 1967),
       ('Choreography', 2004),
       ('Last One Standing', 2018),
       ('Do Not Sit If You Can Dance', 2022 ),
       ('Love Is Gone', 2018);
       
INSERT INTO tracks (name, length, album_id)
VALUES ('Witch''s Spell', 321, 14),
       ('Kick You When You''re Down', 250, 14),
       ('Spoiled Rotten', 270, 15),
       ('Don''t Cry for Me Argentina Radio Edit', 289, 16),
       ('Rammlied', 240, 17),
       ('Dig A Pony', 233, 18),
       ('Your Song Saved My Life', 199, 19),
       ('Floyd The Barber', 250, 20),
       ('Interstellar Overdrive', 290, 21),
       ('Sabre Dance', 360, 22),
       ('Venom', 350, 23),
       ('Do Not Sit If You Can Dance (Extended Mix)', 332, 24),
       ('Love Is Gone (Armin van Buuren Remix)', 412, 25);
       
INSERT INTO tracks (name, length, album_id)
VALUES ('Demon Fire', 322, 14);

INSERT INTO tracks (name, length, album_id)
VALUES ('Money Shot', 310, 14);

INSERT INTO tracks (name, length, album_id)
VALUES ('888', 300, null);

UPDATE tracks 
SET album_id = 14
WHERE id = 25;

INSERT INTO collections (collection_name, year)
VALUES ('Rock Collection', 2022),
       ('Pop Collection', 2021),
       ('Super Collection', 2020),
       ('Collection 3000', 1999),
       ('Collections 1000', 2008),
       ('Summer Collection',2022),
       ('Best Collection', 2021),
       ('Other collection', 2000);
       
INSERT INTO collection_tracks (collection_id, track_id)
VALUES (1, 1),
       (1, 2),
       (1, 15),
       (1, 16),
       (1, 11),
       (1, 13),
       (1, 9),
       (2, 16),
       (3, 1),
       (3, 2),
       (3, 10),
       (3, 12),
       (4, 11),
       (4, 8),
       (5, 9),
       (5, 5),
       (6, 6),
       (6, 7),
       (6, 5),
       (7, 7),
       (7, 9),
       (7, 2),
       (7, 15),
       (8, 3),
       (8, 4),
       (8, 5),
       (8, 10);
      
INSERT INTO performer_album (performer_id, album_id)
VALUES (24, 14),
       (24, 15),
       (25, 16),
       (26, 17),
       (27, 18),
       (28, 19),
       (29, 20),
       (30, 21),
       (31, 22),
       (32, 23),
       (33, 24),
       (34, 25);

INSERT INTO performer_genre (performer_id, genre_id)
VALUES (24, 3),
       (25, 2),
       (26, 3),
       (27, 3),
       (27, 2),
       (28, 3),
       (29, 3),
       (30, 3),
       (31, 1),
       (32, 4),
       (33, 5),
       (34, 5);
      
 