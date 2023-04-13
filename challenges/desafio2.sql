SELECT
 COUNT (DISTINCT Musicas.Id) AS cancoes,
 COUNT (DISTINCT Artistas.Id) AS artistas,
 COUNT (DISTINCT Albuns.Id) AS albuns
FROM
  SpotifyClone.Musicas,
  SpotifyClone.Artistas,
  SpotifyClone.Albuns;