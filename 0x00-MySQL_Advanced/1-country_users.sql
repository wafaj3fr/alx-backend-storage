-- Script to create the users table
-- This script creates a table named 'users' with the following attributes:
-- id (integer, not null, auto increment, primary key)
-- email (string, 255 characters, not null, unique)
-- name (string, 255 characters)
-- country (enum: 'US', 'CO', 'TN', not null, default 'US')
-- If the table already exists, it will not fail.

CREATE TABLE IF NOT EXISTS users (
    id INT NOT NULL AUTO_INCREMENT,              -- Primary key, auto incrementing
    email VARCHAR(255) NOT NULL UNIQUE,          -- Email field, must be unique
    name VARCHAR(255),                           -- Name field, can be null
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US',  -- Country field, must be one of the specified values, default is 'US'
    PRIMARY KEY (id)                             -- Setting 'id' as the primary key
);

