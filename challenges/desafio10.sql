CREATE TABLE SpotifyClone.Musicas_Favoritas(
  Pessoas_Usuarias_Id INT,
  Musicas_Id INT,
  FOREIGN KEY (Pessoas_Usuarias_Id) REFERENCES Pessoas_Usuarias (Id),
  FOREIGN KEY (Musicas_Id) REFERENCES Musicas (Id),
  constraint PRIMARY KEY (Pessoas_Usuarias_Id, Musicas_Id)
) engine = InnoDB;

INSERT INTO Musicas_Favoritas (Pessoas_Usuarias_Id, Musicas_Id) VALUES
  (1, 3),
	(1, 6),
	(1, 10),
	(2, 4),
	(3, 1),
	(3, 3),
	(4, 7),
	(4, 4),
	(5, 10),
	(5, 2),
	(6, 4),
	(7, 7),
	(8, 3);