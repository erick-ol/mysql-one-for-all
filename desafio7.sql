CREATE VIEW perfil_artistas AS
SELECT
  a.art_name AS artista,
  al.alb_name AS album,
  (
    SELECT COUNT(fol_art_id)
    FROM followed AS f
    WHERE f.fol_art_id = a.art_id
  ) AS seguidores
FROM
  artists AS a
  INNER JOIN albuns AS al
  ON a.art_id = al.alb_art_id
ORDER BY
  seguidores DESC,
  artista,
  album;
