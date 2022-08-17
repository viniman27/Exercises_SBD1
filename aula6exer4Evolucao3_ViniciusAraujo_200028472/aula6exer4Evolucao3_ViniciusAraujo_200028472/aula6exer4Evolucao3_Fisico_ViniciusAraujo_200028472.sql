-- --------  aula6exer4Evolucao3 Fisico   ----------
--
--                    SCRIPT DE CRIACAO (DDL)
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

CREATE DATABASE IF NOT EXISTS aula6exer4Evolucao3 ;

USE aula6exer4Evolucao3 ;

CREATE TABLE PESSOA (
    idPessoa     INT            NOT NULL,
    nome 	     VARCHAR(30)    NOT NULL,
    sexo         ENUM('M', 'F') NOT NULL,
    dataNascimento DATE           NOT NULL,
    CONSTRAINT PESSOA_PK PRIMARY KEY (idPessoa)
)ENGINE = InnoDb;

CREATE TABLE DEPARTAMENTO (
	idDepartamento   INT         NOT NULL,
	nome VARCHAR(30) NOT NULL,
    CONSTRAINT DEPARTAMENTO_PK PRIMARY KEY (idDepartamento)
)ENGINE = InnoDb;

CREATE TABLE EMPREGADO (
	matricula		   INT         NOT NULL,
	salario            DECIMAL     NOT NULL,
    rua                VARCHAR(30) NOT NULL,
    numero             INT         NOT NULL,
    bairro             VARCHAR(30) NOT NULL,
    idPessoa           INT         NOT NULL,
    idDepartamento     INT         NOT NULL,
    
    CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula, idPessoa),
    CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (idPessoa)
    REFERENCES PESSOA (idPessoa),
    CONSTRAINT EMPREGADO_DEPARTAMENTO_FK FOREIGN KEY (idDepartamento)
    REFERENCES DEPARTAMENTO (idDepartamento)
);

CREATE TABLE DEPENDENTE (
	relacaodependencia        VARCHAR(30) NOT NULL,
    idPessoa          		  INT         NOT NULL,
    matricula			 	  INT         NOT NULL,
    
    CONSTRAINT DEPENDENTE_PK PRIMARY KEY (idPessoa),
    
    CONSTRAINT DEPENDENTE_PESSOA_FK FOREIGN KEY (idPessoa)
    REFERENCES PESSOA (idPessoa),
    
    CONSTRAINT DEPENDENTE_EMPREGADO_FK FOREIGN KEY (matriculaEmpregado)
    REFERENCES EMPREGADO (matriculaEmpregado)
);

CREATE TABLE supervisiona (
	matricula  INT NOT NULL,
    matriculaSupervisor INT NOT NULL,
    
    CONSTRAINT SUPERVISIONA_EMPREGADO_SUPERVISIONADO_FK FOREIGN KEY (matriculaEmpregado)
    REFERENCES EMPREGADO (matriculaEmpregado),
    
    CONSTRAINT SUPERVISIONA_EMPREGADO_SUPERVISIONA_FK FOREIGN KEY (matriculaSupervisor)
    REFERENCES EMPREGADO (matriculaEmpregado)
);

CREATE TABLE gerencia (
	matricula		   INT  NOT NULL,
    idDepartamento     INT  NOT NULL,
    
    CONSTRAINT GERENCIA_EMPREGADO_FK FOREIGN KEY (matriculaEmpregado)
    REFERENCES EMPREGADO (matriculaEmpregado),
    
    CONSTRAINT GERENCIA_DEPARTAMENTO_FK FOREIGN KEY (idDepartamento)
    REFERENCES DEPARTAMENTO (idDepartamento)
);

CREATE TABLE LOCALIZACAO (
	idLocal 		INT         NOT NULL,
    descricaoLocal VARCHAR(30) NOT NULL,
    CONSTRAINT LOCALIZACAO_PK PRIMARY KEY (idLocal)
);

CREATE TABLE possui (
	idDepartamento INT NOT NULL,
    idLocal        INT NOT NULL,
    
    CONSTRAINT TEM_DEPARTAMENTO_FK FOREIGN KEY (idDepartamento)
    REFERENCES DEPARTAMENTO (idDepartamento),
    
    CONSTRAINT TEM_LOCALIZACAO_FK FOREIGN KEY (idLocal)
    REFERENCES LOCALIZACAO (idLocal)
);

CREATE TABLE PROJETO (
	idProjeto      INT         NOT NULL,
    nomeProjeto    VARCHAR(30) NOT NULL,
    idDepartamento INT         NOT NULL,
    idLocal        INT         NOT NULL,
    
    CONSTRAINT PROJETO_PK PRIMARY KEY (idProjeto),
    
    CONSTRAINT PROJETO_DEPARTAMENTO_FK FOREIGN KEY (idDepartamento)
    REFERENCES DEPARTAMENTO (idDepartamento),
    
    CONSTRAINT PROJETO_LOCALIZACAO_FK FOREIGN KEY (idLocal)
    REFERENCES LOCALIZACAO (idLocal)
);

CREATE TABLE trabalha (
	matriculaEmpregado INT NOT NULL,
    idProjeto          INT NOT NULL,
    
    CONSTRAINT TRABALHA_EMPREGADO_FK FOREIGN KEY (matriculaEmpregado)
    REFERENCES EMPREGADO (matriculaEmpregado),
    
    CONSTRAINT TRABALHA_PROJETO_FK FOREIGN KEY (idProjeto)
    REFERENCES PROJETO (idProjeto)
); 