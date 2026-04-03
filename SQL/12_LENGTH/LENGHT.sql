-- ATIVIDADE PRÁTICA 12 - Medindo Dados (Função LENGTH)


-- Use a função LENGTH('Michael Maciel') para descobrir quantos caracteres (incluindo espaços) existem no seu nome.
	SELECT LENGTH('Michael Maciel') AS 'Num_Caracteres';

-- 2. Desafio (Tamanho dos Produtos):
-- Vá à tabela produtos. Selecione o Nome_Produto e crie uma coluna chamada Tamanho_Nome que mostre a quantidade de caracteres de cada nome de produto.
	SELECT  Nome_Produto, LENGTH(Nome_Produto) AS 'Qtd_Caracteres' FROM  produtos;

-- 3. Desafio (Filtro por Comprimento):
-- Ainda na tabela produtos, filtre apenas os produtos cuja Marca_Produto tenha menos de 5 caracteres (ex: marcas curtas como 'Sony' ou 'Dell').
	SELECT Marca_Produto FROM produtos
    WHERE LENGTH(Marca_Produto) < 5;

-- 4. Desafio (Análise de Clientes):
-- Vá à tabela clientes. Selecione o Nome e o Email, mas mostre apenas os registros onde o Email tenha mais de 20 caracteres.
-- Isso ajuda a identificar e-mails corporativos ou muito longos.
	SELECT Nome, Email FROM clientes
    WHERE LENGTH(Email) > 20;

-- 5. Desafio (Validação de Dados):
-- Imagine que os códigos de lojas devem ter sempre um padrão. Selecione os ID_Loja da tabela pedidos,
-- mas mostre-os apenas de forma única (DISTINCT) e adicione uma coluna mostrando o comprimento desse ID.
	SELECT DISTINCT(ID_Loja), LENGTH(ID_Loja) AS 'Comprimento_ID'FROM pedidos;




