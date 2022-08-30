CREATE TABLE IF NOT EXISTS genres (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(60) NOT NULL UNIQUE 
);

CREATE TABLE IF NOT EXISTS performers (
	id SERIAL PRIMARY KEY,
	performer_name VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	album_name VARCHAR(60) NOT NULL,
	year INTEGER CHECK(year>1500)
);

CREATE TABLE IF NOT EXISTS tracks(
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL UNIQUE,
	length INTEGER CHECK(length>0),
	album_id INTEGER REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS performer_genre (
	performer_id INTEGER REFERENCES performers(id),
	genre_id INTEGER REFERENCES genres(id),
	CONSTRAINT pk PRIMARY KEY(performer_id,genre_id)
);

CREATE TABLE IF NOT EXISTS performer_album (
	performer_id INTEGER REFERENCES performers(id),
	album_id INTEGER REFERENCES albums(id),
	CONSTRAINT bk PRIMARY KEY (performer_id,album_id)
);

CREATE TABLE IF NOT EXISTS collections(
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(60) NOT NULL UNIQUE,
	year INTEGER CHECK(year>1500)
);

CREATE TABLE IF NOT EXISTS collection_tracks(
	collection_id INTEGER REFERENCES collections(id),
	track_id INTEGER REFERENCES tracks(id),
	CONSTRAINT rk PRIMARY KEY (collection_id,track_id)
);
