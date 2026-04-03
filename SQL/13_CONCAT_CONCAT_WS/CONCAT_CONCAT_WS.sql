-- ATIVIDADE PRÁTICA 13 - CONCAT e CONCAT_WS

-- CONCAT: Junta tudo.
-- CONCAT_WS: Junta tudo usando um separador (WS = *With Separator*).

-- 1. Desafio (Etiqueta de Produto):
-- Vá à tabela produtos. Use a função CONCAT para criar uma nova coluna chamada Descricao_Completa. 
-- Ela deve juntar a Marca_Produto, um hífen com espaços " - " e o Nome_Produto.
-- (Exemplo de saída: "Samsung - Galaxy S21")
	SELECT CONCAT(Marca_Produto, ' - ', Nome_Produto  ) AS 'Descricao_Completa' FROM produtos;
    

-- 2. Desafio (Frase de Auditoria):
-- Na tabela clientes, use o CONCAT para gerar uma frase informativa para cada registro. O formato deve ser: "O cliente [Nome] possui o e-mail [Email]".
-- Dê o nome da coluna de Informativo_Contato.
	SELECT CONCAT('O cliente ', Nome, ', possui o e-mail: ', Email) AS 'Informativo_Contato'FROM clientes;
    

-- 3. Desafio (Perfil do Cliente com Separador):
-- Utilize o CONCAT_WS com o separador ", " (vírgula e espaço) para criar uma coluna chamada Dados_Cadastrais na tabela clientes.
-- Você deve juntar as colunas Nome, Escolaridade.
	SELECT CONCAT_WS(', ',Nome, Escolaridade, CPF) AS 'Dados_Cadastrais' FROM clientes;
    SELECT * FROM clientes;
    

-- 4. Desafio (Código de Rastreio de Vendas):
-- Na tabela pedidos, crie um código de identificação personalizado para cada venda usando CONCAT. O formato deve ser: "VENDA-[ID_Pedido]-LOJA-[ID_Loja]".
-- Chame essa coluna de Codigo_Rastreio.
	SELECT CONCAT('VENDA - ',ID_Pedido,' - LOJA - ',ID_Loja) AS 'Codigo_Rastreio' FROM pedidos;
    

-- 5. Desafio (Saudação de Boas-Vindas):
-- Na tabela clientes, use o CONCAT_WS com um espaço " " como separador para juntar uma saudação fixa (ex: "Olá,") ao Nome do cliente. Dê o nome da coluna de Boas_Vindas.
	SELECT CONCAT_WS(' ','Olá,', Nome) AS 'Boas_Vindas' FROM clientes;
