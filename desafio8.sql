DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
    DELETE
        FROM followed 
        WHERE fol_use_id = OLD.fol_use_id;
    DELETE
        FROM history_played
        WHERE his_use_id = OLD.his_use_id;
END $$

DELIMITER ;
