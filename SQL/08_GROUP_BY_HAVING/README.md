# 📂 Revisão 08: Agrupamentos e a Regra de Ouro (GROUP BY e HAVING)

Este diretório contém a etapa final dos fundamentos de SQL, focada na compressão de dados e na ordem de execução de filtros complexos, baseada no curso SQL Impressionador (Hashtag Treinamentos).

## 🧠 O que eu aprendi neste tópico
* **O Agrupador `GROUP BY`**: Como condensar milhares de linhas de informações em categorias únicas, permitindo a aplicação de funções matemáticas (soma, média, contagem) por grupos específicos (ex: faturamento *por* loja).
* **A Diferença Crucial: `WHERE` vs `HAVING`**: 
  * O `WHERE` atua como um **pré-filtro**: ele elimina as linhas indesejadas da tabela *antes* da matemática e do agrupamento acontecerem.
  * O `HAVING` atua como um **pós-filtro**: ele avalia o resultado *depois* que a matemática já foi feita (ex: "mostre apenas os grupos cuja soma final foi maior que X").
* **A Regra de Ouro (Ordem de Execução)**: Domínio completo da estrutura sintática obrigatória: `SELECT` -> `FROM` -> `WHERE` -> `GROUP BY` -> `HAVING` -> `ORDER BY`.

