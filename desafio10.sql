DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE result INT;
  SELECT
    COUNT(*) AS quantidade_musicas_no_historico
  FROM
    history_played
  WHERE
    his_use_id = id INTO result;
  RETURN result;
END $$

DELIMITER ;
