CREATE DATABASE Loja;

USE Loja;

CREATE TABLE Estado (
	ID INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    UF CHAR(2),
    PRIMARY KEY (ID)
);

CREATE TABLE Municipio (
	ID INT NOT NULL AUTO_INCREMENT,
    Estado_ID INT NOT NULL,
    Nome VARCHAR(80),
    CodIBGE INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (Estado_ID) REFERENCES Estado(ID) 
);

CREATE TABLE Cliente (
	ID INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(80) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Celular CHAR(11),
    EndLogradouro VARCHAR(100) NOT NULL,
    EndNumero VARCHAR(10) NOT NULL,
    EndMunicipio INT NOT NULL,
    EndCEP CHAR(8),
    Municipio_ID INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (Municipio_ID) REFERENCES Municipio(ID)
);

CREATE TABLE ContaReceber (
	ID INT NOT NULL AUTO_INCREMENT,
    Cliente_ID INT NOT NULL,
    FaturaVendaID INT,
    DataConta DATE NOT NULL,
    DataVencimento DATE NOT NULL,
    Valor DECIMAL(18, 2) NOT NULL,
    Situacao ENUM('1','2','3') COMMENT '1- Conta registrada, 2- Conta  cancelada, 3- Conta paga' NOT NULL, 
	PRIMARY KEY (ID),
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID)
);
