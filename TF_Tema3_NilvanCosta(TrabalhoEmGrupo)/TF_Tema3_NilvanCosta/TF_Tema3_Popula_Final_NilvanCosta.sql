-- ------------------------   << Trabalho Final (TF) - Tema 3 - Ludoteca  >>   ------------------------
--
--                    					SCRIPT DE POPULA (DML) 
--
-- Data Criacao ...........: 31/08/2022
-- Autor(es) ..............: Maria Eduarda Barbosa Santos, Victor de Souza Cabral, Wengel Rodrigues Farias, Wesley Pedrosa dos Santos, Mateus de Almeida Dias, Vinicius Assumpção de Araújo, Victor Hugo Oliveira Leão, Renan Rodrigues Lacerda, Nicolas Chagas Souza, Thiago França Vale Oliveira
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_Tema3
--
-- Ultimas Alteracoes
--   11/09/2022 => Alteracao no nome da Base de Dados.
--   11/09/2022 => Adicao das tabelas FORNECEDOR e fornece.
--   11/09/2022 => Novas tabelas adicionadas foram populadas.
--   11/09/2022 => Alteracao no nome de alguns atributos.
--   11/09/2022 => Alteracao em alguns nomes usados para popular as tabelas.
--   11/09/2022 => Adicao de mais atributos em tabelas que foram atualizadas no SCRIPT DE CRIACAO.
--   11/09/2022 => Coluna dos atributos adicionados foram populadas nas tabelas.
--   18/09/2022 => Adicao da tabela CONTRATANTE.
--   18/09/2022 => Alteracao nas relacoes da tabela PESSOA. Algumas relacoes agora sao ligadas a CONTRATANTE.
--   18/09/2022 => Nova tabela adicionada foi populada.
--   18/09/2022 => Acrescentado e populado novos atributos em QUADRINHO e CONTRATO.
--   18/09/2022 => Alteracao no nome de atributos em CATEGORIA e MESA.
--   18/09/2022 => Mais tuplas adicionadas nas tabelas.
--   26/09/2022 => Alteracao no nome da base de dados.
--              => Adição de Assinatura e suas tuplas.
--
-- PROJETO => 01 Base de Dados
--         => 31 Tabelas
--         => 09 Usuários
--         => 03 Perfis
--
-- ----------------------------------------------------------------------------------------------------

-- BASE DE DADOS
USE TF_Tema3;

-- INSERCOES
INSERT INTO PESSOA 
	(cpf, nomeCompleto, telefone, email, dtNascimento) 
VALUES
    (50970633416, 'Jimmy Areosa Valente', 61948035272, 'jimmyValente2619@gmail.com', '1993-11-26'),
    (46772518519, 'Adriel Mena Seixas', 61900403994, 'adrielSeixa5433@gmail.com', '1973-07-11'),
    (98120525426, 'Jerónimo Camelo Matoso', 61942197813, 'jeronimoMatoso2375@gmail.com', '2000-04-12'),
    (25173243015, 'Leandra Coutinho Feitosa', 61995388907, 'leandraCoutinho1364@gmail.com', '1997-11-28'),
    (71216151180, 'Vladimir Carrasqueira Pederneiras', 61965755953, 'vladimirPederneiras3475@gmail.com', '1999-12-29'),
    (64620972487, 'Jan Lários Andrade', 61919032314, 'janAndrade0356@gmail.com', '1984-01-01'),
    (31683667573, 'Evandro Cadaval Bonito', 61939401882, 'evandroBonito6468@gmail.com', '1988-03-07'),
    (03494227101, 'Sarah Paredes Trindade', 61911068389, 'trindadeSarah2486@gmail.com', '1993-11-21'),
    (86114172671, 'Guiomar Minho Mondragão', 61942172601, 'mondragaoGuiomar8635@hotmail.com', '1996-02-17'),
    (16412835806, 'Liara Coelho Bingre', 61901040529, 'liaraCoelho4742@hotmail.com', '2001-01-15'),
    (80433495332, 'Rahyssa Flores Baião', 61900862478, 'rahyssaFlores7546@hotmail.com', '1999-01-29'),
    (36422028377, 'Taís Abreu Bicalho', 61993221029, 'taisBicalho8562@hotmail.com', '1993-07-09'),
    (35771357782, 'Vilma Saraiva Godoi', 61973250416, 'vilmaGodoi5963@hotmail.com', '1993-04-02'),
    (82224299818, 'Cecília Cachão Albuquerque', 61924285011, 'ceciliaAlburquerque2474@hotmail.com', '2002-12-12'),
    (25314483734, 'Ruben Maranhão Carvalhoso', 61930299634, 'rubenCarvalhoso3527@hotmail.com', '1994-03-30'),
    (02367335249, 'Raul Ryan Fernandes', 61981109518, 'raul_ryan_fernandes@gmail.com', '1995-10-21'),
    (35354634164, 'Rafaela Benedita Novaes', 61997229805, 'rafaelabeneditanovaes@gmail.com', '1999-11-10'),
    (76884877146, 'Mirella Eduarda Heloise Ferreira', 61986507923, 'mirella_ferreira@gmail.com', '1997-12-16'),
    (08906933150, 'Breno Pedro Cavalcanti', 61997716967, 'brenopedrocavalcanti@gmail.com', '1992-01-24'),
    (06730558172, 'Ayla Rosa das Neves', 61948035284, 'aylarosadasneves@gmail.com', '1985-02-02'),
    (18115648108, 'Sophia Ana Josefa Dias', 61995998991, 'sophia.ana.dias@gmail.com', '1998-04-05'),
    (91524209066, 'Isadora Olivia Lopes', 61992180386, 'isadoraolivialopes@gmail.com', '1996-05-17'),
    (99413229104, 'Ryan Yuri Vitor Gomes', 61993077142, 'ryan.yuri.gomes@gmail.com', '1992-07-19'),
    (82015817174, 'Ricardo Marcos Moraes', 61981970845, 'ricardomarcosmoraes@gmail.com', '1991-08-10'),
	(63590325119, 'Gabriel Vicente Souza', 61983030118, 'gabriel_souza@gmail.com', '1980-03-20'),
    (06129762119, 'Emily Hadassa Antônia Moura', 61999574608, 'emily_hadassa_moura@gmail.com', '1999-05-01'),
    (46894342121, 'Maria Daiane Alice da Mata', 61991468553, 'maria_damata@gmail.com', '1984-12-25'),
    (96913326122, 'Kaique Thiago Peixoto', 61985994587, 'kaique_peixoto@gmail.com', '1982-11-12'),
    (22320216103, 'Geraldo Paulo Tiago Fogaça', 61994859672, 'geraldo_fogaca@gmail.com', '1988-09-08'),
    (86351680115, 'Rafaela Emily Novaes', 61993387548, 'rafaela.emily.novaes@gmail.com', '1981-03-15');
    
    
INSERT INTO CLIENTE
	(nomeCliente, telefoneCliente) 
VALUES    
    ('Josefa Bianca Maitê Duarte', 61992693591),
    ('Vinicius Raul Peixoto', 61985087891),
    ('Nair Emanuelly Letícia Assunção', 61984346478),
    ('Yasmin Melissa Moreira', 61983642841),
    ('Luiz Arthur Calebe Mendes', 61986629736),
    ('Gabriel Bruno Mendes', 61994909662),
    ('Kauê Pedro Henrique Mendes', 61989735941),
    ('Luan Francisco Gonçalves', 61996712156),
    ('Stella Isabella Cláudia da Paz', 61996886519),
    ('Mirella Luana Elza Barros', 61984739541);
    
INSERT INTO CONTRATANTE
	(idContratante, profissaoContratante) 
VALUES
	(1, 'Engenheiro de Software'),
	(2, 'Dentista'),
	(3, 'Advogado'),
	(4, 'Médica'),
	(5, 'Professor'),
	(6, 'Engenheiro Aeroespacial'),
	(7, 'Bancário'),
	(8, 'Advogada'),
	(9, 'Médico'),
	(10, 'Professora');
    
INSERT INTO MESA 
	(dataHoraMesa, idCliente) 
VALUES
	('2022-01-19 13:23:44', 1),
	('2022-03-13 14:23:45', 2),
	('2022-05-24 16:21:43', 3),
	('2022-06-11 15:22:42', 4),
	('2022-08-30 17:21:41', 5),
    ('2022-02-19 18:20:40', 6),
	('2022-04-13 10:29:47', 7),
	('2022-07-24 11:28:46', 8),
	('2022-09-11 12:27:48', 9),
	('2022-10-30 13:25:49', 10);

INSERT INTO FUNCIONARIO 
	(idFuncionario, cargoFuncionario, salario, dtContratacao) 
VALUES
    (11, 'Monitor', 1500.00, '2021-01-25'),
    (12, 'Monitor', 1500.00, '2021-02-17'),
    (13, 'Monitor', 1300.00, '2021-08-08'),
    (14, 'Monitor', 1300.00, '2021-10-14'),
    (15, 'Monitor', 1300.00, '2021-12-29'),
    (16, 'Garcom', 1480.00, '2021-01-12'),
    (17, 'Garcom', 1480.00, '2021-02-05'),
    (18, 'Garcom', 1480.00, '2021-03-09'),
    (19, 'Garcom', 1400.00, '2021-09-23'),
    (20, 'Garcom', 1400.00, '2021-10-15'),
    (21, 'Monitor', 1500.00, '2021-12-25'),
    (22, 'Monitor', 1500.00, '2021-02-01'),
    (23, 'Monitor', 1300.00, '2021-07-07'),
    (24, 'Monitor', 1300.00, '2021-11-24'),
    (25, 'Monitor', 1300.00, '2021-12-23'),
    (26, 'Garcom', 1480.00, '2021-04-18'),
    (27, 'Garcom', 1480.00, '2021-05-10'),
    (28, 'Garcom', 1480.00, '2021-06-13'),
    (29, 'Garcom', 1400.00, '2021-01-11'),
    (30, 'Garcom', 1400.00, '2021-10-20');

INSERT INTO MONITOR 
	(idMonitor) 
VALUES
    (16),
    (17),
    (18),
    (19),
    (20),
    (26),
    (27),
    (28),
    (29),
    (30);

INSERT INTO GARCOM 
	(idGarcom) 
VALUES
    (11),
    (12),
    (13),
    (14),
    (15),
    (21),
    (22),
    (23),
    (24),
    (25);

INSERT INTO CARTAO 
	(numeroCartao, validade, nomeCartao, codigoSeguranca, idContratante) 
VALUES
	('5403769151786003', '2024-03-31', 'Jimmy A Valente', '692', 1),
	('5590583312969975', '2023-04-01', 'Adriel M Seixas', '293', 2),
	('4556096651133850', '2023-12-01', 'Jeronimo C Matoso', '971', 3),
	('6062824241292486', '2023-05-01', 'Leandra C Feitosa', '357', 4),
	('4485063677520920', '2024-05-01', 'Vladimir C Pederneiras', '118', 5),
    ('5403769151784050', '2024-03-13', 'Jan Lários Andrade', '296', 6),
	('5590584312964060', '2023-04-10', 'Evandro Cadaval Bonito', '392', 7),
	('4556097651133050', '2023-12-10', 'Sarah Paredes Trindade', '179', 8),
	('6062825241292050', '2023-05-10', 'Guiomar Minho Mondragão', '753', 9),
	('4485083677523060', '2024-05-10', 'Liara Coelho Bingre', '811', 10);
    
INSERT INTO PONTUACAO 
	(nomeJogador, numeroPontuacao, idMesa) 
VALUES
	('Jimmy Valente', '50', 1),
	('Caroline Medeiros', '46', 1),
	('Lucas Carvalho', '41', 1),
	('Adriel Seixas', '1', 2),
	('Monique Lima', '2', 2),
	('Jeronimo Matoso', '200', 3),
	('Jessica Souza', '300', 3),
	('Mateus Abadio', '250', 3),
	('Leandra Feitosa', '1000', 4),
	('Jose Vasconcelos', '987', 4),
	('Vladimir Pederneiras', '2', 5),
	('Tamires Figueredo', '1', 5);

INSERT INTO CONTRATO
    (dataAssinatura, valorContrato, multa, idFuncionario, idContratante)
VALUES
    ('2019-01-01', 160.00, 80.00, 11, 1),
    ('2019-01-01', 280.00, 140.00, 12, 2),
    ('2019-01-01', 110.00, 55.00, 13, 3),
    ('2019-01-01', 40.00, 20.00, 14, 4),
    ('2019-01-01', 120.00, 60.00, 15, 5),
    ('2019-01-01', 30.00, 15.00, 16, 6),
    ('2019-01-01', 320.00, 160.00, 17, 7),
    ('2020-01-01', 120.00, 60.00, 18, 8),
    ('2021-01-01', 140.00, 70.00, 19, 9),
    ('2022-01-01', 80.00, 40.00, 20, 10),
    ('2021-02-02', 160.00, 80.00, 21, 1),
    ('2021-03-03', 280.00, 140.00, 22, 2),
    ('2021-04-04', 110.00, 55.00, 23, 3),
    ('2021-05-05', 40.00, 20.00, 24, 4),
    ('2021-06-06', 120.00, 60.00, 25, 5),
    ('2021-07-07', 30.00, 15.00, 26, 6),
    ('2021-08-08', 320.00, 160.00, 27, 7),
    ('2021-09-09', 120.00, 60.00, 28, 8),
    ('2021-10-01', 140.00, 70.00, 30, 9),
    ('2021-11-11', 80.00, 40.00, 29, 10);
    

INSERT INTO TESTEMUNHA
    (rgNumeroTestemunha, rgEstadoTestemunha, nomeTestemunha, numContrato)
VALUES
    (2622654, 'DF', 'Pedro Alves Ferreira', 1),
    (1826226,'DF', 'Amanda Rodrigues Pereira', 2),
    (6368033,'DF', 'Luiza Macedo dos Santos', 3),
    (3779192, 'DF', 'Lucas Cabral Oliveira', 4),
    (4709426,'DF', 'Isabela Fernandes Santos', 5),
    (3121898, 'DF', 'Sophie Maria Nogueira', 5),
    (4907532,'DF', 'Diogo Pedro Martin Aparício', 4),
    (3078922,'DF', 'Rodrigo Raul Ricardo Assis', 3),
    (2932814, 'DF', 'Débora Elaine Regina Fernandes', 2),
    (3215565,'DF', 'Erick Eduardo das Neves', 1);

INSERT INTO ALUGUEL
    (numContrato)
VALUES
    (1),
    (2),
    (3),
    (4),
    (5),
    (6),
    (7),
    (8),
    (9),
    (10),
    (11),
    (12),
    (13),
    (14),
    (15),
    (16),
    (17),
    (18),
    (19),
    (20);

INSERT INTO AVULSA 
	(idAvulsa, prazoDevolucao, valorLocacao) 
VALUES
    (11, '2021-02-09', 160.00),
    (12, '2021-03-10', 280.00),
    (13, '2021-04-11',  110.00),
    (14, '2021-05-12', 40.00),
    (15, '2021-06-13', 120.00),
    (16, '2021-07-17', 30.00),
    (17, '2021-08-15', 320.00),
    (18, '2021-09-16', 120.00),
    (19, '2021-10-08', 140.00),
    (20, '2021-11-18', 80.00);
    
-- Apesar do mínimo de tuplas da atividade ser 10, foi passado na entrevista e documento de contrato a existência de apenas 3 tipos de assinaturas.
INSERT INTO ASSINATURA 
	(tipoAssinatura, valorAssinatura)
VALUES
	('CG', 80.00),  -- Casual Gamer
    ('BG', 120.00), -- Board Gamer
    ('HG', 140.00); -- Heavy Gamer

INSERT INTO CLUBE 
	(idClube, idAssinatura, numeroCartao) 
VALUES
    (1, 1, 5403769151786003),
    (2, 1, 5590583312969975),
    (3, 2, 4556096651133850),
    (4, 3, 6062824241292486),
    (5, 2, 4485063677520920),
	(6, 1, 5403769151784050),
    (7, 1, 5590584312964060),
    (8, 2, 4556097651133050),
    (9, 3, 6062825241292050),
    (10, 2, 4485083677523060);

INSERT INTO PRODUTO
    (nomeProduto, marcaProduto, numeroCopia, situacaoProduto, vezesAlugado, vezesProdutoVendido, custoProduto, precoProduto)
VALUES
    ('BANCO IMOBILIARIO', 'ESTRELA', 1, 'N', 34, 20, 75.00, 150.00),
    ('BATALHA NAVAL', 'GROW', 1, 'V', 30, 25, 40.00, 80.00),
    ('JOGO DA VIDA', 'ESTRELA', 2, 'A', 15, 17, 60.00, 120.00),
    ('WAR', 'GROW', 2, 'N', 34, 30, 110.00, 220.00),
    ('PERFIL JUNIOR', 'GROW', 3, 'N', 50, 40, 40.00, 80.00),
    ('PERFIL 6', 'GROW', 3, 'N', 50, 40, 40.00, 80.00),
    ('WAR 2', 'GROW', 2, 'N', 34, 30, 110.00, 220.00),
    ('MONOPOLIS', 'ESTRELA', 2, 'A', 15, 17, 60.00, 120.00),
    ('MASTER', 'GROW', 1, 'V', 30, 25, 40.00, 80.00),
    ('SUPER BANCO IMOBILIARIO', 'ESTRELA', 1, 'N', 34, 20, 75.00, 150.00),
    ('TURMA DA MONICA', 'GIRASSOL', 1, 'A', 50, 28, 10.00, 20.00),
    ('INVASÃO SECRETA', 'PANINI', 1, 'V', 46, 32, 65.00, 130.00),
    ('GUERRA CIVIL', 'PANINI', 2, 'N', 39, 31, 35.00, 70.00),
    ('SUPERMAN: O HOMEM DE AÇO', 'EAGLEMOSS', 2, 'A', 27, 20, 30.00, 60.00),
    ('BATMAN: A QUEDA DO MORCEGO', 'EAGLEMOSS', 3, 'V', 35, 30, 60.00, 120.00),
	('LANTERNA VERDE: VOLTA PARA CASA', 'EAGLEMOSS', 3, 'V', 35, 30, 60.00, 120.00),
    ('FLASH: BATALHA FINAL', 'EAGLEMOSS', 2, 'A', 27, 20, 30.00, 60.00),
    ('GUERRA INFINITA', 'PANINI', 2, 'N', 39, 31, 35.00, 70.00),
    ('QUARTETO FANTASTICO', 'PANINI', 1, 'V', 46, 32, 65.00, 130.00),
    ('TURMA DA MONICA: VIAGEM NO TEMPO', 'GIRASSOL', 1, 'A', 50, 28, 10.00, 20.00),
    ('CADERNO: CAPITÃO AMÉRICA', 'MARVEL', 3, 'V', 0, 16, 10.00, 20.00),
    ('BONÉ: HULK', 'MARVEL', 4, 'V', 0, 11, 9.00, 18.00),
    ('ESTOJO: VAMPIRO A MÁSCARA', 'GALÁPAGOS JOGOS', 2, 'N', 0, 12, 14.00, 28.00),
    ('SANDÁLIA: DUNGEONS AND DRAGONS', 'IPANEMA', 3, 'N', 0, 15, 6.00, 12.00),
    ('CHAPÉU: BATMAN', 'EAGLEMOSS', 4, 'V', 0, 9, 9.00, 18.00),
    ('CHAPÉU: SUPERMAN', 'EAGLEMOSS', 4, 'V', 0, 9, 9.00, 18.00),
    ('SANDÁLIA', 'HAVAIANAS', 3, 'N', 0, 15, 6.00, 12.00),
	('ESTOJO: HULK', 'MARVEL', 2, 'N', 0, 12, 14.00, 28.00),
    ('BONÉ: CAPITÃO AMERICA', 'MARVEL', 4, 'V', 0, 11, 9.00, 18.00),
    ('CADERNO: HOMEM ARANHA', 'MARVEL', 3, 'V', 0, 16, 10.00, 20.00);
    
INSERT INTO CATEGORIA
    (corCategoria, precoDanoCategoria)
VALUES
    ('AZUL', 10.00),
    ('AMARELO', 30.00),
    ('DOURADO', 50.00),
	('ROSA', 70.00),
	('VERMELHO', 90.00),
    ('VERDE', 110.00),
    ('PRATA', 130.00),
    ('LARANJA', 150.00),
	('PRETO', 170.00),
	('BRONZE', 190.00);

INSERT INTO JOGO
    (codJogo, corCategoria)
VALUES
    (1, 'AZUL'),
    (2, 'AMARELO'),
    (3, 'DOURADO'),
    (4, 'ROSA'),
    (5, 'VERMELHO'),
	(6, 'VERDE'),
    (7, 'PRATA'),
    (8, 'LARANJA'),
	(9, 'PRETO'),
	(10, 'BRONZE');
    
INSERT INTO QUADRINHO
    (codQuadrinho, precoDanoQuadrinho)
VALUES
    (11, 20.00),
    (12, 40.00),
    (13, 60.00),
    (14, 80.00),
    (15, 100.00),
	(16, 10.00),
    (17, 30.00),
    (18, 50.00),
    (19, 70.00),
    (20, 90.00);

INSERT INTO ACESSORIO
    (codAcessorio)
VALUES
    (21),
    (22),
    (23),
    (24),
    (25),
    (26),
    (27),
    (28),
    (29),
    (30);

INSERT INTO DEFEITO
    (descricaoDefeito)
VALUES
    ('QUEBRADO'),
    ('1 PEÇA AUSENTE'),
    ('DESGASTADO'),
    ('CAPA AMASSADA'),
    ('PAGINA AUSENTE'),
    ('FALHA NA PAGINA'),
    ('PEÇA RACHADA'),
    ('EMBALAGEM RASGADA'),
    ('TRINCADO'),
    ('MAIS DE 1 PEÇA AUSENTE');

INSERT INTO LANCHE
    (tipoLanche, descricaoLanche, nomeLanche, vezesLancheVendido, custoLanche, precoLanche, idMesa)
VALUES
    ('C', 'CREPE', 'CARNE', 80, 4.00, 8.00, 1),
    ('B', 'REFRI', 'FANTA LARANJA', 150, 2.00, 4.00, 1),
    ('B', 'REFRI', 'COCA-COLA', 200, 2.00, 4.00, 2),
    ('C', 'CREPE', 'FRANGO', 100, 4.00, 8.00, 2),
    ('C', 'CREPE', 'CALABRESA', 60, 4.00, 8.00, 3),
    ('C', 'CREPE', 'QUEIJO', 80, 4.00, 8.00, 6),
    ('B', 'REFRI', 'GUARANA', 150, 2.00, 4.00, 7),
    ('B', 'REFRI', 'COCA-COLA ZERO', 200, 2.00, 4.00, 8),
    ('C', 'CREPE', 'CHOCOLATE', 100, 4.00, 8.00, 9),
    ('C', 'CREPE', 'CALABRESA COM CATUPIRY', 60, 4.00, 8.00, 10);

INSERT INTO INSUMO
    (nomeInsumo )
VALUES
    ('CARNE'),
    ('FRANGO'),
    ('CALABRESA'),
    ('FANTA LARANJA'),
    ('COCA-COLA'),
    ('GUARANA'),
    ('CHOCOLATE'),
    ('QUEIJO'),
    ('MORANGO'),
    ('COCO');

INSERT INTO FORNECEDOR
    (nomeFornecedor, cnpjFornecedor, emailFornecedor)
VALUES
    ('Roberto Jogos Associado', 53518093000107, 'seguranca@robertojogosassociado.com'),
    ('Cláudio HQ Delivery', 93982344000124, 'auditoria@claudiohqdelivery.com'),
    ('Luiz Roupas', 46926744000132, 'contato@luizroupas.com'),
    ('Helena Eletrônica Ltda', 15727135000120, 'financeiro@helenaeletronicaltda.com'),
    ('Arthur e Márcia Transportes ME', 98246806000169, 'ti@arthuremarciatransportesme.com'),
    ('Comércio Magellan', 44201447000102, 'contato@comérciomagellan.com'),
    ('Loja Castelo', 77205548000100, 'contato@lojacastelo.com'),
    ('Luan Gráfica', 09918076000175, 'representantes@luangrafica.com'),
    ('Maria e Lucas Quadrinhos Ltda', 50821559000150, 'pesquisa@mariaelucasquadrinhosltda.com'),
    ('Sara Pops e Funkos', 81066116000125, 'desenvolvimento@sarapopefunkos.com');

INSERT INTO serve
    (idMesa, idGarcom)
VALUES
    (1, 11),
    (2, 12),
    (3, 13),
    (4, 14),
    (5, 15),
    (6, 21),
    (7, 22),
    (8, 23),
    (9, 24),
    (10, 25);

INSERT INTO auxilia 
    (idMesa, idMonitor)
VALUES
    (1, 16),
    (2, 17),
    (3, 18),
    (4, 19),
    (5, 20),
    (6, 26),
    (7, 27),
    (8, 28),
    (9, 29),
    (10, 30);

INSERT INTO consta 
    (idLanche, idInsumo)
VALUES
    (1, 1),
    (2, 4),
    (3, 5),
    (4, 2),
    (5, 3),
    (6, 8),
    (7, 6),
    (8, 5),
    (9, 7),
    (10, 3);

INSERT INTO possui
    (codProduto, idDefeito)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (6, 3),
    (7, 5),
    (11, 4),
    (12, 4),
    (13, 4),
    (16, 4),
    (17, 4);

INSERT INTO utiliza
    (codProduto, idMesa)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (6, 4),
    (7, 5),
    (8, 6),
    (9, 7),
    (10, 8),
    (4, 9),
    (5, 10);

INSERT INTO realiza
    (idContratante, idAluguel)
VALUES
    (1, 6),
    (2, 7),
    (3, 8),
    (4, 9),
    (5, 10),
    (6, 16),
    (7, 17),
    (8, 18),
    (9, 19),
    (10, 20);

INSERT INTO fornece
    (codProduto, idFornecedor)
VALUES
    (1, 1),
    (2, 2),
    (5, 3),
    (6, 4),
    (8, 5),
    (3, 6),
    (4, 7),
    (7, 8),
    (10, 9),
    (9, 10);