CREATE VIEW top_3_artistas AS
SELECT 
  a.art_name AS artista,
  count(a.art_name) AS seguidores 
FROM 
  artists AS a
  INNER JOIN followed AS f
  ON a.art_id = f.fol_art_id
GROUP BY artista
ORDER BY
  seguidores DESC,
  artista
LIMIT 3;
