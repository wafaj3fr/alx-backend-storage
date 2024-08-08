-- Script to create a trigger that resets the valid_email attribute when the email is changed
-- This script assumes the table 'users' has columns 'email' and 'valid_email'.
-- The 'valid_email' attribute will be set to FALSE when the email is updated.

DELIMITER $$

CREATE TRIGGER reset_valid_email_on_update
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the email has changed
    IF OLD.email <> NEW.email THEN
        -- Reset the valid_email attribute to FALSE
        SET NEW.valid_email = FALSE;
    END IF;
END$$

DELIMITER ;

