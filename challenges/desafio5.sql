SELECT
  Musicas.Nome AS cancao,
  COUNT(Historico.Musicas_Id) AS reproducoes
FROM
  Musicas INNER JOIN
  Historico ON Musicas.Id = Historico.Musicas_Id
  GROUP BY Musicas.Nome
  ORDER BY reproducoes DESC, cancao
  LIMIT 2;
