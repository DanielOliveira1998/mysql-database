SELECT
  Pessoas_Usuarias.Nome AS pessoa_usuaria,
  IF (MAX(YEAR(Historico.Data_De_Reproducao)) > 2020, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM
  Pessoas_Usuarias INNER JOIN 
  Historico ON Pessoas_Usuarias.Id = Historico.Pessoas_Usuarias_Id
  GROUP BY Pessoas_Usuarias.Nome
  ORDER BY Pessoas_Usuarias.Nome;