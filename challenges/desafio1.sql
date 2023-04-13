-- Descomente e altere as linhas abaixo:

-- Descomente e altere as linhas abaixo:

DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
use SpotifyClone;
CREATE TABLE SpotifyClone.Artistas(
  Id INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(150) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Planos(
  Id INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(150) NOT NULL,
  Valor  FLOAT UNSIGNED NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.Pessoas_Usuarias(
  Id INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(255) NOT NULL,
  Idade INT UNSIGNED NOT NULL,
  Planos_Id INT NOT NULL,
  Data_De_Assinatura DATE NOT NULL,
  FOREIGN KEY (Planos_Id) REFERENCES Planos (Id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Artistas_Seguidos(
  Pessoas_Usuarias_Id INT,
  Artistas_Id INT,
  FOREIGN KEY (Pessoas_Usuarias_Id) REFERENCES Pessoas_Usuarias (Id),
  FOREIGN KEY (Artistas_Id) REFERENCES Artistas (Id),
  constraint PRIMARY KEY (Pessoas_Usuarias_Id, Artistas_Id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Albuns(
  Id INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(150) NOT NULL,
  Ano_De_Lancamento INT NOT NULL,
  Artistas_Id INT NOT NULL,
  FOREIGN KEY (Artistas_Id) REFERENCES Artistas (Id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Musicas(
  Id INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(150) NOT NULL,
  Albuns_Id INT NOT NULL,
  Duracao INT NOT NULL,
  FOREIGN KEY (Albuns_Id) REFERENCES Albuns (Id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.Historico(
  Data_De_Reproducao datetime NOT NULL,
  Pessoas_Usuarias_Id INT,
  Musicas_Id INT,
  FOREIGN KEY (Pessoas_Usuarias_Id) REFERENCES Pessoas_Usuarias (Id),
  FOREIGN KEY (Musicas_Id) REFERENCES Musicas (Id),
  constraint PRIMARY KEY (Pessoas_Usuarias_Id, Musicas_Id)
) engine = InnoDB;

INSERT INTO SpotifyClone.Artistas (Nome)
VALUES
  ('Beyoncé'),
	('Queen'),
	('Elis Regina'),
	('Baco Exu do Blues'),
	('Blind Guardian'),
	('Nina Simone');

INSERT INTO SpotifyClone.Planos (Nome, Valor)
VALUES
	('gratuito', 0),
	('familiar', 7.99),
	('universitário', 5.99),
	('pessoal', 6.99);

INSERT INTO SpotifyClone.Pessoas_Usuarias (Nome, Idade, Planos_Id, Data_De_Assinatura) 
VALUES
	('Barbara Liskov', 82, 1, '2019-10-20'),
	('Robert Cecil Martin', 58, 1, '2017-01-06'),
	('Ada Lovelace', 37, 2, '2017-12-30'),
	('Martin Fowler', 46, 2, '2017-01-17'),
	('Sandi Metz', 58, 2, '2018-04-29'),
	('Paulo Freire', 19, 3, '2018-02-14'),
	('Bell Hooks', 26, 3, '2018-01-05'),
	('Christopher Alexander', 85, 4, '2019-06-05'),
	('Judith Butler', 45, 4, '2020-05-13'),
	('Jorge Amado', 58, 4, '2017-02-17');

INSERT INTO SpotifyClone.Artistas_Seguidos (Pessoas_Usuarias_Id, Artistas_Id) 
VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(2, 1),
	(2, 3),
	(3, 2),
	(4, 4),
	(5, 5),
	(5, 6),
	(6, 6),
	(6, 1),
	(7, 6),
	(9, 3),
	(10, 2);

INSERT INTO SpotifyClone.Albuns (Id, Nome, Ano_De_Lancamento, Artistas_Id) 
VALUES
	(1, 'Renaissance', 2022, 1),
	(2, 'Jazz', 1978, 2),
	(3, 'Hot Space', 1982, 2),
	(4, 'Falso Brilhante', 1998, 3),
	(5, 'Vento de Maio', 2001, 3),
	(6, 'QVVJFA?', 2003, 4),
	(7, 'Somewhere Far Beyond', 2007, 5),
	(8, 'I Put A Spell On You', 2012, 6);

INSERT INTO SpotifyClone.Musicas (Id, Nome, Albuns_Id, Duracao) 
VALUES
	(1, 'BREAK MY SOUL', 1, 279),
	(2, 'VIRGO`S GROOVE', 1, 369),
	(3, 'ALIEN SUPERSTAR', 1, 116),
	(4, 'Don`t Stop Me Now', 2, 203),
	(5, 'Under Pressure', 3, 152),
	(6, 'Como Nossos Pais', 4, 105),
	(7, 'O Medo de Amar é o Medo de Ser Livre', 5, 207),
	(8, 'Samba em Paris', 6, 267),
	(9, 'The Bard`s Song', 7, 244),
	(10, 'Feeling Good', 8, 100);

INSERT INTO SpotifyClone.Historico (Data_De_Reproducao, Pessoas_Usuarias_Id, Musicas_Id) 
VALUES
	('2022-02-28 10:45', 1, 8),
	('2020-05-02 05:30', 1, 2),
	('2020-03-06 11:22', 1, 10),
	('2022-08-05 08:05', 2, 10),
	('2020-01-02 07:40', 2, 7),
	('2020-11-13 16:55', 3, 10),
	('2020-12-05 18:38', 3, 2),
	('2021-08-15 17:10', 4, 8),
	('2022-01-09 01:44', 5, 8),
	('2020-08-06 15:23', 5, 5),
	('2017-01-24 00:31', 6, 7),
	('2017-10-12 12:35', 6, 1),
	('2011-12-15 22:30', 7, 4),
	('2012-03-17 14:56', 8, 4),
	('2022-02-24 21:14', 9, 9),
	('2015-12-13 08:30', 10, 3);
