-- ------------------------   << Trabalho Final (TF) - Tema 3 - Ludoteca  >>   ------------------------
--
--                    					SCRIPT DE CRIACAO (DDL) 
--
-- Data Criacao ...........: 31/08/2022
-- Autor(es) ..............: Maria Eduarda Barbosa Santos, Victor de Souza Cabral, Wengel Rodrigues Farias, Wesley Pedrosa dos Santos, Victor Hugo Oliveira Leão, Vinicius Assumpção de Araújo, Mateus de Almeida Dias, Renan Rodrigues Lacerda, Nicolas Chagas Souza, Thiago França Vale Oliveira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_Tema3
--
-- Ultimas Alteracoes
--   11/09/2022 => Alteracao no nome da Base de Dados.
--   11/09/2022 => Adicao das tabelas FORNECEDOR e fornece.
--   11/09/2022 => Adicao de mais atributos conforme atualizacao nos documentos.
--   11/09/2022 => Adicao e alteracao no tamanho de alguns atributos.
--   11/09/2022 => Alteracao no nome de alguns atributos.
--   11/09/2022 => Adicao de novas UNIQUE.
--   18/09/2022 => Adicao da tabela CONTRATANTE.
--   18/09/2022 => Alteracao nas relacoes da tabela PESSOA. Algumas relacoes agora sao ligadas a CONTRATANTE.
--   18/09/2022 => Acrecimo de novos atributos em QUADRINHO e CONTRATO conforme atualizacao nos documentos.
--   18/09/2022 => Alteracao no nome de atributos em CATEGORIA e MESA conforme atualizacao nos documentos.
--   18/09/2022 => Alteracao no tamanho de alguns atributos.
--   19/09/2022 => Alteracao na ordem do AUTO_INCREMENT e NOT NULL em atributos que aparecem ambos.
--   26/09/2022 => Alteracao no nome da base de dados.
--   			=> Adição de assinatura e adição de Uniques correspondendo o Diagrama Lógico de Dados.
-- 				=> Removendo o tamanho dos tipos INT, BIGINT e DOUBLE. 
--
-- PROJETO => 01 Base de Dados
--         => 31 Tabelas
--         => 09 Usuarios
--         => 03 Perfis
--
-- ----------------------------------------------------------------------------------------------------

-- BASE DE DADOS
CREATE DATABASE IF NOT EXISTS TF_Tema3;

USE TF_Tema3;

-- TABELAS
CREATE TABLE PESSOA (
	idPessoa INT NOT NULL AUTO_INCREMENT, 
    cpf BIGINT NOT NULL,
    nomeCompleto VARCHAR(100) NOT NULL,
	telefone BIGINT NOT NULL,
	email VARCHAR(255) NOT NULL,
    dtNascimento DATE NOT NULL,

    CONSTRAINT PESSOA_PK PRIMARY KEY (idPessoa),
    CONSTRAINT PESSOA_CPF_UK UNIQUE (cpf, email)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CONTRATANTE(
    idContratante INT NOT NULL, 
    profissaoContratante VARCHAR(50),
	
	CONSTRAINT CONTRATANTE_PK PRIMARY KEY (idContratante),
    CONSTRAINT CONTRATANTE_PESSOA_FK FOREIGN KEY (idContratante)
        REFERENCES PESSOA (idPessoa)
            ON DELETE RESTRICT 
			ON UPDATE CASCADE
) ENGINE = InnoDB;


CREATE TABLE CLIENTE (
	idCliente INT NOT NULL AUTO_INCREMENT,
    nomeCliente VARCHAR(100),
    telefoneCliente BIGINT,

    CONSTRAINT CLIENTE_PK PRIMARY KEY (idCliente)

) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE MESA (
    idMesa INT NOT NULL AUTO_INCREMENT,
    dataHoraMesa DATETIME NOT NULL,
	idCliente INT NOT NULL,

    CONSTRAINT MESA_PK PRIMARY KEY (idMesa),
    
    CONSTRAINT MESA_CLIENTE_FK FOREIGN KEY (idCliente)
        REFERENCES CLIENTE (idCliente)
			ON DELETE RESTRICT 
			ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE FUNCIONARIO (
    idFuncionario INT NOT NULL,
    cargoFuncionario VARCHAR(30) NOT NULL,
	salario DOUBLE NOT NULL,
    dtContratacao DATE NOT NULL,

    CONSTRAINT FUNCIONARIO_PK PRIMARY KEY (idFuncionario),

    CONSTRAINT FUNCIONARIO_PESSOA_FK FOREIGN KEY (idFuncionario)
        REFERENCES PESSOA (idPessoa)
            ON DELETE RESTRICT 
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE MONITOR (
    idMonitor INT NOT NULL,

    CONSTRAINT MONITOR_PK PRIMARY KEY (idMonitor),

    CONSTRAINT MONITOR_FUNCIONARIO_FK FOREIGN KEY (idMonitor)
        REFERENCES FUNCIONARIO (idFuncionario)
            ON DELETE CASCADE 
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE GARCOM (
    idGarcom INT NOT NULL,
    CONSTRAINT GARCOM_PK PRIMARY KEY (idGarcom),

    CONSTRAINT GARCOM_FUNCIONARIO_FK FOREIGN KEY (idGarcom)
        REFERENCES FUNCIONARIO (idFuncionario)
            ON DELETE CASCADE 
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE CARTAO (
    numeroCartao BIGINT NOT NULL,
    validade DATE NOT NULL,
    nomeCartao VARCHAR(50) NOT NULL,
	codigoSeguranca INT NOT NULL,
	idContratante INT NOT NULL,

    CONSTRAINT CARTAO_PK PRIMARY KEY (numeroCartao),

    CONSTRAINT CARTAO_CONTRATANTE_FK FOREIGN KEY (idContratante)
        REFERENCES CONTRATANTE (idContratante)
            ON DELETE RESTRICT 
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE PONTUACAO (
    idPontuacao INT NOT NULL AUTO_INCREMENT,
    nomeJogador VARCHAR(100) NOT NULL,
    numeroPontuacao INT NOT NULL,	
    idMesa INT NOT NULL,

    CONSTRAINT PONTUACAO_PK PRIMARY KEY (idPontuacao),

    CONSTRAINT PONTUACAO_MESA_FK FOREIGN KEY (idMesa)
        REFERENCES MESA (idMesa)
			ON DELETE RESTRICT 
			ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CONTRATO (
    numContrato INT NOT NULL AUTO_INCREMENT,
    dataAssinatura DATE NOT NULL,
    multa DOUBLE NOT NULL,
	valorContrato DOUBLE NOT NULL,
    idFuncionario INT NOT NULL,
    idContratante INT NOT NULL,
    

    CONSTRAINT CONTRATO_PK PRIMARY KEY (numContrato),
    
    CONSTRAINT CONTRATO_FUNCIONARIO_FK FOREIGN KEY (idFuncionario)
        REFERENCES FUNCIONARIO (idFuncionario)
			ON DELETE RESTRICT 
			ON UPDATE CASCADE,
    CONSTRAINT CONTRATO_CONTRATANTE_FK FOREIGN KEY (idContratante)
        REFERENCES CONTRATANTE (idContratante)
			ON DELETE RESTRICT 
			ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE TESTEMUNHA (
    idTestemunha INT NOT NULL AUTO_INCREMENT,
    rgNumeroTestemunha INT NOT NULL,
    rgEstadoTestemunha VARCHAR(2) NOT NULL,
    nomeTestemunha VARCHAR(100) NOT NULL,
    numContrato INT NOT NULL,

    CONSTRAINT TESTEMUNHA_PK PRIMARY KEY (idTestemunha),
    CONSTRAINT TESTEMUNHA_UK UNIQUE (rgNumeroTestemunha),
    
    CONSTRAINT TESTEMUNHA_CONTRATO_FK FOREIGN KEY (numContrato)
        REFERENCES CONTRATO (numContrato)
			ON DELETE RESTRICT 
			ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE ALUGUEL (
    idAluguel INT NOT NULL AUTO_INCREMENT,
    numContrato INT NOT NULL,

    CONSTRAINT ALUGUEL_PK PRIMARY KEY (idAluguel),
    
    CONSTRAINT ALUGUEL_CONTRATO_FK FOREIGN KEY (numContrato)
        REFERENCES CONTRATO (numContrato)
			ON DELETE RESTRICT 
			ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE AVULSA (
    idAvulsa INT NOT NULL,
    prazoDevolucao DATE NOT NULL,    
	valorLocacao DOUBLE NOT NULL,

    CONSTRAINT AVULSA_PK PRIMARY KEY (idAvulsa),
    
    CONSTRAINT AVULSA_ALUGUEL_FK FOREIGN KEY (idAvulsa)
        REFERENCES ALUGUEL (idAluguel)
			ON DELETE CASCADE
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE ASSINATURA (
	idAssinatura INT NOT NULL AUTO_INCREMENT,
    valorAssinatura DECIMAL(7,2) NOT NULL,
    tipoAssinatura VARCHAR(30) NOT NULL,
    CONSTRAINT ASSINATURA_PK PRIMARY KEY (idAssinatura),
    CONSTRAINT ASSINATURA_UK UNIQUE KEY (tipoAssinatura)
) ENGINE = InnoDB;

CREATE TABLE CLUBE (
    idClube INT NOT NULL,
    numeroCartao BIGINT NOT NULL,
    idAssinatura INT NOT NULL,
    
    CONSTRAINT CLUBE_PK PRIMARY KEY (idClube),
    
    CONSTRAINT CLUBE_ALUGUEL_FK FOREIGN KEY (idClube)
        REFERENCES ALUGUEL (idAluguel)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
    CONSTRAINT CLUBE_CARTAO_FK FOREIGN KEY (numeroCartao)
        REFERENCES CARTAO (numeroCartao)
			ON DELETE CASCADE 
			ON UPDATE CASCADE,
	CONSTRAINT CLUBE_ASSINATURA_FK FOREIGN KEY (idAssinatura)
		REFERENCES ASSINATURA (idAssinatura)
			ON DELETE RESTRICT 
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE PRODUTO (
    codProduto INT NOT NULL AUTO_INCREMENT,
    nomeProduto VARCHAR(100) NOT NULL,
    marcaProduto VARCHAR(30) NOT NULL,
	numeroCopia INT NOT NULL,
    situacaoProduto ENUM('A', 'V', 'N') NOT NULL,
	vezesAlugado INT,
	vezesProdutoVendido INT NOT NULL,
	custoProduto DOUBLE NOT NULL,
	precoProduto DOUBLE NOT NULL,
	idCliente INT,
	idAluguel INT,

    CONSTRAINT PRODUTO_PK PRIMARY KEY (codProduto),
    CONSTRAINT PRODUTO_UK UNIQUE KEY (nomeProduto),

    CONSTRAINT PRODUTO_CLIENTE_FK FOREIGN KEY (idCliente)
        REFERENCES CLIENTE (idCliente)
			ON DELETE RESTRICT 
			ON UPDATE CASCADE,
    CONSTRAINT PRODUTO_ALUGUEL_FK FOREIGN KEY (idAluguel)
        REFERENCES ALUGUEL (idAluguel)
			ON DELETE RESTRICT 
			ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CATEGORIA (
    corCategoria VARCHAR(30) NOT NULL,
	precoDanoCategoria DOUBLE NOT NULL,

    CONSTRAINT CATEGORIA_PK PRIMARY KEY (corCategoria)
) ENGINE = InnoDB;

CREATE TABLE JOGO (
    codJogo INT NOT NULL,
	corCategoria VARCHAR(30) NOT NULL,

    CONSTRAINT JOGO_PK PRIMARY KEY (codJogo),

    CONSTRAINT JOGO_PRODUTO_FK FOREIGN KEY (codJogo)
        REFERENCES PRODUTO (codProduto)
			ON DELETE CASCADE 
			ON UPDATE CASCADE,
    CONSTRAINT JOGO_CATEGORIA_FK FOREIGN KEY (corCategoria)
        REFERENCES CATEGORIA (corCategoria)
			ON DELETE CASCADE 
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE QUADRINHO (
    codQuadrinho INT NOT NULL,
    precoDanoQuadrinho DOUBLE NOT NULL,

    CONSTRAINT QUADRINHO_PK PRIMARY KEY (codQuadrinho),

    CONSTRAINT QUADRINHO_PRODUTO_FK FOREIGN KEY (codQuadrinho)
        REFERENCES PRODUTO (codProduto)
			ON DELETE CASCADE 
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE ACESSORIO (
    codAcessorio INT NOT NULL,

    CONSTRAINT ACESSORIO_PK PRIMARY KEY (codAcessorio),

    CONSTRAINT ACESSORIO_PRODUTO_FK FOREIGN KEY (codAcessorio)
        REFERENCES PRODUTO (codProduto)
			ON DELETE CASCADE
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE DEFEITO (
    idDefeito INT NOT NULL AUTO_INCREMENT,
    descricaoDefeito VARCHAR(50) NOT NULL,

    CONSTRAINT DEFEITO_PK PRIMARY KEY (idDefeito),
    CONSTRAINT DEFEITO_UK UNIQUE KEY (descricaoDefeito)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE LANCHE (
    idLanche INT NOT NULL AUTO_INCREMENT,
    tipoLanche ENUM('C', 'B') NOT NULL,    
    nomeLanche VARCHAR(30) NOT NULL,
    descricaoLanche VARCHAR(50) NOT NULL,
	vezesLancheVendido INT NOT NULL,
	custoLanche DOUBLE NOT NULL,
	precoLanche DOUBLE NOT NULL,
	idMesa INT NOT NULL,

    CONSTRAINT LANCHE_PK PRIMARY KEY (idLanche),
    CONSTRAINT LANCHE_UK UNIQUE KEY (nomeLanche),

    CONSTRAINT LANCHE_MESA_FK FOREIGN KEY (idMesa)
        REFERENCES MESA (idMesa)
			ON DELETE CASCADE 
			ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE INSUMO (
    idInsumo INT NOT NULL AUTO_INCREMENT,
    nomeInsumo VARCHAR(30) NOT NULL,

    CONSTRAINT INSUMO_PK PRIMARY KEY (idInsumo),
    CONSTRAINT INSUMO_UK UNIQUE KEY (nomeInsumo)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE FORNECEDOR (
    idFornecedor INT NOT NULL AUTO_INCREMENT,
    nomeFornecedor VARCHAR(50) NOT NULL,
    cnpjFornecedor BIGINT NOT NULL,
	emailFornecedor VARCHAR(255) NOT NULL,

    CONSTRAINT FORNECEDOR_PK PRIMARY KEY (idFornecedor),
    CONSTRAINT FORNECEDOR_UK UNIQUE (cnpjFornecedor, emailFornecedor)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE serve (
    idMesa INT NOT NULL,
    idGarcom INT NOT NULL,

    CONSTRAINT serve_UK UNIQUE (idMesa, idGarcom),

    CONSTRAINT serve_MESA_FK FOREIGN KEY (idMesa)
        REFERENCES MESA (idMesa)
			ON DELETE RESTRICT 
			ON UPDATE CASCADE,
    CONSTRAINT serve_GARCOM_FK FOREIGN KEY (idGarcom)
        REFERENCES GARCOM (idGarcom)
			ON DELETE CASCADE
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE auxilia (
    idMonitor INT NOT NULL,
    idMesa INT NOT NULL,

    CONSTRAINT auxilia_UK UNIQUE (idMonitor, idMesa),

    CONSTRAINT auxilia_MONITOR_FK FOREIGN KEY (idMonitor)
        REFERENCES MONITOR (idMonitor)
			ON DELETE CASCADE 
			ON UPDATE CASCADE,
    CONSTRAINT auxilia_MESA_FK FOREIGN KEY (idMesa)
        REFERENCES MESA (idMesa)
			ON DELETE CASCADE
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE consta (
    idLanche INT NOT NULL,
    idInsumo INT NOT NULL,

    CONSTRAINT consta_UK UNIQUE (idLanche, idInsumo),

    CONSTRAINT consta_LANCHE_FK FOREIGN KEY (idLanche)
        REFERENCES LANCHE (idLanche)
			ON DELETE CASCADE 
			ON UPDATE CASCADE,
    CONSTRAINT consta_INSUMO_FK FOREIGN KEY (idInsumo)
        REFERENCES INSUMO (idInsumo)
			ON DELETE CASCADE 
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE possui (
    codProduto INT NOT NULL,
    idDefeito INT NOT NULL,

    CONSTRAINT possui_UK UNIQUE (codProduto, idDefeito),

    CONSTRAINT possui_PRODUTO_FK FOREIGN KEY (codProduto)
        REFERENCES PRODUTO (codProduto)
			ON DELETE CASCADE 
			ON UPDATE CASCADE,
    CONSTRAINT possui_DEFEITO_FK FOREIGN KEY (idDefeito)
        REFERENCES DEFEITO (idDefeito)
			ON DELETE CASCADE
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE utiliza (
    idMesa INT NOT NULL,
    codProduto INT NOT NULL,

    CONSTRAINT serve_UK UNIQUE (idMesa, codProduto),

    CONSTRAINT utiliza_MESA_FK FOREIGN KEY (idMesa)
        REFERENCES MESA (idMesa)
			ON DELETE CASCADE 
			ON UPDATE CASCADE,
    CONSTRAINT utiliza_PRODUTO_FK FOREIGN KEY (codProduto)
        REFERENCES PRODUTO (codProduto)
			ON DELETE CASCADE 
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE realiza (
    idContratante INT NOT NULL,
    idAluguel INT NOT NULL,

    CONSTRAINT realiza_UK UNIQUE (idContratante, idAluguel),

    CONSTRAINT realiza_CONTRATANTE_FK FOREIGN KEY (idContratante)
        REFERENCES CONTRATANTE (idContratante)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
    CONSTRAINT realiza_ALUGUEL_FK FOREIGN KEY (idAluguel)
        REFERENCES ALUGUEL (idAluguel)
			ON DELETE CASCADE
			ON UPDATE CASCADE
) ENGINE = InnoDB;

CREATE TABLE fornece (
    codProduto INT NOT NULL,
    idFornecedor INT NOT NULL,

    CONSTRAINT fornece_UK UNIQUE (codProduto, idFornecedor),

    CONSTRAINT fornece_PRODUTO_FK FOREIGN KEY (codProduto)
        REFERENCES PRODUTO (codProduto)
			ON DELETE CASCADE
			ON UPDATE CASCADE,
    CONSTRAINT fornece_FORNECEDOR_FK FOREIGN KEY (idFornecedor)
        REFERENCES FORNECEDOR (idFornecedor)
			ON DELETE CASCADE 
			ON UPDATE CASCADE
) ENGINE = InnoDB;