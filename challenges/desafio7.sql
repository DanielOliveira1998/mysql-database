SELECT
  Artistas.Nome AS artista,
  Albuns.Nome AS album,
  COUNT(Artistas_Seguidos.Pessoas_Usuarias_Id) AS pessoas_seguidoras
FROM
  Albuns INNER JOIN
  Artistas ON Albuns.Artistas_Id = Artistas.Id
  LEFT JOIN
  Artistas_Seguidos ON Artistas.Id = Artistas_Seguidos.Artistas_Id
  GROUP BY Artistas.Nome, Albuns.Nome
  ORDER BY pessoas_seguidoras DESC, Artistas.Nome, Albuns.Nome;