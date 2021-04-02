CREATE SCHEMA IF NOT EXISTS TrabBD7;
USE TrabBD7;

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

DROP TABLE IF EXISTS ItemCompra;
CREATE TABLE IF NOT EXISTS ItemCompra (
    `nroCompra` INT NOT NULL AUTO_INCREMENT,
    `codPro` INT NOT NULL,
    `qtdeCompra` INT NOT NULL,
    `valorCompra` FLOAT NOT NULL ,
    PRIMARY KEY (`nroCompra`),
    FOREIGN KEY (`codPro`) REFERENCES `Produto`(`codPro`)
);

DROP TABLE IF EXISTS ItemVenda;
CREATE TABLE IF NOT EXISTS ItemVenda (
    `nroVenda` INT NOT NULL AUTO_INCREMENT,
    `codPro` INT NOT NULL,
    `qtdeVenda` INT NOT NULL,
    `valorVenda` FLOAT NOT NULL,
    PRIMARY KEY (`nroVenda`),
    FOREIGN KEY (`codPro`) REFERENCES `Produto`(`codPro`)
);

DROP TABLE IF EXISTS NotaVenda;
CREATE TABLE IF NOT EXISTS NotaVenda (
    `nroVenda` INT NOT NULL,
    `codCliente` INT NOT NULL,
    `dataVenda` DATE,
    FOREIGN KEY (`nroVenda`) REFERENCES `ItemVenda`(`nroVenda`),
    FOREIGN KEY (`codCliente`) REFERENCES `Cliente`(`codCliente`)
)