
CREATE TABLE Album(
    id INT IDENTITY PRIMARY KEY,
    [name] NVARCHAR(20) UNIQUE,
    listenerCount INT,
    musicCount INT
)

CREATE TABLE Artist(
    id INT IDENTITY PRIMARY KEY,
    fullName NVARCHAR(30),
    age INT
)

CREATE TABLE Music(
    id INT IDENTITY PRIMARY KEY,
    [name] NVARCHAR(30),
    totalSecond INT,
    artist_id INT REFERENCES Artist(id)
)

CREATE TABLE AlbumMusic(
    id INT IDENTITY PRIMARY KEY,
    albumId INT REFERENCES Album(id),
    musicId INT REFERENCES Music(id)
)
--Insert data into Artist Table
INSERT INTO  Artist VALUES('Eminem',34)
INSERT INTO  Artist VALUES('Travis Scott',46)
INSERT INTO  Artist VALUES('Jay Rock',22)
INSERT INTO  Artist VALUES('Big K.R.I.T.',43)
INSERT INTO  Artist VALUES('Scarface',43)
INSERT INTO  Artist VALUES('Rittz',29)
INSERT INTO  Artist VALUES('Hermitude',46)
INSERT INTO  Artist VALUES('Russ',28)
INSERT INTO  Artist VALUES('Dj Khaled',54)
INSERT INTO  Artist VALUES('The Rots',57)
INSERT INTO  Artist VALUES('Sir',44)
INSERT INTO  Artist VALUES('Lecrae',32)
INSERT INTO  Artist VALUES('Azizi Gibson',31)
INSERT INTO  Artist VALUES('Big Bio',54)
INSERT INTO  Artist VALUES('Echae',28)
INSERT INTO  Artist VALUES('Mike Posner',32)
INSERT INTO  Artist VALUES('Run B',43)
INSERT INTO  Artist VALUES('Mark Batles',21)

SELECT*FROM Artist

--insert data into Music table

INSERT INTO Music VALUES('Ab-Soul',78,1)
INSERT INTO Music VALUES('Do-better',78,1)
INSERT INTO Music VALUES('These days',78,1)
INSERT INTO Music VALUES('Constrol Systems',78,1)
INSERT INTO Music VALUES('Bils',78,1)
INSERT INTO Music VALUES('Sometimes',78,1)
INSERT INTO Music VALUES('God`s a girl',78,1)
INSERT INTO Music VALUES('now you know',78,1)
INSERT INTO Music VALUES('YMF',78,1)
INSERT INTO Music VALUES('Fomf',78,1)
INSERT INTO Music VALUES('Gang`nem',78,1)
INSERT INTO Music VALUES('Bucket',78,1)
INSERT INTO Music VALUES('Go Off',78,1)
INSERT INTO Music VALUES('Fallacy',78,1)
INSERT INTO Music VALUES('gotta rap',78,1)

SELECT*FROM Music

--insert data into  album table

INSERT INTO Album VALUES('Promonition',200,0)
INSERT INTO Album VALUES('Marsh',250,0)
INSERT INTO Album VALUES('Stepdad',300,0)
INSERT INTO Album VALUES('Litle Engine',100,0)
INSERT INTO Album VALUES('Fareweel',150,0)
INSERT INTO Album VALUES('Alfread',180,0)
INSERT INTO Album VALUES('Evil deds',220,0)
INSERT INTO Album VALUES('Mosh',270,0)
INSERT INTO Album VALUES('Push',290,0)
INSERT INTO Album VALUES('Rain Man',300,0)
INSERT INTO Album VALUES('ass like that',320,0)
INSERT INTO Album VALUES('Crezy in love',350,0)
INSERT INTO Album VALUES('love thicky toc',370,0)

SELECT*FROM Album

--insert data into ArtistMusicTable
INSERT INTO AlbumMusic VALUES(1,3)
INSERT INTO AlbumMusic VALUES(2,4)
INSERT INTO AlbumMusic VALUES(3,6)
INSERT INTO AlbumMusic VALUES(4,7)
INSERT INTO AlbumMusic VALUES(5,10)
INSERT INTO AlbumMusic VALUES(5,8)
INSERT INTO AlbumMusic VALUES(7,1)
INSERT INTO AlbumMusic VALUES(8,12)
INSERT INTO AlbumMusic VALUES(9,11)
INSERT INTO AlbumMusic VALUES(10,10)
INSERT INTO AlbumMusic VALUES(10,11)
INSERT INTO AlbumMusic VALUES(11,14)
INSERT INTO AlbumMusic VALUES(11,15)
INSERT INTO AlbumMusic VALUES(12,14)
INSERT INTO AlbumMusic VALUES(9,15)

SELECT*FROM AlbumMusic