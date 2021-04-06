USE TrabBD7_Ex2;

-- A) Liste o nome de todos os produtos que tem venda
SELECT DISTINCT nomePro
FROM (Produto, ItemVenda)
WHERE Produto.codPro = ItemVenda.Produto_codPro;

-- B) Liste o nome dos clientes que tem NotaVenda, cuja a venda foi realizada em 2021
SELECT DISTINCT nomeCliente
FROM (Cliente, NotaVenda)
WHERE Cliente.codCliente = NotaVenda.Cliente_codCliente
  AND dataVenda > '2020-12-31'
  AND dataVenda < '2022-01-01';

-- C) Liste o nome de todos os produtos  que nao tem venda registrada
SELECT nomePro
FROM Produto as t1,
     (SELECT codPro FROM Produto EXCEPT SELECT Produto_codPro FROM ItemVenda) as t2
WHERE t1.codPro = t2.codPro;

-- D) Liste o nome de todos os produtos que tem compra mas  nao tem venda registrada
SELECT nomePro
FROM Produto as t1,
     (SELECT Produto_codPro FROM ItemCompra EXCEPT SELECT Produto_codPro FROM ItemVenda) AS t2
WHERE t1.codPro = t2.Produto_codPro;

-- E) Liste todos os clientes que ainda nao tem venda registrada em 2021
SELECT nomeCliente
FROM Cliente EXCEPT
SELECT DISTINCT nomeCliente
FROM (Cliente, NotaVenda)
WHERE Cliente.codCliente = NotaVenda.Cliente_codCliente
  AND dataVenda > '2020-12-31'
  AND dataVenda < '2022-01-01';

-- F) Liste o produto que tem o maior preco de venda cadastrado
SELECT nomePro
FROM Produto EXCEPT
SELECT distinct pa1.nomePro
FROM (Produto AS pa1, Produto AS pa2)
where pa1.precoVenda < pa2.precoVenda;