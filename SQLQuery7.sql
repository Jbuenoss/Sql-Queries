--Constraints: restrições na definição de coluna
--CREATE TABLE

CREATE DATABASE bdTeste;
GO

USE bdTeste;
GO

--parent table
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


SELECT * FROM Pais;

SELECT * FROM Cidade;