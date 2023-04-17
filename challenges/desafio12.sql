SELECT
  Artistas.Nome AS artista,
  CASE
    WHEN COUNT(Musicas_Favoritas.Musicas_Id) = 5 THEN 'A'
    WHEN COUNT(Musicas_Favoritas.Musicas_Id) = 3 OR COUNT(Musicas_Favoritas.Musicas_Id) = 4 THEN 'B'
    WHEN COUNT(Musicas_Favoritas.Musicas_Id) = 1 OR COUNT(Musicas_Favoritas.Musicas_Id) = 2 THEN 'C'
    WHEN COUNT(Musicas_Favoritas.Musicas_Id) = 0 THEN '-'
  ELSE 'Não Classificado'
END AS ranking
FROM
  Musicas_Favoritas INNER JOIN
  Musicas ON Musicas_Favoritas.Musicas_Id = Musicas.Id
  INNER JOIN
  Albuns ON Musicas.Albuns_Id = Albuns.Id
  RIGHT JOIN 
  Artistas ON Albuns.Artistas_Id = Artistas.Id
  GROUP BY Artistas.Id
  ORDER BY COUNT(Musicas_Favoritas.Musicas_Id) DESC, Artistas.Nome;