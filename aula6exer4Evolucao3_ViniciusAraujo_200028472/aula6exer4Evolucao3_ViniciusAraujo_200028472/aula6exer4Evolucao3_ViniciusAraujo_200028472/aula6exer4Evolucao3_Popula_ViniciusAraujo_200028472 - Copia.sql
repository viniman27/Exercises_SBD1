-- --------  aula6exer4Evolucao3  - POPULA  ----------
--
--                    SCRIPT DE POPULAÇÃO (DML)
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

INSERT INTO PESSOA VALUES
(1, 'Joao Pedro', 'M', '2004-06-29'),
(2, 'Alexios Santos', 'F', '1974-09-30'),
(3, 'Laura Pietro', 'F', '1989-11-11'),
(4, 'Kainé Cruz', 'F', '1983-07-21');

INSERT INTO DEPARTAMENTO VALUES
(1, 'Contabilidade'),
(2, 'Tecnologia'),
(3, 'Transporte'),
(4, 'Marketing');

INSERT INTO EMPREGADO VALUES
(123654, 'QE 17 Conjunto A', 16, 'Guara', 2, 2),
(985624, '	CNB', 300, 'Taguatinga', 3, 3),
(123456, 'Copaiba', 1707, 'Aguas Claras', 1, 1),
(852741,'Drummond Silva', 1, 'Jardins', 4, 4);

INSERT INTO DEPENDENTE VALUES
('Mãe', 6, 123456),
('Filho', 5, 123654),
('Tia', 7, 321456),
('Avó', 8, 321654);

INSERT INTO supervisiona VALUES
(123654, 123456),
(741852, 321456),
(321456, 963852),
(654321, 321654);

INSERT INTO GERENCIA VALUES
(123456, 1),
(123654, 2),
(321456, 3),
(321654, 4);

INSERT INTO LOCALIZACAO VALUES
(2, 'Predio Wakanda 405'),
(1, 'Predio Office 103'),
(3, 'Galpao Misthios'),
(4, 'Predio Vale Silicio');

INSERT INTO possui VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

INSERT INTO PROJETO VALUES
(1, ' Automatron', 1, 1),
(2, 'Comprei Demais', 2, 2),
(3, 'MatAvançada', 3, 3),
(4, 'GreatApp', 4, 4);

INSERT INTO trabalha VALUES
(123456, 1),
(123654, 2),
(321456, 3),
(321654, 4);