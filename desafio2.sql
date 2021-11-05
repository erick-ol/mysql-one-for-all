CREATE VIEW estatisticas_musicais as
SELECT
  COUNT(*) AS cancoes,
  (
    SELECT COUNT(*)
    FROM artists
  ) AS artistas,
  (
    SELECT COUNT(*)
    FROM albuns
  ) AS albuns
FROM songs;
