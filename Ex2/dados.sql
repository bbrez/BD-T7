-- Cliente
START TRANSACTION;

USE TrabBD7_Ex2;
INSERT INTO Cliente (codCliente, nomeCliente) VALUES (1, 'Leonardo');
INSERT INTO Cliente (codCliente, nomeCliente) VALUES (2, 'Bruno');
INSERT INTO Cliente (codCliente, nomeCliente) VALUES (3, 'João');
INSERT INTO Cliente (codCliente, nomeCliente) VALUES (4, 'Carlos');
INSERT INTO Cliente (codCliente, nomeCliente) VALUES (5, 'Roberto');

COMMIT;

-- Produto
START TRANSACTION;

USE TrabBD7_Ex2;
INSERT INTO Produto (codPro, nomePro, precoVenda, precoCusto) VALUES (1, 'Arroz', 7.99, 5.99);
INSERT INTO Produto (codPro, nomePro, precoVenda, precoCusto) VALUES (2, 'Feijão', 6.89, 4.99);
INSERT INTO Produto (codPro, nomePro, precoVenda, precoCusto) VALUES (3, 'Picanha', 124.99, 99.99);
INSERT INTO Produto (codPro, nomePro, precoVenda, precoCusto) VALUES (4, 'Vinho Caro', 21.59, 16.59);
INSERT INTO Produto (codPro, nomePro, precoVenda, precoCusto) VALUES (5, 'Vinho Barato', 109.99, 98.79);
INSERT INTO Produto (codPro, nomePro, precoVenda, precoCusto) VALUES (6, 'Macarrão', 3.99, 1.99);
INSERT INTO Produto (codPro, nomePro, precoVenda, precoCusto) VALUES (7, 'Sal', 4.99, 2.99);
INSERT INTO Produto (codPro, nomePro, precoVenda, precoCusto) VALUES (8, 'Alho', 6.99, 3.99);
INSERT INTO Produto (codPro, nomePro, precoVenda, precoCusto) VALUES (9, 'Azeite de Oliva', 25.99, 20.99);
INSERT INTO Produto (codPro, nomePro, precoVenda, precoCusto) VALUES (10, 'Samsung Galaxy 21 Ultra', 6520.1, 5500);

COMMIT;

-- ItemCompra
START TRANSACTION;

USE TrabBD7_Ex2;
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (2000, 9980, 2);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (5000, 14950, 7);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (2000, 11980, 1);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (100, 550000, 10);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (200, 19998, 3);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (3000, 5970, 6);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (500, 49395, 5);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (1000, 3990, 8);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (600, 12594, 9);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (1000, 16590, 4);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (1000, 5990, 1);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (1000, 4990, 2);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (1000, 1990, 6);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (1000, 2990, 7);
INSERT INTO `ItemCompra` (`qtdeCompra`, `valorCompra`, `Produto_codPro`, `NotaCompra_nroCompra`) VALUES (1000, 3990, 8);
COMMIT;

-- ItemVenda
START TRANSACTION;

USE TrabBD7_Ex2;
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (5, 39.95, 1, 1);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (2, 13.78, 2, 2);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (1, 124.99, 3, 3);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (8, 172.72, 4, 4);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (2, 219.98, 5, 5);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (5, 19.95, 6, 6);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (10, 49.90, 7, 7);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (2, 13.98, 8, 8);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (1, 25.99, 9, 9);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (1, 5500, 10, 10);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (7, 55.93, 1, 1);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (3, 20.67, 2, 2);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (1, 124.99, 3, 3);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (20, 431.8, 4, 4);
INSERT INTO `ItemVenda` (`quantidadeVenda`, `valorVenda`, `Produto_codPro`, `NotaVenda_nroVenda`) VALUES (1, 109.99, 5, 5);


COMMIT;

-- NotaVenda
START TRANSACTION;

USE TrabBD7_Ex2;
INSERT INTO `NotaVenda` (`nroVenda`, `dataVenda`, `Cliente_codCliente`) VALUES (1, '2021-10-20', 1);
INSERT INTO `NotaVenda` (`nroVenda`, `dataVenda`, `Cliente_codCliente`) VALUES (2, '2021-07-17', 2);
INSERT INTO `NotaVenda` (`nroVenda`, `dataVenda`, `Cliente_codCliente`) VALUES (3, '2021-04-01', 3);
INSERT INTO `NotaVenda` (`nroVenda`, `dataVenda`, `Cliente_codCliente`) VALUES (4, '2020-02-20', 4);
INSERT INTO `NotaVenda` (`nroVenda`, `dataVenda`, `Cliente_codCliente`) VALUES (5, '2020-06-10', 5);
INSERT INTO `NotaVenda` (`nroVenda`, `dataVenda`, `Cliente_codCliente`) VALUES (6, '2021-03-24', 1);
INSERT INTO `NotaVenda` (`nroVenda`, `dataVenda`, `Cliente_codCliente`) VALUES (7, '2020-11-25', 2);
INSERT INTO `NotaVenda` (`nroVenda`, `dataVenda`, `Cliente_codCliente`) VALUES (8, '2021-12-03', 3);
INSERT INTO `NotaVenda` (`nroVenda`, `dataVenda`, `Cliente_codCliente`) VALUES (9, '2021-02-13', 2);
INSERT INTO `NotaVenda` (`nroVenda`, `dataVenda`, `Cliente_codCliente`) VALUES (10, '2021-02-13', 3);


COMMIT;