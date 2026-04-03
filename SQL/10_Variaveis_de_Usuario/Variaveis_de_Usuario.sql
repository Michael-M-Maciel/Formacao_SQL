-- Atividade Prática: 10 - Variáveis de Usuário


-- 1. Desafio (A Meta Dinâmica):
-- Crie uma variável chamada @meta e atribua o valor de 4000. Em seguida
-- faça um SELECT na tabela pedidos que mostre todas as colunas onde a Receita_Venda seja maior que a nossa @meta.
	SET @meta = 4000;
    
    SELECT * FROM pedidos
    WHERE Receita_Venda > @meta;
    
    
-- 2. Desafio (O Cliente VIP):
-- Imagine que você precisa analisar um cliente específico várias vezes.
-- Crie uma variável chamada @cliente_id com o valor 15. Use essa variável para filtrar na tabela pedidos todas as compras realizadas por esse cliente.    
    SET @cliente_id =15;
    SELECT * FROM pedidos
    WHERE ID_Cliente = @cliente_id;


-- 3. Desafio (Simulação Financeira):
-- Crie uma variável chamada @imposto com o valor 0.1 (representando 10%). Faça um SELECT que mostre o ID_Pedido
-- a Receita_Venda original e uma coluna calculada chamada Valor_Com_Imposto, que é a receita multiplicada pela variável.
	SET @imposto = 0.10;
    
    SELECT ID_Pedido, Receita_Venda,ROUND(Receita_Venda + (Receita_Venda * @imposto),2) AS 'Valor_Com_Imposto' FROM pedidos;
    
 
-- 4. Desafio (Filtro de Marca Estratégico):
-- Crie uma variável chamada @marca_alvo com o valor 'Samsung'. Use essa variável em um SELECT na tabela produtos para filtrar todos os itens que pertencem a essa marca.
	SET @marca_alvo = 'Samsung';
    
    SELECT * FROM produtos
    WHERE Marca_Produto = @marca_alvo;
    
    
-- 5. Desafio (Reajuste de Preços):
-- Para uma simulação de inflação, crie uma variável @fator_reajuste com o valor 1.10 (10% de aumento).
-- Selecione o Nome_Produto, o Preco_Unit atual e uma coluna chamada Preco_Novo aplicando o fator de reajuste.
	SET @fator_reajuste = 1.10;
    SELECT Nome_Produto, Preco_Unit, ROUND(Preco_Unit * @fator_reajuste) AS 'Preco_Novo aplicando' FROM produtos;
    
  
	
