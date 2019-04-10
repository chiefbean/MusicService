DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Songs;
DROP TABLE IF EXISTS Artists;
DROP TABLE IF EXISTS Genres;

CREATE TABLE Users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  username VARCHAR(100),
  password VARCHAR(34)
);

CREATE TABLE Songs(
  id SERIAL PRIMARY KEY,
  artistID INTEGER REFERENCES Artists(id) ON DELETE CASCADE,
  genreID INTEGER REFERENCES Genres(id) ON DELETE CASCADE,
  title VARCHAR(100),
  album VARCHAR(100),
  year INTEGER
);
CREATE TABLE Artists(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);
CREATE TABLE Genres(
  id SERIAL PRIMARY KEY,
  genre VARCHAR(100)
);
