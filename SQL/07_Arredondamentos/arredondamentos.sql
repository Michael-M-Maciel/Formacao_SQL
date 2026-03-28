-- 07 - ATIVIDADE PRÁTICA (Dominando os Arredondamentos) ROUND, o CEILING e o FLOOR

--  Desafio 1 (O Padrão Financeiro - ROUND com 2 casas): O financeiro quer aplicar um desconto de 12% em todos os itens.
--  Vá à tabela produtos. Mostre o Nome_Produto, o Preco_Unit e crie uma nova coluna multiplicando o preço por 0.88 (que é o preço com desconto).
--  A regra: Use o ROUND() para garantir que esse novo preço tenha exatamente 2 casas decimais, como todo valor monetário deve ter. Chame a coluna de Preco_Com_Desconto.
	SELECT Nome_Produto, Preco_Unit, ROUND(Preco_Unit * 0.88, 2) AS Preco_Com_Desconto FROM produtos;
    

--  Desafio 2 (Garantindo a Margem - CEILING): A logística vai embutir uma taxa de frete de 5% no preço dos produtos (multiplique o preço por 1.05).
--  Mas a diretoria foi clara: para a empresa nunca sair no prejuízo,
--  esse valor final deve ser sempre arredondado para cima, para o próximo número inteiro, mesmo que os centavos sejam baixos.
--  Mostre o Nome_Produto e crie a coluna Preco_Com_Frete usando a função CEILING().
	SELECT  Nome_Produto , CEILING(Preco_unit * 1.05) AS 'Preco_Com_Frete' FROM produtos;
    

--  Desafio 3 (Clube de Pontos - FLOOR): O marketing lançou o "Tech Points"! O cliente ganha pontos baseados no valor da compra.
--  Vá à tabela pedidos. Mostre o ID_Pedido, a Receita_Venda e crie uma coluna dividindo a receita por 50. A regra: Como não existe "meio ponto" no sistema,
--  você deve sempre arredondar para baixo, cortando qualquer decimal. Crie essa coluna chamada Pontos_Ganhos usando a função FLOOR().
	SELECT ID_Pedido, Receita_Venda, FLOOR(Receita_venda / 50) AS 'Pontos_Ganhos' FROM pedidos;


--  Desafio 4 (O Arredondamento Limpo - ROUND com 0 casas): Vamos dar um aumento devido à inflação de 15% em todos os produtos (Preco_Unit * 1.15).
--  Para facilitar o troco em dinheiro vivo nas lojas físicas,
--  o gerente quer que o sistema faça o arredondamento matemático tradicional para o número inteiro mais próximo (zero casas decimais).
--  Mostre o Nome_Produto e crie a coluna Preco_Loja_Fisica usando o ROUND().
	SELECT Nome_Produto, ROUND(Preco_Unit * 1.15, 0) AS 'Preco_Loja_Fisica' FROM produtos;
    

--  esafio Bónus (O Arredondamento Fiscal): O governo acaba de implementar uma nova taxa de 15% sobre os equipamentos eletrónicos.
--  A direção financeira quer ver como ficarão os novos preços, mas fez uma exigência: para facilitar as transferências e pagamentos,
--  eles não querem cêntimos no relatório final, apenas valores inteiros.

-- Vá à tabela produtos. O seu comando deve mostrar:
-- O Nome_Produto.
-- O Preco_Unit (preço original).
-- Uma nova coluna chamada Preco_Com_Imposto.

-- A Matemática: Para calcular esta terceira coluna, você deve multiplicar o preço original por 1.15 (adicionando os 15%).
--  O grande truque é: coloque toda esta operação matemática dentro da função ROUND(), configurando-a para devolver zero (0) casas decimais.

SELECT Nome_Produto, Preco_Unit, ROUND (Preco_Unit * 1.15) AS 'Preco_Com_Imposto' FROM produtos;