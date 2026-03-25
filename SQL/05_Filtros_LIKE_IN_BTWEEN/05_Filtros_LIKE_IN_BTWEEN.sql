/*05 - ATIVIDADE PRÁTICA: Filtros Inteligentes - (LIKE, IN, BETWEEN)*/ 

-- Desafio 1 (O Buscador de Palavras - LIKE): O pessoal do marketing quer fazer uma promoção para o público gamer.
-- Vá à tabela produtos. Mostre o Nome_Produto e o Preco_Unit, mas filtre apenas os produtos que tenham a palavra 'Gamer' em qualquer parte do nome.
	SELECT Nome_Produto, Preco_Unit FROM produtos
    WHERE Nome_Produto LIKE '%Gamer%';
	
-- Desafio 2 (O Atalho das Listas - IN): O gerente de logística quer ver as nossas bases nos três principais estados do sudeste,
-- mas ele proibiu o uso do comando OR porque acha que o código fica muito grande. Vá à tabela locais. Traga a Cidade e o Estado,
-- filtrando apenas onde o estado seja 'SP', 'RJ' ou 'MG' (usando o comando IN).
	SELECT Cidade, Estado FROM locais
    WHERE Estado IN('SP', 'RJ', 'MG');
    
-- Desafio 3 (A Busca por Faixa - BETWEEN): O financeiro quer analisar os produtos de "médio valor".
-- Vá à tabela produtos. Mostre o Nome_Produto e o Preco_Unit. Filtre os produtos que custam entre 500 e 2000 reais (inclusive).
	SELECT Nome_Produto, Preco_Unit FROM produtos
    WHERE Preco_Unit BETWEEN 500 AND 2000
    ORDER BY Preco_Unit DESC;
	
-- Desafio 4 (A Exclusão Rápida - NOT IN): A diretoria quer expandir as lojas, então eles querem ver onde nós já estamos,
-- exceto no Sul e Sudeste. Vá à tabela locais. Traga todos os dados (*), mas filtre para excluir as regiões 'Sul' e 'Sudeste' usando o NOT IN.
	SELECT * FROM locais
    WHERE Região NOT IN ('Sul', 'Sudeste');

-- Desafio 5 (O Combo: Filtro + Matemática): Vamos simular um reajuste de preços devido à inflação,
-- mas apenas para produtos de uma faixa específica. Vá à tabela produtos. Mostre o Nome_Produto,
-- o Preco_Unit e crie uma nova coluna chamada Preco_Reajustado aplicando um aumento de 10% (multiplique por 1.10).
-- O filtro: Faça isso apenas para os produtos que custam entre 100 e 800 reais. (Não se preocupe com os números quebrados no resultado, vamos deixar o SGBD calcular cru!)
	SELECT Nome_Produto, Preco_Unit, Preco_Unit * 1.10 AS 'Preco_Reajustado' FROM produtos
    WHERE Preco_Unit BETWEEN 100 AND 800;
    
    

