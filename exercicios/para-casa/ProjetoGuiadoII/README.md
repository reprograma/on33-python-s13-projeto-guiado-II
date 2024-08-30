# Projeto Guiado II🏠 

# Introdução
O projeto realiza uma análise exploratória de um conjunto de dados que detalha os hábitos de leitura de diferentes indivíduos. 
 O objetivo principal é identificar padrões e tendências relacionadas à quantidade de livros lidos e a idade, contextualizando também outras características como sexo, educação e raça.

 Linguagem utilizada: Python
    Bibliotecas Utilizadas:
        pandas: Para manipulação e análise de dados.
        numpy: Para operações numéricas.
        matplotlib: Para visualização de dados através de gráficos.
        seaborn: Para criação de gráficos estatísticos.

***Turma:*** Reprograma On33

**Orientação:** Profa. Stefany Gracy

**Autoras:** Hitawana Araújo e Nathália Pereira

**Dataset utilizado:** Global Mental Health Disorders

**Fonte de dados:** [Kaggle](https://www.kaggle.com/datasets/thedevastator/global-mental-health-disorders)

**Escolha dos dados:** Amantes de leitura, as autoras escolheram o dataset com a curiosidade a respeito dos hábitos de leitura de uma determinada população. Os dados para análise referem-se a informações amostrais de pesquisa com estadunidenses.

O dataset utilizado foi escolhido por conter informações de Gênero, Raça, Idade e Educação, possibilitando uma análise mais completa do perfil dos leitores e relacões sociais de prevalência de determinados grupos. 



# Funcionalidades Principais:

    Limpeza e preparação de dados.
    Criação de gráficos para visualização de tendências e padrões.
    Análise de distribuição por características demográficas.

# Arquivos

Esse projeto inclui:

- *reading_habits.csv:* dataset utilizado para as análises
- *ETL_ProjetoGuiado.ipynb*: relatório contendo códigos e gráficos sobre dados utilizados para subsidiar a análise.
- *SQL_ProjetoGuiado.ipynb*: código de criação e edição em sql para consultas que validem o teste de hipótese.
- *README.md*

# Funções principais:

- age_range: Comparar dois grupos específicos de leitores (jovens e idosos) em relação à leitura de e-books.
- gender_reader: feita para calcular a média de livros lidos por diferentes gêneros e visualizá-la em um gráfico de barras horizontal.
- biggest_readers: Identifica aqueles que leram mais livros nos últimos 12 meses e examina a distribuição de suas características como educação.
- ttest_ind é usada para calcular a estatística t (estatistica_t) e o valor p (valor_p).



Consulta SQL:

- Contagem: Conta o número de leitores de e-books (coluna Ebook_readers) que responderam "Yes".
- Filtro por idade: Apenas os leitores com idade acima de 60 anos são incluídos.
- Execução e impressão: O resultado da consulta é carregado em um DataFrame Readers_60_age e exibido.