CREATE TABLE IF NOT EXISTS
genres (geners_id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL );

CREATE TABLE IF NOT EXISTS 
authors(authors_id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS
GenresAuthors(
genres_id INTEGER REFERENCES genres (geners_id),
authors_id INTEGER REFERENCES authors(authors_id),
CONSTRAINT pk PRIMARY KEY(genres_id, authors_id)
);

CREATE TABLE IF NOT EXISTS 
albums(albums_id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL,
year SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS
AuthorsAlbums(
authors_id INTEGER REFERENCES authors(authors_id),
albums_id INTEGER REFERENCES albums (albums_id),
CONSTRAINT AuthAlb PRIMARY KEY(authors_id, albums_id)
);

CREATE TABLE IF NOT EXISTS
songs(songs_id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL,
duration SMALLINT NOT NULL,
albums_id INTEGER REFERENCES albums(albums_id)
);

CREATE TABLE IF NOT EXISTS
collection(
collection_id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL,
year SMALLINT NOT NULL
);

CREATE TABLE IF NOT EXISTS
SongCollection(
song_id INTEGER REFERENCES songs(songs_id),
collection_id INTEGER REFERENCES collection (collection_id),
CONSTRAINT SongColl PRIMARY KEY(song_id, collection_id)
);






