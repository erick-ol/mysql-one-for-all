DELIMITER $$

CREATE TRIGGER trigger_usuario_delete
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
    DELETE
        FROM followed
        WHERE OLD.fol_use_id = fol_use_id;
    DELETE
        FROM history_played
        WHERE OLD.his_use_id = his_use_id;
END $$

DELIMITER ;
