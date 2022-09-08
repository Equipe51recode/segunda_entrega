CREATE DATABASE dorea;

USE dorea;

CREATE TABLE Doadores (
    Id_doadores INT PRIMARY KEY auto_increment,
    Nome varchar(70) not null,
    Sobrenome varchar(70) not null,
    Cpf varchar(70) not null,
    Email varchar(70) not null,
    Telefone varchar(70) not null,
    Senha varchar(70) not null
);

CREATE TABLE Projetos (
    Id_projeto int PRIMARY KEY auto_increment,
    Nome varchar(70) not null,
    Objetivo Decimal(15,2) not null,
    Arrecadado Decimal(15,2) not null,
    fk_Organizador_Id_organizador int not null
);

CREATE TABLE Organizador (
    Id_organizador int PRIMARY KEY auto_increment,
    Nome varchar(70) not null,
    Cnpj varchar(70) not null,
    Email varchar(70) not null,
    Telefone varchar(70) not null,
    Senha varchar(70) not null
);

CREATE TABLE Doacao (
    Id_doacao int PRIMARY KEY auto_increment,
    valor decimal(10,2) not null,
    fk_Doadores_Id_doadores INT not null,
    fk_Projetos_Id_projeto int not null
);
 
ALTER TABLE Projetos ADD CONSTRAINT FK_Projetos_2
    FOREIGN KEY (fk_Organizador_Id_organizador)
    REFERENCES Organizador (Id_organizador)
    ON DELETE cascade;
 
ALTER TABLE Doacao ADD CONSTRAINT FK_Doacao_2
    FOREIGN KEY (fk_Doadores_Id_doadores)
    REFERENCES Doadores (Id_doadores)
    ON DELETE cascade;
 
ALTER TABLE Doacao ADD CONSTRAINT FK_Doacao_3
    FOREIGN KEY (fk_Projetos_Id_projeto)
    REFERENCES Projetos (Id_projeto)
    ON DELETE cascade;