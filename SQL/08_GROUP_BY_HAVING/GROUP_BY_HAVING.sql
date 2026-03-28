-- 08 - ATIVIDADE PRÁTICA: (GROUP BY, HAVING)
USE base;

-- Desafio 1 (O Agrupamento Simples): O RH quer saber o perfil educacional dos nossos clientes.
--  Vá à tabela clientes. Mostre a coluna Escolaridade e faça uma contagem (COUNT(*)) de clientes. Agrupe pela escolaridade para sabermos quantos clientes temos em cada nível.
	SELECT Escolaridade, COUNT(*) AS 'Formacoes' FROM clientes
    GROUP BY (Escolaridade);


-- Desafio 2 (A Matemática Agrupada): A diretoria quer saber o faturamento bruto de cada unidade.
--  Vá à tabela pedidos. Mostre o ID_Loja e calcule a soma da Receita_Venda. Agrupe por ID_Loja. (Lembre-se de dar um Alias bonito para a soma, como 'Faturamento_Total').
	SELECT ID_loja, SUM(Receita_Venda) AS 'Faturamento_Total' FROM pedidos
    GROUP BY (ID_Loja);

-- Desafio 3 (Filtro ANTES do Agrupamento - WHERE): A área de produtos quer a média de preço dos produtos,
--  agrupada por Marca_Produto. Porém, a diretoria ordenou: só analisem os produtos que custam menos de 2000 reais.
-- Vá à tabela produtos. Filtre os produtos (Preco_Unit < 2000), depois mostre a marca, a média de preço e agrupe pela marca.
	SELECT Marca_Produto, AVG(Preco_Unit) AS 'Media_Preco' FROM produtos
    WHERE Preco_Unit < 2000
    GROUP BY (Marca_Produto);

-- Desafio 4 (Filtro DEPOIS do Agrupamento - HAVING): A equipe de vendas quer saber quais clientes compram em grande volume (Atacadistas).
--  Vá à tabela pedidos. Mostre o ID_Cliente e a soma da Qtd_Vendida de cada um. Agrupe pelo cliente.
-- O truque: use o HAVING no final para mostrar apenas os clientes cuja soma de produtos comprados seja maior que 50.
	SELECT ID_Cliente, SUM(Qtd_Vendida) AS 'Qtd Vendida'FROM pedidos
    GROUP BY (ID_Cliente)
    HAVING SUM(Qtd_Vendida) > 50
    ORDER BY ID_Cliente;
    

-- Desafio 5 (O TCC Final - Lojas Premium Ajustado)
-- Objetivo: A diretoria quer premiar as lojas com o melhor desempenho financeiro absoluto.
-- Vá à tabela pedidos. Calcule a soma da Receita_Venda por ID_Loja e agrupe pelas lojas.
-- Regra 1 (HAVING): No relatório final, mostre apenas as lojas cujo faturamento total (a soma que você calculou) ultrapasse R$ 10.000.
-- Regra 2 (ORDER BY): Ordene os resultados do maior faturamento para o menor, para que a loja campeã apareça no topo da lista.
	SELECT ID_Loja, SUM(Receita_Venda) AS 'Faturamento' FROM pedidos
    GROUP BY ID_Loja
    HAVING SUM(Receita_Venda) > 10000
    ORDER BY SUM(Receita_Venda) DESC;
