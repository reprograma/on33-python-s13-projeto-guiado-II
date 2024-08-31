# Projeto Guiado II

#### Análise dos impostos arrecadados por estado.

------

**Introdução:** Contém os dados de arrecadação de impostos mensal por Unidade da Federação, contendo receitas administradas e não administradas pela RFB.

Data: 2000-2024

Fonte: Base dos Dados

------

#### Tratamento dos dados:

1.  Importar bibliotecas

2. Conectar com o arquivo csv

3. ETL: Extrair, transformar e carregar os dados

   ------

   #### Primeira análise: 

   1. **Cálculo da Arrecadação Total por Estado:**

      - O código soma os valores de vários tipos de impostos para calcular a arrecadação total por estado.
      - A soma considera uma série de impostos, incluindo imposto de importação, imposto de exportação, IPI sobre fumo, bebidas, automóveis, e outros.

   2. **Identificação dos Estados com Maior e Menor Arrecadação:**

      Após calcular a arrecadação total para cada estado, o código identifica:

      - O estado que mais arrecadou no período.
      - O estado que menos arrecadou no período.

      Os resultados são exibidos em termos de valores monetários.

      Além da análise textual dos estados que mais e menos arrecadaram, o código também gera um gráfico de barras que visualiza a arrecadação total de cada estado brasileiro no período de 2000 a 2024.

      ------

      #### **Segunda análise:** 

      1- **Análise da Arrecadação Total por Ano**

      Além de analisar a arrecadação total por estado, este projeto também inclui uma análise temporal que identifica o ano com a maior arrecadação e visualiza a arrecadação total ao longo dos anos de 2000 a 2024.

      2- **Visualização da arrecadação total por Ano**

      O código também gera um gráfico de linhas que mostra a evolução da arrecadação total ao longo dos anos

      ------

      #### Terceira análise: 

      1- **Análise da Balança Comercial dos Estados Brasileiros**

      Este trecho de código realiza uma análise da balança comercial dos estados brasileiros ao longo dos anos, calculando a diferença entre os valores de importação e exportação de cada estado. Os dados são armazenados em um banco de dados SQLite e os resultados são exportados para uma nova tabela para facilitar consultas e análises futuras.

      2- **Cálculo e Visualização da Balança Comercial Anual**

      O segundo trecho de código realiza uma análise da balança comercial do Brasil como um todo ao longo dos anos. A balança comercial é calculada como a diferença entre os valores de exportação e importação em todos os estados, agregada por ano.

      ------

      #### Quarta análise: 

      1- **Análise de Arrecadação por Tipo de Imposto**

      Este trecho de código realiza uma análise detalhada dos diferentes tipos de impostos arrecadados no Brasil, identificando qual imposto gerou a maior arrecadação total ao longo do período analisado.

      ------

      #### Teste de hipótese: 

      \-H0: A pandemia de COVID-19 não teve impacto significativo na arrecadação de impostos entre 2020 e 2021.

      \-H1: A pandemia de COVID-19 teve um impacto significativo na arrecadação de impostos entre 2020 e 2021.

      Este trecho de código realiza um teste de hipótese para investigar se a pandemia de COVID-19 teve um impacto significativo na arrecadação de impostos no Brasil. A análise compara a arrecadação média de impostos antes e durante a pandemia (2018-2021).

      ------

      #### Quinta análise: 

      1- **Visualização: Comparação da Arrecadação de Impostos Pré-Pandemia vs Durante a Pandemia**

      Este trecho de código cria uma visualização em gráfico de barras para comparar a média de arrecadação de impostos no Brasil antes da pandemia de COVID-19 (2018-2019) e durante a pandemia (2020-2021).