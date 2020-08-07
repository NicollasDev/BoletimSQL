USE boletim;

/* DQL - Data Query Language */

-- Selecionar todos os dados da tabela

SELECT * FROM Aluno;

--SELECT * FROM Aluno WHERE Nome = 'Edu';
--SELECT * FROM Aluno WHERE idAluno = 4;

SELECT * FROM Aluno WHERE idAluno = 4;

-- Selecionar como uma BUSCA específica
-- % Qualquer coisa, Completa a busca
-- Like = Como

--SELECT * FROM Aluno WHERE Nome LIKE 'Ni%as';
--SELECT * FROM Aluno WHERE Nome LIKE '%tor';
--SELECT * FROM Aluno WHERE Nome LIKE 'ca%';

SELECT * FROM Aluno WHERE
idAluno = 2 OR -- ||
idAluno = 3;

SELECT * FROM Aluno WHERE
Nome LIKE '%as' AND --&&
RA LIKE '%41';

-- Selecionar dados com algumas condições especiais
SELECT * FROM Aluno WHERE idAluno > 6 AND idAluno < 8;

-- Ordenar dados de forma crescente (padrão)
--SELECT * FROM Aluno ORDER BY Nome;

-- Ordenar dados de forma crescente
SELECT * FROM Aluno ORDER BY Nome ASC;

-- Ordenar dados de forma decrescente
SELECT * FROM Aluno ORDER BY Nome DESC;
--SELECT * FROM Aluno ORDER BY Idade DESC;

-- Selecionar dados ENTRE valores específicos 
SELECT * FROM Trabalho WHERE 
DataEntrega BETWEEN '2020-08-01T23:59:59' AND '2020-08-04T23:59:59';

UPDATE Trabalho SET  
DataEntrega = '2020-08-03T23:59:59'
WHERE IdTrabalho = 8