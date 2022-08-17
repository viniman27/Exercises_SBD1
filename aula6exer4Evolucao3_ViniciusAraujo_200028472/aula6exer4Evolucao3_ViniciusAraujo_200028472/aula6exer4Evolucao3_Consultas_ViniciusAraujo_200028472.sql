-- --------  aula6exer4Evolucao3  - Consulta  ----------
--
--                    SCRIPT DE CONSULTA (DML)
--
-- Data Criacao ...........: 08/08/2022
-- Autor(es) ..............: Vinícius Assumpção de Araújo
-- Banco de Dados .........: MySQL
-- Base de Dados (nome) ...: aula6exer4Evolucao3 
--
-- PROJETO => 01 Base de Dados
--         => 10 Tabelas
--
-- ---------------------------------------------------------


USE aula6exer4Evolucao3 ;

SELECT * FROM EMPREGADO WHERE idDepartamento = 1;
SELECT * FROM EMPREGADO WHERE dataNascimento BETWEEN '1985-01-01' AND '2005-01-01';
SELECT * FROM DEPENDENTE WHERE nome LIKE "%-"
