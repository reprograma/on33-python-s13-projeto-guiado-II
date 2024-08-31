

---

# Análise de Dados de Animes

Este projeto realiza uma análise detalhada de um conjunto de dados sobre animes. Ele inclui a manipulação de dados, tratamento de valores nulos, visualização de dados e cálculos de métricas estatísticas.

## Pré-requisitos

Antes de executar o código, certifique-se de ter as seguintes bibliotecas instaladas em seu ambiente Python:

- pandas
- matplotlib
- seaborn
- sqlite3 (incluso na biblioteca padrão do Python)
- wordcloud

Você pode instalar as bibliotecas necessárias usando o seguinte comando:

```bash
pip install pandas matplotlib seaborn wordcloud
```

## Estrutura do Projeto

1. **Importação das bibliotecas**: As bibliotecas necessárias para análise de dados e visualização são importadas no início do código.
   
2. **Leitura do arquivo CSV**: O arquivo `anime.csv` é carregado em um DataFrame utilizando a biblioteca pandas.
   
3. **Exploração inicial dos dados**: São realizadas operações para visualizar as primeiras linhas, o tamanho do DataFrame, as colunas disponíveis, e a contagem de valores nulos.

4. **Limpeza e transformação de dados**:
   - Criação de um backup dos dados originais.
   - Remoção de duplicatas e tratamento de valores nulos.
   - Modificação de colunas específicas, como conversão de tipos de dados e substituição de valores indesejados.

5. **Renomeação de colunas**: As colunas são renomeadas para nomes mais amigáveis e em português.
   
6. **Análises estatísticas**: Inclui descrições estatísticas e cálculos de métricas como média, máximo, e soma de valores para colunas específicas.
   
7. **Visualização de dados**: Vários tipos de gráficos são gerados para melhor compreensão dos dados, incluindo gráficos de barras, gráficos de dispersão e nuvens de palavras.

8. **Exportação dos dados**: O DataFrame tratado é salvo em um novo arquivo CSV chamado `Anime.Tratado.csv`.

## Executando o Código

1. Certifique-se de ter o arquivo `anime.csv` no mesmo diretório onde o código será executado.

2. Execute o script Python em um ambiente que suporte bibliotecas como pandas, matplotlib e seaborn.

3. **Visualizar Dados**: Use comandos como `df.head()` e `df.shape` para explorar as primeiras linhas e a forma do DataFrame.

4. **Limpeza e Transformação**: Execute as etapas de remoção de duplicatas e tratamento de valores nulos para preparar os dados para análise.

5. **Análise Estatística e Visualizações**: Execute as células que geram gráficos e cálculos estatísticos para explorar insights sobre os dados de animes.

6. **Salvar Resultados**: Após a manipulação e análise, os resultados podem ser exportados para um arquivo CSV para referência futura.

## Notas

- Execute as linhas de código que envolvem substituição de valores e conversão de tipos de dados uma de cada vez para evitar erros de execução.
- Certifique-se de fechar a conexão com o banco de dados SQLite após usar comandos SQL.

- você pode encontrar esse codigo no repositório do projeto guiado II no meu github: https://github.com/gabrielabezlima
- Esse código gerou uma apresentação divertida que você pode encontrar nesse link: https://heyzine.com/flip-book/2ac8bf6afc.html

## Conclusão

Este projeto oferece uma base sólida para a análise de dados de animes, incluindo limpeza de dados, análise estatística e visualização. Pode ser adaptado para outros conjuntos de dados com estrutura semelhante.

---

