-- Script to create the SafeDiv function
-- This function divides the first argument 'a' by the second argument 'b'
-- and returns 0 if the second argument 'b' is equal to 0.

DELIMITER $$

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS INT
DETERMINISTIC
BEGIN
    -- Return a / b if b is not 0, otherwise return 0
    RETURN IF(b = 0, 0, a DIV b);
END$$

DELIMITER ;

