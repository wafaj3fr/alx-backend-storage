-- Script to create the users table
-- This script creates a table named 'users' with the following attributes:
-- id (integer, not null, auto increment, primary key)
-- email (string, 255 characters, not null, unique)
-- name (string, 255 characters)
-- If the table already exists, it will not fail.

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,              -- Primary key, auto incrementing
    email VARCHAR(255) NOT NULL UNIQUE,          -- Email field, must be unique
    name VARCHAR(255),                           -- Name field, can be null
    PRIMARY KEY (id)                             -- Setting 'id' as the primary key
);
