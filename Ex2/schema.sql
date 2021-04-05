DROP SCHEMA IF EXISTS TrabBD7_Ex2;
CREATE SCHEMA IF NOT EXISTS TrabBD7_Ex2;
USE TrabBD7_Ex2;

DROP TABLE IF EXISTS Cliente;
CREATE TABLE IF NOT EXISTS Cliente (
    `codCliente` INT NOT NULL AUTO_INCREMENT,
    `nomeCliente` VARCHAR(45),
    PRIMARY KEY (`codCliente`)
);

DROP TABLE IF EXISTS Produto;
CREATE TABLE IF NOT EXISTS Produto (
    `codPro` INT NOT NULL AUTO_INCREMENT,
    `nomePro` VARCHAR(45),
    `precoVenda` FLOAT,
    `precoCusto` FLOAT,
    PRIMARY KEY (`codPro`)
);

DROP TABLE IF EXISTS NotaCompra;
CREATE TABLE IF NOT EXISTS NotaCompra (
    `nroCompra` INT NOT NULL AUTO_INCREMENT,
    `dataCompra` DATE NOT NULL,
    `totalNota` FLOAT NOT NULL,
    PRIMARY KEY (`nroCompra`)
);

DROP TABLE IF EXISTS ItemCompra;
CREATE TABLE IF NOT EXISTS ItemCompra (
    `qtdeCompra` INT NOT NULL,
    `valorCompra` FLOAT NOT NULL,
    `Produto_codPro` INT NOT NULL,
    `NotaCompra_nroCompra` INT NOT NULL,
    FOREIGN KEY (`Produto_codPro`) REFERENCES `Produto`(`codPro`),
    FOREIGN KEY (`NotaCompra_nroCompra`) REFERENCES `NotaCompra`(`nroCompra`)
);

DROP TABLE IF EXISTS NotaVenda;
CREATE TABLE IF NOT EXISTS NotaVenda (
    `nroVenda` INT NOT NULL AUTO_INCREMENT,
    `dataVenda` DATE NOT NULL,
    `totalVenda` FLOAT,
    `Cliente_codCliente` INT NOT NULL,
    PRIMARY KEY (`nroVenda`),
    FOREIGN KEY (`Cliente_codCliente`) REFERENCES `Cliente`(`codCliente`)
);

DROP TABLE IF EXISTS ItemVenda;
CREATE TABLE IF NOT EXISTS ItemVenda (
    `quantidadeVenda` INT NOT NULL,
    `valorVenda` FLOAT NOT NULL,
    `Produto_codPro` INT NOT NULL,
    `NotaVenda_nroVenda` INT NOT NULL,
    FOREIGN KEY (`Produto_codPro`) REFERENCES `Produto`(`codPro`),
    FOREIGN KEY (`NotaVenda_nroVenda`) REFERENCES `NotaVenda`(`nroVenda`)
);