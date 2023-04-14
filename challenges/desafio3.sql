-- SELECT 
-- Pessoas_Usuarias.Nome  AS  pessoas_usuaria, 
-- COUNT(Historico.Data_De_Reproducao) AS musicas_ouvidas, 
-- ROUND(SUM(Musicas.Duracao)/60,2) AS total_minutos 
-- FROM
--   SpotifyClone.Pessoas_Usuarias
--   INNER JOIN 
--   SpotifyClone.Historico ON Pessoas_Usuarias.Id = Historico.Pessoas_Usuarias_Id
--   INNER JOIN 
--   SpotifyClone.Musicas ON Musicas.id = Historico.Musicas_Id
--   GROUP BY SpotifyClone.Pessoas_Usuarias
--   ORDER BY SpotifyClone.Pessoas_Usuarias;
SELECT 
Pessoas_Usuarias.Nome  AS  pessoa_usuaria, 
COUNT(Historico.Data_De_Reproducao) AS musicas_ouvidas, 
ROUND(SUM(Musicas.Duracao)/60,2) AS total_minutos 
FROM
  Pessoas_Usuarias
  INNER JOIN 
  Historico ON Pessoas_Usuarias.Id = Historico.Pessoas_Usuarias_Id
  INNER JOIN 
  Musicas ON Musicas.id = Historico.Musicas_Id
  GROUP BY Pessoas_Usuarias.nome
  ORDER BY Pessoas_Usuarias.nome;