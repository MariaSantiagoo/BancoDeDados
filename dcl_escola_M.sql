--Cria um login no ssms
CREATE LOGIN Giulia WITH PASSWORD = '1006';

--Tabela ficticia
CREATE TABLE Usuario (
id INT NOT NULL
);
--cria um usuário dentro do banco de dados
CREATE USER Giulia FOR LOGIN Giulia;

--Concede acesso ao usuario
GRANT SELECT TO Giulia;