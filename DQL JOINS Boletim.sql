/* DQL - JOINS */

USE boletim;

SELECT 
Aluno.Nome,
Materia.Titulo,
Trabalho.Nota
FROM Trabalho
INNER JOIN Aluno ON Trabalho.IdAluno = Aluno.idAluno
INNER JOIN Materia ON Trabalho.IdMateria = Materia.IdMateria
WHERE Trabalho.Nota IS NULL;

SELECT 
Aluno.Nome,
Trabalho.Nota
FROM Trabalho
RIGHT JOIN Aluno ON Trabalho.IdAluno = Aluno.idAluno
--LEFT JOIN Aluno ON Trabalho.IdAluno = Aluno.idAluno

SELECT * FROM Materia;
SELECT * FROM Aluno;
SELECT * FROM Trabalho;
INSERT INTO Trabalho (DataEntrega, IdAluno, IdMateria) VALUES ( '2020-08-02 23:59:59.000', 1, 2)



