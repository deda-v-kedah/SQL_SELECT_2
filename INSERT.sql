INSERT INTO genres(name)
VALUES('Rock'),
	    ('Deep-house'),
	    ('Hip-Hop'),
	    ('Pop'),
	    ('Techno');
	  
	  
INSERT INTO authors(name)
VALUES('Король и шут'),
      ('Morgenstern'),
      ('Кукрыниксы'),
      ('Шатунов'),
      ('Каста'),
      ('Blue Six'),
      ('Kaskade'),
      ('Scooter'),
      ('Ария'),
      ('Исполнитель 666');





INSERT INTO genresauthors 
VALUES (1,1),
	   (1,2),
	   (1,3),
	   (1,9),
	   (2,2),
	   (2,6),
	   (2,7),
	   (3,2),
	   (3,5),
	   (4,2),
	   (4,4),
	   (5,2),
	   (5,8),
	   (2,10),
	   (5,10);


	  
INSERT INTO albums (name, year)
VALUES ('Жаль, нет ружья', 2002),
       ('Камнем по голове', 1996),
       ('До того как стал известен', 2018),
       ('Last One', 2022),
       ('Смерть поэта',2013),
       ('Не молчи...', 2018),
       ('Альбомба', 2021),
       ('My LIFE', 2018),
       ('God Save the Rave', 2021),
		('Альбом 2', 2019),
        ('Альбом 934', 2019),
        ('20-20', 2020),
        ('Альбом 09023193',2020),
        ('Альбом GH32948', 2020),
        ('Штиль', 2004);

INSERT INTO authorsalbums
VALUES (1,1),
	   (1,2),
	   (2,3),
	   (2,4),
	   (3,5),
	   (4,6),
	   (5,7),
	   (7,8),
	   (8,9),
	   (9,15),
	   (10,10),
	   (10,11),
	   (10,12),
	   (10,13),
	   (10,14);	  
	  
INSERT INTO songs (name, duration, albums_id)
VALUES ('Мой характер', 101, 1),
       ('Смешной совет',405, 1),
       ('Дурак и молния', 154, 2),
       ('Внезапная голова', 224, 2),
       ('Танцуй', 345, 3),
       ('Я хороший', 301, 3),
       ('Герой', 245, 4),
       ('Вернуть прошлое', 302, 4),
       ('Костёр', 418, 5),
       ('Капли', 501, 5),
       ('Не бойся', 351,6),
       ('Звезда', 455,6),
       ('Дома никого', 101,7),
       ('Муха', 102,8),
       ('On Your Mind', 520,8),
       ('This these Days',403, 9),
       ('Анастасия', 657, 9),
		('1a', 351, 10),
		('2a', 420, 10),
		('3a', 228, 10),
		('4a', 132, 10),
		('1b', 351, 11),
		('2b', 420, 11),
		('1c', 351, 12),
		('2c', 420, 12),
		('3c', 228, 12),
		('1x', 351, 13),
		('2x', 420, 13),
		('3x', 228, 13),
		('4x', 142, 13),
		('5x', 330, 13),
		('1y', 351, 14),
		('2y', 420, 14),
		('3y', 228, 14),
		('4y', 112, 14),
		('5y', 351, 14),
		('6y', 420, 14),
		('7y', 228, 14),
		('8y', 152, 14),
	    ('Беспечный ангел', 101, 15);
		
		
		
INSERT INTO collection (name, year)
VALUES ('сборник 1', 2001),
	   ('сборник 2', 2006),
	   ('сборник 3', 2008),
	   ('сборник 4', 2008),
	   ('сборник 5', 2013),
	   ('сборник 6', 2014),
	   ('сборник 7', 2019),
	   ('сборник 8', 2020),
	   ('сборник 9', 2021),
	   ('сборник 10', 2022);
	   
INSERT INTO songcollection 
VALUES(1,1),
      (11,1),
      (9,1),
      (15,1),
      (2,2),
      (10,2),
      (7,2),
      (11,2),
      (3,2),
      (17,3),
      (5,3),
      (8,3),
      (4,3),
      (13,3),
      (1,3),
      (14,4),
      (12,4),
      (16,4),
      (5,5),
      (7,5),
      (11,5),
      (17,5),
      (2,5),
      (9,5),
      (7,6),
      (14,6),
      (4,7),
      (7,7),
      (10,7),
      (16,8),
      (1,8),
      (4,9),
      (12,9),
      (8,9),
      (2,9),
      (5,10),
      (7,10),
      (13,10),
      (9,10),
      (14,10),
      (17,10),
      (2,10),
      (6,10),
      (18,9),
      (22,5),
      (40,7),
      (35,1);
      
	   
