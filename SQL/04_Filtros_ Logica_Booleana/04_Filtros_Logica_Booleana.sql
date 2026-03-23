/* 04 - ATIVIDADE PRÁTICA: Filtros e Lógica Booleana*/

/*Desafio 1 (O Filtro Básico - WHERE): O gerente de compras quer focar nos produtos mais acessíveis.
 Vá à tabela produtos e traga o Nome_Produto e o Preco_Unit, mas filtre apenas os produtos que custam menos de 1000 reais.*/
 SELECT Nome_Produto, Preco_Unit FROM produtos
 WHERE Preco_Unit < 1000;

/*Desafio 2 (O Segurança Rigoroso - AND): A equipe de marketing vai fazer uma campanha focada em mulheres solteiras.
 Vá à tabela clientes. Traga o Nome, Email, Sexo e Estado_Civil.
 O filtro: Apenas clientes onde o Sexo seja igual a 'F' E o Estado_Civil seja igual a 'S'.*/
 SELECT Nome, Email, Sexo, Estado_Civil FROM clientes
 WHERE Sexo = 'F' AND Estado_Civil ='S';
 
/*Desafio 3 (A Regra Flexível - OR): A diretoria quer analisar o nosso alcance no sul e sudeste. Vá à tabela locais.
 Traga a Cidade, o Estado e a Região. O filtro: Traga os locais onde a região seja igual a 'Sudeste' OU igual a 'Sul'.*/
 SELECT Cidade, Estado, Região FROM locais
 WHERE Região = 'Sudeste' OR Região = 'Sul';

/*Desafio 4 (A Busca pelos Ausentes - IS NULL): O RH está fazendo uma auditoria na qualidade dos nossos cadastros.
 Eles desconfiam que alguns clientes foram salvos sem o telefone.
 Vá à tabela clientes e escreva um comando para buscar todos os dados (*) apenas dos clientes cujo campo Telefone IS NULL (seja nulo).*/
SELECT * FROM clientes
WHERE Telefone IS NULL;

/*Desafio 5 (A Pegadinha do Vazio e Nulo - Combo): Às vezes, um erro no site salva o telefone como um texto vazio ('') em vez de nulo.
 O RH pediu para você pegar todos os cadastros problemáticos de uma vez.
Vá à tabela clientes e traga todos os dados (*). O filtro: Traga os clientes cujo Telefone é igual a vazio ('') OU cujo Telefone IS NULL.*/
SELECT * FROM clientes
WHERE Telefone = '' OR Telefone IS NULL;




