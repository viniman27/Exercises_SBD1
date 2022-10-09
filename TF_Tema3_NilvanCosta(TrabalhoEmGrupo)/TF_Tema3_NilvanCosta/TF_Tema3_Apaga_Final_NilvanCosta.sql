-- ------------------------   << Trabalho Final (TF) - Tema 3 - Ludoteca  >>   ------------------------
--
--                    					SCRIPT DE APAGAR (DDL)  
--
-- Data Criacao ...........: 31/08/2022
-- Autor(es) ..............: Maria Eduarda Barbosa Santos, Victor de Souza Cabral, Wengel Rodrigues Farias, Wesley Pedrosa dos Santos, Mateus de Almeida Dias, Vinicius Assumpção de Araújo, Victor Hugo Oliveira Leão, Renan Rodrigues Lacerda, Thiago França Vale Oliveira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_Tema3
--
-- Ultimas Alteracoes
--   11/09/2022 => Alteracao no nome da Base de Dados.
--   11/09/2022 => Adicao do DROP das tabelas FORNECEDOR e fornece.
--   11/09/2022 => Alteracao na ordem em que ocorre o DROP das tabelas.
--   18/09/2022 => Adicao do DROP da tabela CONTRATANTE.
--   18/09/2022 => Alteracao na ordem em que ocorre o DROP das tabelas.
--   19/09/2022 => Adicao dos DROPS de USERs e ROLEs.
--   26/09/2022 => Alteracao no nome da base de dados.
--   26/09/2022 => Adição de drop de mais usuários.
--
-- PROJETO => 01 Base de Dados
--         => 31 Tabelas
--         => 09 Usuarios
--         => 03 Perfis
--
-- ----------------------------------------------------------------------------------------------------

-- BASE DE DADOS
USE TF_Tema3;

-- TABELAS

DROP TABLE fornece;
DROP TABLE realiza;
DROP TABLE utiliza;
DROP TABLE possui;
DROP TABLE consta;
DROP TABLE auxilia;
DROP TABLE serve;
DROP TABLE FORNECEDOR;
DROP TABLE INSUMO;
DROP TABLE LANCHE;
DROP TABLE DEFEITO;
DROP TABLE ACESSORIO;
DROP TABLE QUADRINHO;
DROP TABLE JOGO;
DROP TABLE CATEGORIA;
DROP TABLE PRODUTO;
DROP TABLE CLUBE;
DROP TABLE ASSINATURA;
DROP TABLE AVULSA;
DROP TABLE ALUGUEL;
DROP TABLE TESTEMUNHA;
DROP TABLE CONTRATO;
DROP TABLE PONTUACAO;
DROP TABLE CARTAO;
DROP TABLE GARCOM;
DROP TABLE MONITOR;
DROP TABLE FUNCIONARIO;
DROP TABLE MESA;
DROP TABLE CLIENTE;
DROP TABLE CONTRATANTE;
DROP TABLE PESSOA;

-- PERFIS

DROP ROLE 'GARCOM';
DROP ROLE 'MONITOR';
DROP ROLE 'ADMINISTRADOR';

-- USUARIOS

DROP USER 'joao';
DROP USER 'carla';
DROP USER 'carlos';
DROP USER 'luana';
DROP USER 'flavia';
DROP USER 'rozana';
DROP USER 'charlon';
DROP USER 'vandor';
DROP USER 'bianca';
