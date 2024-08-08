-- Script to create the SafeDiv function
-- This function divides the first argument 'a' by the second argument 'b'
-- and returns 0 if the second argument 'b' is equal to 0.

DELIMITER //

DROP FUNCTION IF EXISTS SafeDiv;
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
	RETURN (IF (b = 0, 0, a / b));
END //

DELIMITER ;
