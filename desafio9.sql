DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
  SELECT
    a.art_name AS artista,
    al.alb_name AS album
  FROM
    albuns AS al
    INNER JOIN artists AS a
    ON al.alb_art_id = a.art_id
  WHERE
    a.art_name = artista;
END $$

DELIMITER ;
