/* DML  - Data Manipulation Language */

USE boletim

-- INSERT - Inserir

INSERT INTO Aluno (Nome, RA, Idade) VALUES ('Edu','RA1313433',16); 
--INSERT INTO Aluno (Nome, RA, Idade) VALUES ('RA1313413','Caua',16); Pode-se inverter a ordem
INSERT INTO Materia (Titulo) VALUES ('Matematica');
INSERT INTO Materia (Titulo) VALUES ('Portugues');
INSERT INTO Trabalho (Nota, DataEntrega, IdAluno, IdMateria) VALUES (8.6, '2020-08-05T23:59:59', 1,2)
INSERT INTO Trabalho (Nota, DataEntrega, IdAluno, IdMateria) VALUES (8.6, '2020-08-01T23:59:59', 2,1)


-- UPDATE - Alterar 

UPDATE Aluno SET  
Idade = 18
WHERE idAluno = 8 

/*
UPDATE Aluno SET 
RA ='Update'
WHERE idAluno = 8 */


--Com update sem Where todos os elementos s�o mudados

-- DELETE - Excluir 

DELETE FROM Aluno WHERE idAluno = 5;

--WHERE � IMPORTANTE POIS ELE � NECESSARIO PARA PODER SELECIONAR APENAS O QUE QUER EXCLUIR OU MUDAR
-- DELETE FROM Trabalho;
-- DELETE FROM Aluno;
-- DELETE FROM Materia;



/* DQL - SELECT */ 

SELECT * FROM Aluno;
SELECT * FROM Materia;
SELECT * FROM Trabalho;


/*CREATE TABLE teste(
CPF VARCHAR(16) UNIQUE NOT NULL,     COM UNIQUE S� PODE SE USAR UMA VEZ O VALOR, 
Lorem ipsum                          ASSIM N DA PRA TER VALORES COMO NOME REPETIDOS NA TABELA. 
);
*/

ALTER TABLE Trabalho ALTER COLUMN Nota DECIMAL (10, 2)

/**/
