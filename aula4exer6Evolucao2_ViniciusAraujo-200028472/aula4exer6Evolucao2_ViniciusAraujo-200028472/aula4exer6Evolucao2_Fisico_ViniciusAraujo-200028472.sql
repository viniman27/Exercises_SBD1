-- -----------     << aula4exer6Evolucao2 >>     -------------------
-- 
--                    SCRIPT DE CRIACAO (DDL)
-- 
-- Data Criacao ...........: 01/08/2022
-- Autor(es) ..............: Vinícius Assumpção de Araújo
-- Banco de Dados .........: MySQL
-- Banco de Dados(nome) ...: aula4exer6Evolucao2
-- 
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas
-- 
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula4exer6Evolucao2;

USE aula4exer6Evolucao2;

CREATE TABLE IF NOT EXISTS PROPRIETARIO (
    cpf DECIMAL(11) ZEROFILL NOT NULL,
    nome VARCHAR(30) NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,
    dataNascimento DATE NOT NULL,
	bairro VARCHAR(30) NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    estado VARCHAR(30) NOT NULL,
CONSTRAINT PROPRIETARIO_PK PRIMARY KEY (cpf)
)ENGINE = InnoDb;

CREATE TABLE IF NOT EXISTS telefone (
    cpf DECIMAL(11) ZEROFILL NOT NULL,
    telefone DECIMAL(14) ZEROFILL NOT NULL,
CONSTRAINT telefone_PK PRIMARY KEY (cpf, telefone),
CONSTRAINT telefone_PROPRIETARIO_FK FOREIGN KEY (cpf)
    REFERENCES PROPRIETARIO (cpf)
)ENGINE = InnoDb;

CREATE TABLE IF NOT EXISTS MODELO (
    idModelo INT(2) NOT NULL,
    nome VARCHAR(30) NOT NULL,
CONSTRAINT MODELO_PK PRIMARY KEY (idModelo)
)ENGINE = InnoDb;

CREATE TABLE IF NOT EXISTS CATEGORIA (
    idCategoria INT(2) NOT NULL,
    nome VARCHAR(30) NOT NULL,
CONSTRAINT CATEGORIA_PK PRIMARY KEY (idCategoria)
)ENGINE = InnoDb;

CREATE TABLE IF NOT EXISTS VEICULO (
	idVeiculo INT(2) NOT NULL,
    placa VARCHAR(7) NOT NULL,
    Chassi VARCHAR(30) NOT NULL UNIQUE,
    anoFabricacao DATE NOT NULL,
    corPredominante VARCHAR(30) NOT NULL,
    idModelo INT(6) NOT NULL,
    idCategoria INT(2) NOT NULL,
    cpf DECIMAL(11) ZEROFILL NOT NULL,
    
CONSTRAINT VEICULO_PK PRIMARY KEY (idVeiculo ),
CONSTRAINT VEICULO_PROPRIETARIO_FK FOREIGN KEY (cpf)
    REFERENCES PROPRIETARIO (cpf),
CONSTRAINT VEICULO_MODELO_FK FOREIGN KEY (idModelo)
    REFERENCES MODELO (idModelo),
CONSTRAINT VEICULO_CATEGORIA_FK FOREIGN KEY (idCategoria)
    REFERENCES CATEGORIA (idCategoria)
)ENGINE = InnoDb;

CREATE TABLE IF NOT EXISTS LOCALIZACAO (
    idLocal INT(2) NOT NULL,
    velocidadePermitida DECIMAL(3) NOT NULL,
    latitude DECIMAL(8,6) NOT NULL,
    longitude DECIMAL(9,6) NOT NULL,
CONSTRAINT LOCALIZACAO_PK PRIMARY KEY (idLocal)
)ENGINE = InnoDb;

CREATE TABLE IF NOT EXISTS AGENTE (
    matricula DECIMAL NOT NULL,
    nome VARCHAR(30) NOT NULL,
    dataContratacao DATE NOT NULL,
    tempoServico DECIMAL NOT NULL,
CONSTRAINT AGENTE_PK PRIMARY KEY (matricula)
)ENGINE = InnoDb;

CREATE TABLE IF NOT EXISTS TIPO_INFRACAO (
    idTipoInfracao INT NOT NULL,
    descricao VARCHAR(30) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
CONSTRAINT TIPO_INFRACAO_PK PRIMARY KEY (idTipoInfracao)
)ENGINE = InnoDb;

CREATE TABLE IF NOT EXISTS INFRACAO(
    idInfracao INT(2) NOT NULL,
    placa VARCHAR(7) NOT NULL,
    dataInfracao DATE NOT NULL,
    horaInfracao TIME NOT NULL,
    velocidadeinfracao INT(3),
    idVeiculo INT(2) NOT NULL,
    idTipoInfracao INT(2) NOT NULL,
    
CONSTRAINT INFRACAO_PK PRIMARY KEY (idInfracao),

CONSTRAINT INFRACAO_VEICULO_FK FOREIGN KEY (placa)
    REFERENCES VEICULO (placa),
    
CONSTRAINT INFRACAO_TIPO_INFRACAO_FK FOREIGN KEY (idTipoInfracao)
    REFERENCES TIPO_INFRACAO (idTipoInfracao)
    
)ENGINE = InnoDb;

CREATE TABLE IF NOT EXISTS registra(

	idInfracao INT(2) NOT NULL,
	matricula DECIMAL NOT NULL,

CONSTRAINT registra_AGENTE_FK FOREIGN KEY (matricula)
    REFERENCES AGENTE (matricula),
CONSTRAINT registra_TIPO_INFRACAO_FK FOREIGN KEY (idInfracao)
    REFERENCES TIPO_INFRACAO (idInfracao)
    
)ENGINE = InnoDb;

CREATE TABLE IF NOT EXISTS acontece(

	idLocal INT(2) NOT NULL,
	idInfracao INT(2) NOT NULL,
    
CONSTRAINT acontece_LOCALIZACAO_FK FOREIGN KEY (idLocal)
    REFERENCES LOCALIZACAO (idLocal),
    
CONSTRAINT acontece_TIPO_INFRACAO_FK FOREIGN KEY (idInfracao)
    REFERENCES TIPO_INFRACAO (idInfracao)

    
)ENGINE = InnoDb;
