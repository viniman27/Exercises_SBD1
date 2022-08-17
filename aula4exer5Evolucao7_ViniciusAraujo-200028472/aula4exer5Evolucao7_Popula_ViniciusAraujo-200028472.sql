-- --------  << aula4exer5Evolucao7 >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 30/07/2022
-- Autor(es) ..............: Vinicius Assumpcao de Araujo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4exer5Evolucao7

-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 
-- -----------------------------------------------------------------

USE aula4exer5Evolucao7;

-- --------
-- POPULA 1
-- --------
INSERT INTO MEDICO VALUES (
	'Allana Quintão Melo',
	23,
	'DF'
    
);

INSERT INTO ESPECIALIDADE VALUES (
	'Pneumologista',
	14
);

INSERT INTO possui VALUES (
	14,
	23,
	'DF'
);

INSERT INTO PACIENTE VALUES (
	05,
    'Evelin Abasto Ávila',
    'F',
    '1998-03-17',
    'Avenida Comercial',
	13,
    'ST.B NORTE',
    'brasilia',
	null,
	'DF',
    71928620
);

INSERT INTO telefone VALUES (
	05,
	55061987564321
);

INSERT INTO CONSULTA VALUES (
	18,
	'2017-09-20',
	'15:10:00',
	'consultorio 4',
	23,
	'DF',
	05
);

INSERT INTO Prescricao(dataHora, crm, cpf, posologia) VALUES (
	89,
	18,
	'2017-09-20'
);

INSERT INTO MEDICAMENTO VALUES (
	07,
    'Aspirina',
    'ácido acetilsalicílico'
);

INSERT INTO contem VALUES (
	89,
    	07
);



-- --------
-- POPULA 2
-- --------
INSERT INTO MEDICO VALUES (
	'Maria Joana da Silva Oliveira',
	19,
	'DF'
    
);

INSERT INTO ESPECIALIDADE VALUES (
	'Cardiologista',
	13
);

INSERT INTO possui VALUES (
	13,
	19,
	'DF'
);

INSERT INTO PACIENTE VALUES (
	02,
    'Oscar Sobral Reis',
    'M',
    '2002-03-27',
    'Avenida Sibipiruna',
	13,
    'cnb',
    'brasilia',
	null,
	'DF',
    71928720
);

INSERT INTO telefone VALUES (
	02,
	55061987654321
);

INSERT INTO CONSULTA VALUES (
	12,
	'2017-08-19',
	'15:10:19',
	'consultorio 3',
	19,
	'DF',
	02
);

INSERT INTO Prescricao(dataHora, crm, cpf, posologia) VALUES (
	85,
	12,
	'2017-08-19'
);

INSERT INTO MEDICAMENTO VALUES (
	06,
    'Dipirona',
    'dipirona monoidratada'
);

INSERT INTO contem VALUES (
	85,
    	06
);