-- Credentials Confirmer
DROP PROCEDURE IF EXISTS `SP_CONFIRM_ADMIN_KEY`;
DELIMITER //
CREATE DEFINER='n3G49MRq9MIh'@'localhost' PROCEDURE `SP_CONFIRM_ADMIN_KEY`(IN `cs` BINARY(16), OUT `VALID` BOOLEAN)
BEGIN
	SELECT @ADMIN_KEY:=AES_DECRYPT(`cs`,UNHEX(SHA2('wH4ci67fG53Xo5yBxYOAzXwgrIc4tuhQ',512)));
    IF ADMIN_KEY = BINARY('2qW50O2lfI0jcsO') THEN
        SET `VALID` = TRUE;
	ELSE 
		SET `VALID` = FALSE;
	END IF;
END //
DELIMITER ;