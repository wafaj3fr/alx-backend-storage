-- Script to create the AddBonus stored procedure
-- This procedure adds a correction for a student by taking the following inputs:
-- user_id: ID of the user (existing in the 'users' table)
-- project_name: Name of the project (new or existing)
-- score: Score value for the correction

DELIMITER $$;
CREATE PROCEDURE AddBonus(IN user_id INT, IN project_name VARCHAR(255), IN score INT )
BEGIN
	IF NOT EXISTS(SELECT name FROM projects WHERE name=project_name) THEN
		INSERT INTO projects (name) VALUES (project_name);
	END IF;
	INSERT INTO corrections (user_id, project_id, score)
	VALUES (user_id, (SELECT id from projects WHERE name=project_name), score);
END;$$
DELIMITER ;
