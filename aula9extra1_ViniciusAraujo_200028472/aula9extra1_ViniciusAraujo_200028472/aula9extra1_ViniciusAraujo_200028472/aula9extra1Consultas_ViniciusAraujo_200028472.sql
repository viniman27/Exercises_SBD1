-- --------  << aula9extra1 - CONSULTA >>  ----------
--
--                    SCRIPT DE CONSULTA(DML)
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

-- Consulta A(Projeção de sigla e nome do estado de sigla SP e DF)
SELECT sigla, nome FROM ESTADO
WHERE sigla = 'SP' OR sigla = 'DF';

-- Consulta B(o nome e a sigla das cidades que são dos estados RJ, DF e GO) 
SELECT nome, sigla FROM CIDADE
WHERE sigla = 'RJ' OR sigla = 'DF' OR sigla = 'GO';

-- Consulta C(todas as cidades do primeiro estado que você cadastrou mostrando somente o nome da cidade, o nome do estado e sua sigla) 
SELECT CIDADE.nome, ESTADO.nome, ESTADO.sigla FROM CIDADE, ESTADO
WHERE CIDADE.sigla = 'DF' AND ESTADO.sigla = 'DF';

-- Consulta D (o nome e a sigla do estado que você cadastrou por último e todas as cidades cadastradas nele, mostrando o seu nome e a quantidade de habitantes em ordem crescente de nome de estado e nome de cidade)
SELECT CIDADE.nome, habitantes FROM ESTADO, CIDADE
WHERE ESTADO.sigla = 'RJ' AND CIDADE.sigla = 'RJ'
ORDER BY ESTADO.nome, CIDADE.nome ASC;