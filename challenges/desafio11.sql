SELECT
  Albuns.Nome As album,
  COUNT(Musicas_Favoritas.Musicas_Id) AS favoritadas
FROM
  Albuns INNER JOIN
  Musicas ON  Albuns.Id = Musicas.Albuns_Id
  LEFT JOIN
  Musicas_Favoritas ON Musicas.Id = Musicas_Favoritas.Musicas_Id
  GROUP BY Albuns.Id
  ORDER BY favoritadas DESC, Albuns.Nome
  LIMIT 3;