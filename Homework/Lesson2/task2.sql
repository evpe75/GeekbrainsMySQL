DROP database if exists example;

CREATE database example;

USE example;

DROP TABLE IF EXISTS users;

CREATE table users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60)
)

 