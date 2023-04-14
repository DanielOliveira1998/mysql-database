SELECT
  CAST(FORMAT(ROUND(MIN(Planos.Valor), 2), 2) AS CHAR) AS faturamento_minimo,
  CAST(ROUND(MAX(Planos.Valor), 2) AS CHAR) AS faturamento_maximo,
  CAST(ROUND(AVG(Planos.Valor), 2) AS CHAR) AS faturamento_medio,
  CAST(ROUND(SUM(Planos.Valor), 2) AS CHAR) AS faturamento_total
FROM 
  Planos INNER JOIN
  Pessoas_Usuarias ON Planos.Id = Pessoas_Usuarias.Planos_Id;