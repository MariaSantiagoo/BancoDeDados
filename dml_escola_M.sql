--Comando para usar um banco já criado
USE db_escola_M;

--Comando para inserir um novo registro
INSERT INTO tb_escola(nome, endereco)
VALUES('Moura Branco', 'Rua Tapajós, 1085 - Olímpico');

SELECT * FROM tb_escola

--Registro na tabela aluno
INSERT INTO tb_aluno(nome, cpf, dataNasc, matricula, IDEscola)
VALUES
('Giulia', '19024364825', '2008/06/10', 'FbZ6UZJrEj', 1),
('Maria', '36786966861', '2007/06/10', 'xncXWhsDdQ', 1),


INSERT INTO tb_aluno(nome, cpf, dataNasc, matricula, IDEscola)
VALUES
('Alice', '19086964843', '2011/06/01', 'FbZXWZJrdQ', 1),
('Pitoco', '49140276074', '2011/06/01', 'H8plDoNIs1', 1),
('Bia', '20816784825', '2008/04/28', 'JbS0SJKsAB', 1),
('Luis','20816784826', '2008/04/28', 'JbS0SJKsLR', 1),
('Eloa','20816784827', '2008/04/28', 'JbS0SJKsEA', 1);

SELECT * FROM tb_aluno;

--Registro tabela turma

INSERT INTO tb_turma(NumeroSala, Período, Serie, NomeTurma, IDEscola)
VALUES
(13, 'manha', 2,'A',1),
(15, 'manha', 2,'C',1);

INSERT INTO tb_turma(NumeroSala, Período, Serie, NomeTurma, IDEscola)
VALUES
(14, 'manha', 2,'B',1);

SELECT * FROM tb_turma;

-- Prova
INSERT INTO tb_prova(NomeProfessor,Materia,Duracao,Nota,DataProva,IDAluno)
VALUES
('janaina','biologia','01:30:00', '6.5', '2025/08/04', 1),
('andreia','matematica','01:30:00','7.0', '2025/08/07', 1);

INSERT INTO tb_prova(NomeProfessor,Materia,Duracao,Nota,DataProva,IDAluno)
VALUES
('janaina','biologia','01:30:00','7.0', '2025/08/07', 2);

SELECT * FROM tb_prova;
 
 --Tabela intermediaria - turmaProva
INSERT INTO tb_turma_prova(IDTurma,IDProva)
VALUES
(1,3),
(2,4);

SELECT * FROM tb_turma_prova;

--Comando que atualiza o dado na tabela, nesse caso o nome do aluno pelo cpf
UPDATE tb_aluno
SET nome = 'Ana Bia'
WHERE cpf = '20816784825';

--Comando que exclui um registro
DELETE FROM tb_turma
WHERE IDTurma = 3;
