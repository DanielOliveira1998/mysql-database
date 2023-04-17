-- SELECT
--   Artistas.Nome AS artista,
--   Albuns.Nome AS album,
--   COUNT(Artistas_Seguidos.Pessoas_Usuarias_Id) AS pessoas_seguidoras
-- FROM 
--   Artistas INNER JOIN 
--   Artistas_Seguidos ON Artistas.Id = Artistas_Seguidos.Artistas_Id
--   INNER JOIN 
--   Pessoas_Usuarias ON Artistas_Seguidos.Pessoas_Usuarias_Id = Pessoas_Usuarias.Id
--   GROUP BY Artistas.Nome
--   ORDER BY pessoas_seguidoras DESC, artista;
SELECT
  Artistas.Nome AS artista,
  Albuns.Nome AS album,
  COUNT(Artistas_Seguidos.Pessoas_Usuarias_Id) AS pessoas_seguidoras
FROM
  Albuns INNER JOIN
  Artistas ON Albuns.Artistas_Id = Artistas.Id
  LEFT JOIN 
  Artistas_Seguidos ON Artistas.Id = Artistas_Seguidos.Artistas_Id
  GROUP BY Artistas.Nome
  ORDER BY pessoas_seguidoras DESC, artista;