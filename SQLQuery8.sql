CREATE DATABASE youtube;
GO

USE youtube;
GO

CREATE TABLE Canal(
	Id int IDENTITY(1,1) PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL UNIQUE,
	Categoria VARCHAR(150),
	DataCriacao DATETIME NOT NULL
);

INSERT INTO Canal(Nome, DataCriacao)
VALUES
	('Game', GETDATE()),
	('Vlogs', '20200725 09:15:15');


--ALTER TABLE
UPDATE Canal
SET Categoria = 'Padrao';

ALTER TABLE Canal
ALTER COLUMN Categoria VARCHAR(200) NOT NULL;

ALTER TABLE Canal
ADD Ativo BIT DEFAULT 0;

--Renomear coluna	
EXEC sp_rename 'Canal.Nome', 'NomeCanal', 'COLUMN';

--Mais rápido que o delete sem o where e reinicia o identity se tiver
TRUNCATE TABLE Canal;

SELECT * FROM Canal;