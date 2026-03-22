# 03 - ATIVIDADE PRÁTICA: Oredenação e Limites

/*Desafio 1 (O Organizador): O gerente quer uma lista de produtos focada nos preços. Vá à tabela produtos.
 Mostre o Nome_Produto e o Preco_Unit. O truque: Organize essa lista do produto mais caro para o mais barato. (Dica: Use ORDER BY com a ordem decrescente).*/
 SELECT Nome_Produto, Preco_Unit FROM produtos
 ORDER BY Preco_Unit DESC ;

/*Desafio 2 (O Eliminador de Repetições): A equipe de logística quer saber em quais estados nós temos galpões ou lojas,
 mas não quer ler uma lista gigante cheia de estados repetidos. Vá à tabela locais e traga a coluna Estado, garantindo que cada estado apareça apenas uma vez na lista.*/
SELECT DISTINCT Estado FROM locais;

/*Desafio 3 (O Top 5): O setor de vendas vai fazer um post no Instagram com os 5 produtos mais baratos da loja para atrair clientes.
 Vá à tabela produtos. Mostre o Nome_Produto e o Preco_Unit. Ordene do mais barato para o mais caro e mostre apenas as 5 primeiras linhas.*/
 SELECT Nome_Produto, Preco_Unit FROM produtos
 ORDER BY Preco_Unit
 LIMIT  5;

/*Desafio 4 (A Lógica da Paginação): O nosso site de vendas mostra 5 produtos por página. Um cliente acabou de clicar para ir para a "Página 2".
Vá à tabela produtos. Mostre o ID_Produto e o Nome_Produto. Ordene pelo ID_Produto de forma crescente.
 Agora, a regra de ouro: escreva o comando para pular os 5 primeiros produtos (que ficaram na página 1) e mostrar apenas os próximos 5 produtos (que formam a página 2).*/
 SELECT ID_Produto, Nome_Produto FROM produtos
 ORDER BY ID_Produto
 LIMIT 5 OFFSET 5; # LINHA 6 , Mostra mais 5 linhas de 6 ate 10.

/*Desafio 5 (O Combo Completo): Precisamos criar aquele filtro de "Marcas" na barra lateral do nosso site (Apple, Dell, Sony, etc).
 Vá à tabela produtos. Mostre a coluna Marca_Produto garantindo que não haja repetições (apenas nomes únicos).
 Além disso, deixe essa lista organizada em ordem alfabética (de A a Z) para facilitar a leitura do cliente.*/
 SELECT DISTINCT Marca_Produto FROM produtos
 ORDER BY Marca_Produto;
 

