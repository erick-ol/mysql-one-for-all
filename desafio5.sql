CREATE VIEW top_2_hits_do_momento AS
SELECT
  son_name AS cancao,
  count(son_name) AS reproducoes
FROM
  songs AS s
  INNER JOIN history_played h 
  ON h.his_son_id = s.son_id 
GROUP BY cancao 
ORDER BY
  reproducoes DESC,
  cancao 
LIMIT 2;
