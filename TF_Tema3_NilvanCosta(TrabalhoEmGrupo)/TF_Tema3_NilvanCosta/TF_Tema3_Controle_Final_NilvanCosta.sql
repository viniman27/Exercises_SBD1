-- ------------------------   << Trabalho Final (TF) - Tema 3 - Ludoteca  >>   ------------------------
--
--                                         	SCRIPT DE CONTROLE
--
-- Data Criacao ...........: 11/09/2022
-- Autor(es) ..............: Maria Eduarda Barbosa Santos, Victor de Souza Cabral, Wengel Rodrigues Farias, Wesley Pedrosa dos Santos, Mateus de Almeida Dias, Vinicius Assumpção de Araújo, Victor Hugo Oliveira Leão, Renan Rodrigues Lacerda, Nicolas Chagas Souza, Thiago França Vale Oliveira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_Tema3
--
-- Ultimas Alteracoes
--   26/09/2022 => Alteracao no nome da base de dados.
--   26/09/2022 => Adição de 6 novos usuários
--   26/09/2022 => Designação de tabelas para os perfis
--
-- PROJETO => 01 Base de Dados
--         => 31 Tabelas
--         => 09 Usuarios
--         => 03 Perfis
--
-- ----------------------------------------------------------------------------------------------------

-- BASE DE DADOS 
USE TF_Tema3;

-- Usuarios

CREATE USER 'carlos'
	IDENTIFIED BY 'carlos321';

CREATE USER 'carla'
	IDENTIFIED BY 'alarac303';
    
CREATE USER 'joao'
	IDENTIFIED BY 'joao4402j';
    
CREATE USER 'bianca'
	IDENTIFIED BY 'bianca123';
    
CREATE USER 'vandor'
	IDENTIFIED BY 'vandor456';
    
CREATE USER 'charlon'
	IDENTIFIED BY 'charlon321';

CREATE USER 'rozana'
	IDENTIFIED BY 'rozana123';
    
CREATE USER 'flavia'
	IDENTIFIED BY 'flavia321';
    
CREATE USER 'luana'
	IDENTIFIED BY 'luana963';
    
-- Perfis
CREATE ROLE 'ADMINISTRADOR';
CREATE ROLE 'MONITOR';
CREATE ROLE 'GARCOM';

-- Privilegios

-- ROLE ADMINISTRADOR

GRANT ALL
	ON TF_Tema3.*
    TO 'ADMINISTRADOR';


-- ROLE monitor

GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.CLIENTE
	TO 'MONITOR';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.MESA
	TO 'MONITOR';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.PONTUACAO
	TO 'MONITOR';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.PRODUTO
	TO 'MONITOR';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.CATEGORIA
	TO 'MONITOR';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.JOGO
	TO 'MONITOR';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.DEFEITO
	TO 'MONITOR';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.PONTUACAO
	TO 'MONITOR';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.auxilia
	TO 'MONITOR';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.possui
	TO 'MONITOR';
    
    GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.utiliza
	TO 'MONITOR';
    
-- ROLE garcom

GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.CLIENTE
	TO 'GARCOM';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.MESA
	TO 'GARCOM';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.LANCHE
	TO 'GARCOM';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.INSUMO
	TO 'GARCOM';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.serve
	TO 'GARCOM';
    
GRANT
	SELECT, INSERT, UPDATE
    ON TF_Tema3.consta
	TO 'GARCOM';
    
-- Trabalhando com Papeis para os usuarios
GRANT 'ADMINISTRADOR' TO 'carlos';
GRANT 'ADMINISTRADOR' TO 'carla';
GRANT 'ADMINISTRADOR' TO 'joao';
GRANT 'MONITOR' TO 'bianca';
GRANT 'MONITOR' TO 'vandor';
GRANT 'MONITOR' TO 'charlon';
GRANT 'GARCOM' TO 'rozana';
GRANT 'GARCOM' TO 'flavia';
GRANT 'GARCOM' TO 'luana';