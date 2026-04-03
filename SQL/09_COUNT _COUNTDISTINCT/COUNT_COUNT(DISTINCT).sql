-- Atividade Prática: 09 - COUNT e COUNT DISTINCT
	SELECT * FROM produtos;

-- 1. Desafio (Volume de Operações):
-- Vá à tabela pedidos. Faça uma contagem de todas as linhas da tabela para saber o volume total de vendas já realizadas na história da empresa. Use o Alias Total_Vendas.
	SELECT COUNT(*) AS 'Total_Vendas' FROM pedidos;
    
    
-- 2. Desafio (Abrangência Geográfica):
-- Ainda na tabela pedidos, conte quantos IDs de Lojas diferentes (únicos) realizaram pelo menos uma venda.
-- Isso serve para sabermos se todas as lojas estão ativas. Use o Alias Lojas_Ativas.
	SELECT  COUNT(DISTINCT ID_Loja) AS 'Lojas_Ativas' FROM pedidos
    WHERE Qtd_Vendida > 0;
	

-- 3. Desafio (Fidelização de Clientes):
-- Na tabela pedidos, conte quantos IDs de Clientes diferentes já fizeram compras connosco.
-- Isso ajuda o Cientista de Dados a entender o tamanho da nossa base de clientes reais. Use o Alias Clientes_Unicos.
	SELECT COUNT(DISTINCT ID_Cliente) AS 'Clientes_Unicos' FROM pedidos;
    
    
-- 4. Desafio (Variedade de Portfólio):
-- Vá à tabela produtos. Conte quantas Marcas de Produtos diferentes a empresa trabalha atualmente. Use o Alias Total_Marcas.
	SELECT COUNT(DISTINCT Marca_Produto) AS 'Total_Marcas' FROM produtos;


-- 5. Desafio (Perfil de Escolaridade):
-- Vá à tabela clientes. Conte quantas categorias de Escolaridade diferentes existem registadas no sistema. Use o Alias Niveis_Escolaridade.
-- O que precisas de fazer:
-- Escreve os 5 comandos no teu MySQL Workbench e envia-me o código completo aqui.
	SELECT COUNT(DISTINCT Escolaridade) AS 'Niveis_Escolaridade' FROM clientes;
	