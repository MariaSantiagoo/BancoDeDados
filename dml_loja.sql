USE Loja_M;

INSERT INTO Cliente(Nome)
VALUES
('Giu'),
('Mari'),
('Bia'),
('Pitoco');

SELECT * FROM Cliente;

INSERT INTO Produto(Nome, Preco)
VALUES
('Teclado', 150.00),
('Mouse', 80.00),
('Monitor', 900.00),
('Impressora', 600.00),
('Headset', 200.00);

SELECT * FROM Produto;

INSERT INTO Pedido(Data_horario,IdCliente, IdProduto)
VALUES
('2025/10/07 06:30:00', 1, 1), --Giu comprou um teclado
('2025/10/08 00:00:56', 2, 2), -- Mari comprou um mouse
('2025/10/08 00:36:00', 2, 3), -- Mari comprou um monitor
('2025/04/28 18:30:24', 3, 5); --Bia comprou um headset

SELECT * FROM Pedido;
--Pitoco nao fez nenhum pedido
--Ninguem comprou a impressora