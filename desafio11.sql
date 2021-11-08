CREATE VIEW cancoes_premium AS
SELECT
  s.title AS nome,
  COUNT(*) AS reproducoes
FROM
  history_played AS h
  INNER JOIN songs AS s
  ON h.his_son_id = s.son_id
  INNER JOIN users AS u
  ON h.his_use_id = u.use_id
WHERE
  u.use_pla_id IN (2 , 3)
GROUP BY s.son_name
ORDER BY nome;
