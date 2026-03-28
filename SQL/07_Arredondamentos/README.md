# 📂 Revisão 07: Funções de Arredondamento (Matemática Financeira)

Este diretório contém os exercícios práticos focados no tratamento e formatação matemática de dados numéricos no MySQL, essenciais para relatórios financeiros e regras de negócios.

## 🧠 O que eu aprendi neste tópico
* **O Padrão `ROUND`**: Como realizar o arredondamento matemático tradicional, podendo especificar exatamente a quantidade de casas decimais desejadas (ex: `2` para valores monetários, ou `0` para números inteiros).
* **Forçando a Margem com `CEILING`**: A função "teto", que ignora a regra matemática tradicional e força qualquer valor decimal a ser arredondado para o próximo número inteiro superior (ideal para cálculo de impostos ou fretes onde a empresa não pode perder margem).
* **Cortando Decimais com `FLOOR`**: A função "chão", que simplesmente descarta os centavos e arredonda sempre para o número inteiro inferior (muito utilizado em sistemas de pontuação ou fidelidade onde não existem frações).

