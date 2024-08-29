
# Análise do Relatório Mundial da Felicidade 

Este repositório tem várias rotinas Python para analisar os dados do Relatório Mundial da Felicidade. Aqui, você vai encontrar funções para categorizar, calcular estatísticas, fazer testes de hipóteses e visualizar dados sobre felicidade, generosidade, apoio social e outros indicadores socioeconômicos.

## Requisitos
- Python

## Bibliotecas usadas
  - pandas
  - matplotlib
  - seaborn
  - scipy
  - sqlite3 (já vem com o Python)

## Funcionalidades

### Código 1: Classificação e Visualização da Felicidade

1. **Classificação da Felicidade**: Categoriza países em diferentes níveis de felicidade com base na média.
2. **Cálculo da Média**: Calcula a média da escala de felicidade para cada país.
3. **Contagem das Categorias**: Conta quantos países estão em cada categoria de felicidade.
4. **Visualização**: Plota um gráfico de pizza para mostrar a distribuição dessas categorias entre os países.

### Código 2: Comparação dos Países Mais e Menos Felizes

1. **Cálculo da Média**: Calcula a média da escala de felicidade para cada país ao longo dos anos.
2. **Seleção dos Países**: Seleciona os 3 países com maior e menor média de felicidade.
3. **Visualização**: Plota um gráfico de barras comparando esses países.

### Código 3: Comparação Específica com Brasil

1. **Seleção de Países**: Identifica o país com maior e menor média de felicidade, incluindo o Brasil na análise.
2. **Visualização**: Plota um gráfico de barras destacando o país mais feliz, o Brasil, e o país menos feliz.

### Código 4: Análise da Felicidade no Brasil ao longo do tempo

1. **Filtragem de Dados**: Filtra os dados do Brasil.
2. **Visualização**: Plota a variação da escala de felicidade do Brasil ao longo dos anos.

### Código 5: Teste T para Afeto Positivo e Generosidade

1. **Mediana de Afeto Positivo**: Calcula a mediana do afeto positivo.
2. **Divisão de Grupos**: Divide os países em grupos com base na mediana de afeto positivo.
3. **Teste T**: Faz um teste t para comparar a generosidade entre os dois grupos.
4. **Visualização**: Plota gráficos de distribuição da generosidade para cada grupo.
5. **Interpretação**: Avalia a significância estatística da diferença na generosidade.

### Código 6: Teste T para Liberdade de Decisão e Apoio Social

1. **Mediana de Liberdade**: Calcula a mediana da liberdade para tomar decisões na vida.
2. **Divisão de Grupos**: Divide os países com base na mediana de liberdade.
3. **Teste T**: Compara o apoio social entre os dois grupos usando um teste t.
4. **Visualização**: Plota gráficos de distribuição do apoio social para cada grupo.
5. **Interpretação**: Avalia se há uma diferença estatisticamente significativa no apoio social.

### Código 7: Consultas SQL e Manipulação de Dados

1. **Conexão com SQLite**: Cria uma conexão com um banco de dados SQLite em memória.
2. **Escrita de Dados**: Escreve o DataFrame `df` em uma tabela SQL.
3. **Consulta SQL**: Executa uma consulta que conta o número de países distintos participantes do relatório por ano.
4. **Agrupamento e Ordenação**: Agrupa e ordena os resultados por ano.
5. **Fechamento da Conexão**: Fecha a conexão com o banco de dados após a consulta.

## Como Executar

1. Certifique-se de que todas as bibliotecas necessárias estão instaladas.
2. Execute cada script na ordem apropriada, conforme descrito nas funcionalidades.
3. Os resultados serão exibidos através de gráficos e saídas no console.