-- --------  << aula9extra1 - POPULA >>  ----------
--
--                    SCRIPT DE POPULA(DDL)
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

USE aula9extra1;

INSERT INTO ESTADO VALUES
('DF', 'Distrito Federal'),
('SP', 'São Paulo'),
('GO', 'Goiás'),
('RJ', 'Rio de Janeiro');

INSERT INTO CIDADE(nome, sigla, habitantes) VALUES
('Gama', 'DF', 134000),
('Guará', 'DF', 125700),
('Guarulhos', 'SP', 1379182),
('Campinas', 'SP', 1223237),
('Goiânia', 'GO', 1555626),
('Niterói', 'RJ', 515317),
('Duque de Caxias', 'RJ', 924624);