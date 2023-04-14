SELECT
  Artistas.Nome AS artista,
  Albuns.Nome AS album
FROM
  Artistas INNER JOIN
  Albuns ON Artistas.Id = Albuns.Artistas_Id
  WHERE Artistas.Nome = 'Elis Regina';