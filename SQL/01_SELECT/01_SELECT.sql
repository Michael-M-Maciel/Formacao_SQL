# criando banco de dados
CREATE DATABASE IF NOT EXISTS base; 

# opção para usar o banco de dados.
use base;

# REVISÃO 01.
# Tópico 1: O Comando SELECT (Parte 1)

/* Desafio 1 (O Básico do Básico): O gerente pediu para você mostrar tudo o que está cadastrado na tabela de categorias. Como você faz essa pesquisa?*/
SELECT * FROM categorias;

/*Desafio 2 (Listando o Estoque): Agora, o pessoal do estoque quer ver uma lista completa de todos os produtos da loja.
Traga todas as informações (todas as colunas) da tabela de produtos. */
SELECT * FROM produtos;

/* Desafio 3 (Focando no que importa): A equipe de Marketing vai enviar um e-mail para os clientes. Eles não querem ver a tabela inteira cheia de números,
 eles pediram para você trazer apenas as colunas Nome, Sobrenome e Email da tabela de clientes. */
 SELECT Nome, Sobrenome, Email FROM clientes;

/* Desafio 4 (Lista Telefônica das Lojas): A diretoria precisa de um relatório simples com os contatos das nossas lojas físicas.
 Escreva um comando que mostre apenas as colunas Loja (que é o nome da cidade), Gerente e Telefone da tabela de lojas. */
 SELECT Loja, Gerente, Telefone FROM lojas;

/* Desafio 5 (Visão Financeira Inicial): O setor financeiro está analisando as vendas
. Traga apenas as colunas ID_Pedido, Data_Venda e Receita_Venda da nossa tabela gigante de pedidos.*/
SELECT ID_Pedido, Data_Venda, Receita_venda FROM pedidos;
