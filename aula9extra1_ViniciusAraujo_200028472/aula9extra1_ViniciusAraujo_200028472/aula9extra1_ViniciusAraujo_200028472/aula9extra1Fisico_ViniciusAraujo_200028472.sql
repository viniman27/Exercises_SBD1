-- --------  << aula9extra1 - FISICO >>  ----------
--
--                    SCRIPT DE CRIACAO (DML)
--
-- Data Criacao ...........: 22/08/2022
-- Autor(es) ..............: Vinicius Assumpcao de Araujo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula9extra1
--
-- PROJETO => 01 Base de Dados
--         => 02 Tabelas
--
-- ---------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula9extra1;

USE aula9extra1;

CREATE TABLE ESTADO(
	sigla VARCHAR(2) NOT NULL,
    nome  VARCHAR(20) NOT NULL,
    
    CONSTRAINT ESTADO_PK PRIMARY KEY (sigla)
) ENGINE = InnoDB;

CREATE TABLE CIDADE(
	codigo     DECIMAL(5)  NOT NULL AUTO_INCREMENT,
    nome       VARCHAR(50) NOT NULL,
    sigla      VARCHAR(2)  NOT NULL,
    habitantes BIGINT      NOT NULL, -- decimal(38) ou algo proximo provavelmente tambem funcionaria, mas pode chegar a usar o dobro de memoria
    
    CONSTRAINT CIDADE_PK PRIMARY KEY (codigo),
    CONSTRAINT CIDADE_ESTADO_FK FOREIGN KEY (sigla)
    REFERENCES ESTADO (sigla),
    CONSTRAINT CIDADE_UK UNIQUE (nome, sigla)
) ENGINE = InnoDB AUTO_INCREMENT = 1;