USE
    TrabBD7_Ex3;

-- A) Considere que o Cliente possa ter profissao informada ou nao, sendo assim liste o
-- nome  de todos os clientes cadastrados com o nome de sua profissao,  caso tenham
SELECT NomeCliente, nomeProfissao
FROM Cliente
         LEFT OUTER JOIN Profissao P on Cliente.Profissao_idProfissao = P.idProfissao;

-- B) Considere que o Cliente possa ter profissao informada ou nao, sendo assim liste o
-- nome dos clientes  cadastrados com o nome de sua profissao, apensas para
-- os clientes com profissao informada

SELECT nomeCliente, nomeProfissao
FROM Cliente
         JOIN Profissao P on Cliente.Profissao_idProfissao = P.idProfissao;

-- C) Liste o nome dos produtos que tenham  registros tanto em ItemVenda quanto
-- em ItemCompra em Marco de 2021
-- SELECT nomePro FROM Produto JOIN ();
SELECT DISTINCT nomePro
FROM Produto,
     (SELECT Produto_codPro
      FROM ItemVenda
               JOIN
           (SELECT * FROM NotaVenda WHERE dataVenda BETWEEN '2021-02-28' AND '2021-04-01') AS NV
           ON NV.nroVenda = ItemVenda.NotaVenda_nroVenda) AS t2
WHERE Produto.codPro = t2.Produto_codPro INTERSECT
    SELECT DISTINCT nomePro
    FROM Produto,
         (SELECT Produto_codPro
          FROM ItemCompra
                   JOIN
               (SELECT *
                FROM NotaCompra
                WHERE dataCompra BETWEEN '2021-02-28' AND '2021-04-01') AS NC
               ON NC.nroCompra = ItemCompra.NotaCompra_nroCompra) AS t2
    WHERE Produto.codPro = t2.Produto_codPro;