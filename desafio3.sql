CREATE VIEW historico_reproducao_usuarios AS
SELECT 
  u.use_name AS usuario,
  s.son_name AS nome
FROM
  users AS u
  INNER JOIN songs AS s
  INNER JOIN history_played AS h
  ON 
    s.son_id = h.his_son_id AND
    u.use_id = h.his_use_id
ORDER BY
  u.use_name,
  s.son_name;
