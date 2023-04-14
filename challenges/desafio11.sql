SELECT
  Albuns.Nome AS album,
  COUNT(Musicas_Favoritas.Musicas_Id)
FROM
  Musicas_Favoritas INNER JOIN
  Musicas ON Musicas_Favoritas.Musicas_Id = Musicas.Id
  INNER JOIN
  Artistas ON Albuns.Id = Albuns.Id
  GROUP BY Albuns.Nome
  LIMIT 3;