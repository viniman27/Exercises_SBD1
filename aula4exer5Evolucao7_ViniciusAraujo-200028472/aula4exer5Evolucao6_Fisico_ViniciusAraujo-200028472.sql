-- --------  << aula4exer5Evolucao7 >>  ----------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 30/07/2022
-- Autor(es) ..............: Vinicius Assumpcao de Araujo
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula4exer5Evolucao7

CREATE DATABASE IF NOT EXISTS aula4exer5Evolucao7;

Create database aula4exer5Evolucao7;

use aula4exer5Evolucao7;

CREATE TABLE MEDICO(
nome varchar(30) NOT NULL,
numero int(6) NOT NULL,
estado varchar(2) NOT NULL,

constraint MEDICO_PK PRIMARY KEY (numero, estado)
);

Create table ESPECIALIDADE(
idEspecialidade int(2) NOT NULL,
nome varchar(30) NOT NULL,

constraint especialidade_PK primary key(idEspecialidade)
);

create table possui(
idEspecialidade int(2) NOT NULL,
numero int(6) NOT NULL,
estado int(2) NOT NULL,

constraint possui_ESPECIALIDADE_FK foreign key(idEspecialidade) references Especialidade (idEspecialidade),
constraint possui_MEDICO_FK foreign key(numero,estado) references MEDICO (numero,estado)
);

create table PACIENTE(
idPaciente int(2) NOT NULL,
nome varchar(30) NOT NULL,
sexo varchar(1) NOT NULL,
dataNascimento date NOT NULL,
rua		varchar(30)	NOT NULL,
numero  int(3),
bairro varchar(30) NOT NULL,
cidade varchar(30) NOT NULL,
complemento varchar(50),
estado varchar(2) NOT NULL,
cep int(8) NOT NULL,

constraint PACIENTE_PK primary key (idPaciente)
);

create table CONSULTA(
idConsulta int(2) NOT NULL,
data date NOT NULL,
hora time NOT NULL,
local varchar(30) NOT NULL,
numero int(6) NOT NULL,
estado varchar(2) NOT NULL,
idPaciente int(2) NOT NULL,

constraint CONSULTA_PK primary key(idConsulta),
constraint CONSULTA_MEDICO_FK foreign key(numero,estado) references MEDICO(numero,estado),
constraint CONSULTA_PACIENTE_FK foreign key(idPaciente) references PACIENTE(idPaciente)
);

create table TELEFONE(
idPaciente int(2) NOT NULL,
telefone int(12) NOT NULL,

constraint TELEFONE_PACIENTE_FK foreign key(idPaciente) references PACIENTE(idPaciente)
);

create table PRESCRICAO(
idPrescricao int(2) NOT NULL,
idConsulta int(2) NOT NULL,
dataEmissao date NOT NULL,

constraint PRESCRICAO_PK primary key(idPrescricao) 
);

create table MEDICAMENTO(
idMedicamento int(2) NOT NULL,
principioAtivo varchar(30) NOT NULL,

constraint MEDICAMENTO_PK primary key (idMedicamento)
);

create table contem(
idPrescricao int(2) NOT NULL,
idMedicamento int(2) NOT NULL,

constraint contem_PRESCRICAO_FK foreign key (idPrescricao) references PRESCRICAO(idPrescricao),
constraint contem_MEDICAMENTO_FK foreign key (idMedicamento) references MEDICAMENTO(idMedicamento)
);




