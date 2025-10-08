USE Loja_M;

SELECT * FROM Pedido;

--traga ou exiba os registros dos pedidos
--precisa ter o nome do cliente, o nome do produto e a data e hora do pedido
SELECT 
  FORMAT (Data_horario, 'dd/mm/yyyy hh:mm:ss') AS Data_horario,
	   C.Nome AS NomeCliente,
	   PR.Nome AS NomeProduto
FROM Pedido
INNER JOIN Cliente C ON Pedido.IdCliente = C.IdCliente
INNER JOIN Produto PR ON Pedido.IdProduto = PR.IdProduto
WHERE DAY(Data_horario) = '08'; --pode se usar DAY, MONTH E YEAR

--Por a data e hora no formato dd-mm-aaaa hh:mm:ss
--exiba somente o registro de uma data especifica - filtrar por data
--exiba somente o registro de uma data especifica - filtrar por mes


--Exiba todos os clientes que nao fizeram pedidos
--Nome do cliente e data do pedido


--exiba somente clientes que nao fizeram pedido
SELECT 
	C.Nome,
	PE.Data_horario
FROM Cliente C --tabela esquerda
LEFT JOIN Pedido PE ON C.IdCliente = PE.IdCliente
WHERE PE.Data_horario IS NULL; 

--exiba todos produtos que estao ou nao atrelados a pedidos

SELECT 
	PE.Data_horario,
	PR.Nome
FROM Pedido PE
RIGHT JOIN Produto PR ON PE.IdProduto = PR.IdProduto

--Liste todos os registros de pedidos que são do dia ou data 07/10/25 até 08/10/25
--DICA: Entre as datas

SELECT 
C.Nome AS NomeCliente,
PR.Nome AS NomeProduto
FROM Pedido
INNER JOIN Cliente C ON Pedido.IdCliente = C.IdCliente
INNER JOIN Produto PR ON Pedido.IdProduto = PR.IdProduto
WHERE data_horario BETWEEN '2025-10-07' 
   AND '2025-10-08' ;
