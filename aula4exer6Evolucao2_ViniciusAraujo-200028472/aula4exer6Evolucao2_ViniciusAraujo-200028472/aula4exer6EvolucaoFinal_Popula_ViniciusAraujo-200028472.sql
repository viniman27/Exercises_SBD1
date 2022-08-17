-- -----------     << aula4exer6Evolucao2 >>     -------------------
-- 
--                    SCRIPT PARA POPULAR (DDL)
-- 
-- Data Criacao ...........: 01/08/2022
-- Autor(es) ..............: Vinícius Assumpção de Araújo
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer6Evolucao2
-- 
-- Data Ultima Alteracao ..: 01/08/2022
--   => Criação do script para popular o banco
--   => Adaptações no popula após mudança nos tipos de dados
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 
-- -----------------------------------------------------------------

USE aula4exer6Evolucao2;

-- -------------------
-- POPULA PROPRIETÁRIO
-- -------------------
INSERT INTO PROPRIETARIO VALUES (
	01234567890,
    'Welison Almeida Regis',
    'M',
    '1998-12-06',
    'Itamaracá',
    'Gama',
    'DF'
    
);

INSERT INTO PROPRIETARIO VALUES (
	12345678901,
    'Mina Rousseff Lulia',
    'F',
    '1990-12-06',
    'Ceilândia',
    'Setor Norte',
    'DF'
);

INSERT INTO PROPRIETARIO VALUES (
	23456789012,
    'Lieverton Oliveira Silva',
     'M',
    '2000-05-06',
    'Brazlândia',
    'Setor Sul',
    'DF'
);


-- ---------------
-- POPULA telefone
-- ---------------
INSERT INTO telefone VALUES (
	01234567890,
    '55061999937278'
);

INSERT INTO telefone VALUES (
	12345678901,
    55021985675654
);

INSERT INTO telefone VALUES (
	23456789012,
    55031983410312
);

-- -------------
-- POPULA MODELO
-- -------------
INSERT INTO MODELO VALUES (
	01,
    'GOL '
);

INSERT INTO MODELO VALUES (
	02,
    'Chevrolet D-20'
);

INSERT INTO MODELO VALUES (
	03,
    'Yamaha R100'
);



-- ----------------
-- POPULA CATEGORIA
-- ----------------
INSERT INTO CATEGORIA VALUES (
	01,
    'Carro'
);


INSERT INTO CATEGORIA VALUES (
	02,
    'Caminhonete'
);

INSERT INTO CATEGORIA VALUES (
	03,
    'Moto'
);



-- --------------
-- POPULA VEICULO
-- --------------
INSERT INTO VEICULO VALUES (
	'01',
	'JKD1234',
	'12345678912345678',
    2012,
    'Branco',
    1,
    1,
    01234567890
);

INSERT INTO VEICULO VALUES (
	'02',
	'JQJ3093',
	'23456789012345678',
    2000,
    'Preto',
    2,
    2,
    12345678901
);

INSERT INTO VEICULO VALUES (
	'03',
	'JJC1032',
	'34567890123456789',
    2009,
    'Cinza',
    3,
    3,
    23456789012
);



-- ------------------
-- POPULA LOCALIZACAO
-- ------------------
INSERT INTO LOCALIZACAO VALUES (
	'01',
	'70',
    30.192874,
    301.109231
);


INSERT INTO LOCALIZACAO VALUES (
	'02',
	'60',
    20.122479,
    102.139232
);

INSERT INTO LOCALIZACAO VALUES (
	'03',
	'80',
    54.125417,
    311.649218
);



-- -------------
-- POPULA AGENTE
-- -------------
INSERT INTO AGENTE VALUES (
	42,
	'João Carlos Machado',
    '2010-04-12',
    '3'
);

INSERT INTO AGENTE VALUES (
	43,
	'José Matheus Alvares',
    '2014-01-19',
    '6'
);

INSERT INTO AGENTE VALUES (
	44,
	'Maurício Esteves Solene',
    '2008-03-22',
    '8'
);



-- --------------------
-- POPULA TIPO_INFRACAO
-- --------------------
INSERT INTO TIPO_INFRACAO VALUES (
	168,
    'Transportar crinaças de forma irregular',
    293.47
);

INSERT INTO TIPO_INFRACAO VALUES (
	171,
    'Jogar água sobre os pedestres ou veículos',
    293.47
);

INSERT INTO TIPO_INFRACAO VALUES (
	180,
    'Ter seu veículo imobilizado na via por falta de combustível',
    130.16
);



-- ---------------
-- POPULA INFRACAO
-- ---------------
INSERT INTO INFRACAO (placa, dataHora, codInfracao, codLocal, velocidadeAferida, matricula)
VALUES (
	'01',
	'JKD1234',
    '2017-10-16',
    '14:09:38',
    168,
    90,
    42
);

INSERT INTO INFRACAO (placa, dataHora, codInfracao, codLocal, velocidadeAferida, matricula)
VALUES (
	'02',
	'JQJ3093',
    '2017-10-16',
    '14:09:38',
    200,
    94,
    43
);

INSERT INTO INFRACAO (placa, dataHora, codInfracao, codLocal, velocidadeAferida, matricula)
VALUES (
	'03',
	'JJC1032',
    '2017-10-16',
    '14:09:38',
    220,
    102,
    44
);
