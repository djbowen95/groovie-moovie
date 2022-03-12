DROP DATABASE IF EXISTS movie_db;
CREATE DATABASE movie_db;

USE movie_db;

CREATE TABLE movies(
  id INT NOT NULL,
  movie_name VARCHAR(100) PRIMARY KEY
);

CREATE TABLE reviews(
    id INT NOT NULL,
    movie_name VARCHAR(100),
    review VARCHAR(500) NOT NULL,
    FOREIGN KEY (movie_name)
    REFERENCES movies(movie_name) 
    ON DELETE SET NULL
);