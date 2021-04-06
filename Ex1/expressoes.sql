USE TrabBD7_Ex1;

-- A) Liste o nome de todos os produtos cadastrados
SELECT nomePro from Produto;

-- B) Liste o nome e código de todos os produtos cujo precoVenda seja maior que 100
SELECT codPro, nomePro FROM Produto
WHERE precoVenda > 100.0;

-- C) Liste o codigo de todos os produtos que tenham registo de compra e venda

SELECT Produto_codPro FROM ItemCompra INTERSECT SELECT Produto_codPro FROM ItemVenda;

-- D) Liste o codigo de todos os produtos que não tem registo de venda ainda

(SELECT codPro FROM Produto) EXCEPT ALL (SELECT Produto_codPro FROM ItemVenda);

-- E) Liste o codigo de todos os produtos que não tem nenhum registo de compra e venda

SELECT codPro FROM Produto EXCEPT ALL (SELECT Produto_codPro FROM ItemCompra INTERSECT SELECT Produto_codPro FROM ItemVenda);

-- F) Liste o nome de todos os clientes cadastrados

SELECT nomeCliente FROM Cliente;

-- Produto Cartesiano
SELECT * FROM NotaVenda, Cliente;


SELECT DISTINCT Produto_codPro FROM ItemCompra INNER JOIN ItemVenda USING (Produto_codPro);