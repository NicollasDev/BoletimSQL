/* 
DDL Data Definition Language
*/
-- Criar o banco
CREATE DATABASE boletim;
GO

--Usar efetivamente o banco
USE boletim;
GO

--Apagamos uma base de dados
--DROP DATABASE boletim;

/*Criamos a tabela Aluno */
/*IDENTITY - Gera os ids automaticamente, incrementando-os
*/

CREATE TABLE Aluno (
idAluno INT PRIMARY KEY IDENTITY NOT NULL,
Nome VARCHAR(100)NOT NULL,
RA VARCHAR(20),
Idade INT 
);
GO

--Apagamos uma tabela caso necessário
--DROP TABLE Aluno;

/*Criamos a tabela matéria*/
CREATE TABLE Materia(
IdMateria INT IDENTITY PRIMARY KEY NOT NULL,
Titulo VARCHAR(50)
);
GO

CREATE TABLE Trabalho(
IdTrabalho INT IDENTITY PRIMARY KEY NOT NULL,
Nota DECIMAL,

--Colocamos as chaves estrangeiras
IdMateria INT FOREIGN KEY REFERENCES Materia(IdMateria),
IdAluno INT FOREIGN KEY REFERENCES Aluno(IdAluno)
);
GO

--Apagamos uma tabela caso necessário 
-- DROP TABLE Aluno;
-- DROP TABLE Materia;
-- DROP TABLE Trabalho;

--Alterar a estrutura da tabela Trabalho, incluindo uma coluna nova
ALTER TABLE Trabalho ADD DataEntrega DATETIME;

--Alteramos e excluimos uma coluna de teste
--ALTER TABLE Trabalho ADD Teste INT;
--ALTER TABLE Trabalho DROP COLUMN Teste;

