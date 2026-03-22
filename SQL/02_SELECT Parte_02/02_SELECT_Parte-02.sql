# 02- DESAFIOS PRATICOS: (SELECT Parte 2 e AS)

/*Desafio 1 (O Embelezador Básico): A equipa de atendimento ao cliente não gosta dos nomes técnicos das colunas.
 Vá à tabela clientes e traga as colunas Nome, Sobrenome e Email. Mas,
 atenção: use o AS para renomear as colunas no resultado para Primeiro_Nome, Ultimo_Nome e Contacto_Email.*/
 SELECT Nome AS 'Primeiro_Nome', Sobrenome AS 'Ultimo_nome', Email AS 'Contacto_Email' FROM clientes;


/*Desafio 2 (A Primeira Calculadora): O departamento financeiro está a analisar o perfil dos nossos clientes.
 Na tabela clientes, temos a coluna Renda_Anual. Mostre o Nome do cliente,
 a Renda_Anual e crie uma terceira coluna calculando a renda mensal (ou seja, divida a renda anual por 12). Chame essa nova coluna de Renda_Mensal.*/
 SELECT Nome, Renda_Anual, Renda_Anual / 12 AS Renda_Mensal  FROM clientes;
 
 
/*Desafio 3 (Análise de Lucro): O gerente de compras quer saber quanto ganhamos em cada produto.
 Vá à tabela produtos. Mostre o Nome_Produto, o Preco_Unitario e o Custo_Unitario.
 Crie uma quarta coluna calculando o lucro absoluto de cada item (que é o Preço menos o Custo). Dê a essa nova coluna o nome de Lucro_Por_Unidade.*/
 SELECT Nome_Produto, Preco_Unit, Custo_Unit, Preco_Unit - Custo_Unit AS Lucro_Por_Unidade FROM produtos;

/*Desafio 4 (Auditoria de Pedidos): Vamos conferir se as contas dos pedidos estão corretas.
 Na tabela pedidos, mostre o ID_Pedido, a Qtd_Vendida e calcule o lucro total daquele pedido específico (que será a Receita_Venda menos o Custo_Venda).
 Renomeie esta coluna calculada para Lucro_Total_Deste_Pedido.*/
 SELECT ID_Pedido, Qtd_Vendida, Receita_Venda - Custo_Venda AS Lucro_Total_Deste_Pedido FROM pedidos;
 

/*Desafio 5 (Simulador de Promoção - Nível Chefe): A equipa de marketing vai fazer uma campanha da "Black Friday" com 10% de desconto em todos os produtos!
Vá à tabela produtos. Mostre a Marca (renomeada para Fabricante), o Nome_Produto (renomeado para Produto),
 o Preco_Unitario (renomeado para Preco_Original) e crie uma coluna calculando o novo preço com 10% de desconto. Chame essa nova coluna de Preco_Promocional.*/
 SELECT Marca_Produto AS Fabricante, Nome_Produto AS Produto, Preco_Unit AS Preco_original, Preco_Unit - 10/100  AS Preco_Promocional FROM produtos;
 
 