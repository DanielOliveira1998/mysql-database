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
  GROUP BY Pessoas_Usuarias.Nome
  ORDER BY Pessoas_Usuarias.Nome;