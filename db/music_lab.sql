DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    artist_name VARCHAR(255)
);

CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(255),
    artist_id INT REFERENCES artists(id) ON DELETE CASCADE
);

INSERT INTO artists (artist_name)
VALUES ('The Wombles');

INSERT INTO artists (artist_name)
VALUES ('Radiohead');

INSERT INTO albums (title, genre)
VALUES ('Kid A', 'experimental');

INSERT INTO albums (title, genre)
VALUES ('WoW', 'plain');








