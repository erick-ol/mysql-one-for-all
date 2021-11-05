CREATE VIEW faturamento_atual AS
SELECT
  min(pla_value) AS faturamento_minimo,
  max(pla_value) AS faturamento_maximo,
  (
    SELECT round(avg(pla_value),2)
    FROM plans AS p
    INNER JOIN users AS u
    ON u.use_pla_id = p.pla_id
  ) AS faturamento_medio,
  (
    SELECT sum(pla_value)
    FROM plans AS p
    INNER JOIN users AS u
    ON u.use_pla_id = p.pla_id
  ) AS faturamento_total
FROM plans;
