-- Atividade Prática 11-Conversão de Dados (Função CAST) SIGNED, DECIMAL, DATE


-- 1. Desafio (Transformando Texto em Decimal):
-- Muitas vezes recebemos preços como texto. Use o CAST('150.99' AS DECIMAL(10,2)) em um SELECT simples para mostrar como esse texto se transforma em um número real.
	SELECT CAST('150.99' AS DECIMAL(10, 2)) AS 'Decimal';


-- 2. Desafio (Data em Texto para Data Real):
-- Imagine que você recebeu a data '2026-12-25' como texto. Use o CAST para convertê-la para o tipo DATE.
	SELECT 	CAST('2026-12-25' AS DATE) AS 'Data';


-- 3. Desafio (Inteiro para Texto):
-- Pegue o número 2026 e converta-o para o tipo CHAR. Isso é útil quando queremos juntar (concatenar) números com palavras.
	SELECT CAST(2026 AS CHAR) AS 'Character';


-- 4. Desafio (Calculando com CAST):
-- Tente somar dois textos: '10' e '20'. Para o MySQL entender que são números, use o CAST em ambos antes de fazer a soma (+).
	SELECT CAST('10' AS SIGNED) + CAST('20' AS SIGNED) AS 'Soma_Inteiros';
    
    
-- 5. Desafio (Limpando a Receita):
-- Vá à tabela pedidos. Selecione a Receita_Venda, mas use o CAST para mostrá-la apenas como um número inteiro (SIGNED), removendo as casas decimais.
	SELECT CAST(Receita_Venda AS SIGNED ) AS 'Receita_Venda_Int'FROM  pedidos;
   
