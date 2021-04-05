USE TrabBD7_Ex1;

-- A) Liste o nome de todos os produtos cadastrados
SELECT nomePro from Produto;

-- B) Liste o nome e código de todos os produtos cujo precoVenda seja maior que 100
SELECT codPro, nomePro FROM Produto
WHERE precoVenda > 100.0;

-- C) Liste o codigo de todos os produtos que tenham registo de compra e venda

SELECT itemcompra.codPro FROM itemcompra
INNER JOIN itemvenda i on itemcompra.codPro = i.codPro
WHERE i.codPro = itemcompra.codPro;

-- D) Liste o codigo de todos os produtos que não tem registo de venda ainda

SELECT Produto.codPro FROM Produto
LEFT OUTER JOIN itemvenda i on produto.codPro = i.codPro;

-- E) Liste o codigo de todos os produtos que não tem nenhum registo de compra e venda

SELECT codPro FROM Produto;

-- F) Liste o nome de todos os clientes cadastrados

SELECT nomeCliente FROM Cliente;

-- Produto Cartesiano
SELECT * FROM notaVenda, Cliente;