/* 06 - ATIVIDADE PRÁTICA: Matemática e Agregação (COUNT(*), COUNT(DISTINCT coluna), SUM(coluna), AVG(coluna), MIN(coluna), MAX(coluna)*/

-- Desafio 1 (O Contador Básico - COUNT): O RH precisa saber o tamanho exato da nossa base.
-- Vá à tabela clientes e escreva um comando para contar quantos clientes temos cadastrados no total.
	SELECT COUNT(*) FROM clientes;


-- Desafio 2 (O Contador de Exclusividades - COUNT DISTINCT): A área de compras quer entender a variedade do nosso catálogo.
-- Vá à tabela produtos e descubra quantas marcas únicas (diferentes) nós vendemos atualmente.
	SELECT COUNT(DISTINCT Marca_Produto) AS 'Qtd de Marca produtos'FROM produtos;

-- Desafio 3 (O Faturamento Bruto - SUM): A diretoria quer ver os resultados!
-- Vá à tabela pedidos e calcule a soma total de toda a Receita_Venda já gerada pela nossa loja.
	SELECT SUM(Receita_Venda) AS 'Total Receita Venda' FROM pedidos;

-- Desafio 4 (O Termômetro de Preços - AVG, MIN, MAX): O time de precificação precisa de um resumo rápido do catálogo.
-- Vá à tabela produtos e, em um único comando SELECT, mostre três colunas: a média de preço,
-- o valor do produto mais barato e o valor do produto mais caro (tudo baseado na coluna Preco_Unit).
	SELECT AVG(Preco_Unit) AS 'Media de preço', MIN(Preco_Unit) AS 'Produto Mais Barato', MAX(Preco_Unit) AS 'Produto Mais Caro' FROM produtos;

-- Desafio 5 (O Raio-X do Cliente - Combo Total): O financeiro está analisando o poder aquisitivo do nosso público.
-- Vá à tabela clientes. Em um único SELECT, traga um grande resumo com quatro colunas:
-- O total de clientes cadastrados.
-- A média da Renda_Anual.
-- A maior renda registrada.
-- A menor renda registrada.
-- (Dica de Ouro: Use o comando AS para dar nomes claros e bonitos a essas quatro colunas calculadas no seu relatório final!)
	SELECT COUNT(*) AS 'Qtd Clientes',
    AVG(Renda_Anual) AS 'Média Renda Anual',
    MAX(Renda_Anual) as 'Maior Renda Registrada',
    MIN(Renda_Anual) as 'Menor Renda Registrada' FROM clientes;
    
    
    
    
    
    