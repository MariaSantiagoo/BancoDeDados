USE db_escola_M;
--No select, se eu utilizar o * após o SELECT, mostrará toda a tabela, mas podemos selecionar um campo ou mais, por exemplo:
SELECT IDEscola, nome FROM tb_escola;

--SELECT TOP limita a quantidade de registros, exemplo:
SELECT TOP 3 nome FROM tb_aluno;

--Exibir somente três registros, do mais recente pro menos recente, exemplo:
SELECT TOP 3 nome
FROM tb_aluno
ORDER BY IDAluno DESC;

--Desafio
SELECT nomeTurma 
FROM tb_turma 
WHERE IDturma = 2;

--Exibe a prova da professora Andreia
SELECT * FROM tb_prova WHERE NomeProfessor = 'andreia';

--Exibe quantos alunos tem
SELECT COUNT(cpf) AS qtdTotalAluno FROM tb_aluno;

--Exibe quantos alunos estão atrelados a uma prova
SELECT COUNT(IDAluno) AS qtdAlunoProva FROM tb_prova WHERE Materia='biologia';

--Exibe a data de nascimento do aluno mais velho
SELECT MIN(dataNasc) AS alunoMaisVelho FROM tb_aluno;

--Exibe a data de nascimento do mais novo
SELECT MAX(dataNasc) AS alunoMaisNovo FROM tb_aluno;

--Exibe o nome e a data de nascimento do mais velho
SELECT nome, dataNasc
FROM tb_aluno
WHERE dataNasc = (SELECT MIN(dataNasc) FROM tb_aluno);

--Soma os ID's das turmas cadastradas
SELECT SUM(IDTurma) FROM tb_turma;

--Media de notas de prova
SELECT AVG(nota) AS media FROM tb_prova;

--Exiba os nomes dos alunos mais novos
SELECT MAX(dataNasc) AS maisNovos, IDAluno
FROM tb_aluno
GROUP BY IDAluno
ORDER BY maisNovos DESC;