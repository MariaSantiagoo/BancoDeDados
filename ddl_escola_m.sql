--Comando que cria um novo Banco de SSMS
CREATE DATABASE db_escola_M;
--Comando que separa em blocos, executando em ordem sequencial
GO

USE db_escola_M;

--Comando que cria tabela
CREATE TABLE tb_escola(
	IDEscola	INT					IDENTITY(1,1)	PRIMARY KEY
	,nome		NVARCHAR(255)						NOT NULL
	,endereco	NVARCHAR(255)						NOT NULL
);
GO

SELECT * FROM tb_escola

--TABELA ALUNO
CREATE TABLE tb_aluno(
    IDAluno			INT					IDENTITY(1,1)		PRIMARY KEY
	,nome			NVARCHAR(255)							NOT NULL
	,cpf			NCHAR(11)			UNIQUE				NOT NULL
	,matricula		NVARCHAR(10)		UNIQUE				NOT NULL
	,dataNasc		DATE									NOT NULL

	,IDEscola	INT											NOT NULL
	
	FOREIGN KEY (IDEscola) REFERENCES tb_escola(IDEscola)
);

SELECT * FROM tb_aluno;

CREATE TABLE tb_prova(
IDProva				INT					IDENTITY(1,1)		PRIMARY KEY
,NomeProfessor		NVARCHAR(255)							NOT NULL
,Materia			NVARCHAR(255)							NOT NULL
,Duracao			TIME									NOT NULL
,Nota				DECIMAL	(3,1)							NOT NULL
,DataProva				DATE								NOT NULL

,IDAluno INT NOT NULL

,FOREIGN KEY (IDAluno) REFERENCES tb_aluno (IDAluno)
);

SELECT * FROM tb_prova;

--Tabela turma

CREATE TABLE tb_turma(
IDTurma INT IDENTITY(1,1) PRIMARY KEY NOT NULL
,NumeroSala INT NOT NULL
,Período NCHAR(5)
,Serie   NVARCHAR(10)
,NomeTurma NVARCHAR(100)
,IDEscola INT NOT NULL

,FOREIGN KEY (IDEscola) REFERENCES tb_escola (IDEscola)
);

SELECT * FROM tb_turma;

CREATE TABLE tb_turma_prova(
IDTurma INT NOT NULL
,IDProva INT NOT NULL,

PRIMARY KEY (IDTurma, IDProva)
);


