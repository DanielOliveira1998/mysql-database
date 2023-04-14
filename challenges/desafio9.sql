SELECT
  COUNT(Historico.Musicas_Id) AS musicas_no_historico
FROM
  Pessoas_Usuarias INNER JOIN
  Historico ON Pessoas_Usuarias.Id = Historico.Pessoas_Usuarias_Id
  WHERE Pessoas_Usuarias.Nome = 'Barbara Liskov';