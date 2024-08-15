--Constraints: restrições na definição de coluna
--CREATE TABLE

CREATE DATABASE bdTeste;
GO

USE bdTeste;
GO

--Parent table
CREATE TABLE Pais(
	CountryId INT PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL,
	Populacao INT NOT NULL,
	Capital VARCHAR(100) NOT NULL
);
GO


--Child table
CREATE TABLE Cidade(
	CidadeId INT PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL,
	Populacao INT NOT NULL,
	CountryId INT NOT NULL,
	FOREIGN KEY (CountryId) REFERENCES Pais(CountryId) ON DELETE CASCADE
);
GO

INSERT INTO Pais (CountryId, Nome, Populacao, Capital)
VALUES
    (1, 'Brasil', 213993437, 'Brasília'),
    (2, 'Estados Unidos', 331893745, 'Washington, D.C.'),
    (3, 'França', 65273511, 'Paris'),
    (4, 'Japão', 126851000, 'Tóquio'),
    (5, 'Alemanha', 83783942, 'Berlim');


INSERT INTO Cidade (CidadeId, Nome, Populacao, CountryId)
VALUES
    (1, 'Brasília', 305765, 1),
    (2, 'Washington, D.C.', 692683, 2),
    (3, 'Paris', 2148327, 3),
    (4, 'Tóquio', 13929286, 4),
    (5, 'Berlim', 3748148, 5);

--Criando tabela nova com os dados já existentes em outra
SELECT * INTO PaisesPrimarios FROM Pais;

--Update
UPDATE PaisesPrimarios
SET Populacao = 214000000
WHERE CountryId = 1;

--DELETE
DELETE FROM PaisesPrimarios
WHERE CountryId = 3;

--DROP
DROP TABLE PaisesPrimarios;


SELECT * FROM PaisesPrimarios;
SELECT * FROM Pais;
SELECT * FROM Cidade;