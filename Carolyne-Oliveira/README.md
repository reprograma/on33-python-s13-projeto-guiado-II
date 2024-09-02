# 🗳️👍🏻✅ Projeto Guiado II - Eleicoes SP 2024

## 📚 Descrição da Atividade

Exercicio da semana 13 para casa. Utilize o dataset proposto em aula ou selecione um de sua preferência no Kaggle. Faça uma introdução explicando os dados e o motivo da escolha do dataset. Explique o que chamou sua atenção nesses dados e por que você acredita que eles podem gerar bons insights. Quais aspectos relevantes você identificou?

## 📈 Introdução

As bases de dados escolhidas foram obtidas no site do Tribunal Superior Eleitoral (TSE) de São Paulo [TSE](https://dadosabertos.tse.jus.br/dataset/candidatos-2024), e são referentes às eleições de 2024 para os cargos de prefeito, vice-prefeito e vereador. A escolha desse dataset foi motivada pelo atual cenário político brasileiro, marcado por incertezas e debates sobre o futuro político e administrativo do estado de São Paulo. Analisar esses dados é crucial, pois as eleições municipais têm um impacto direto nas políticas públicas que afetam a vida dos cidadãos, e entender os padrões e tendências pode fornecer insights valiosos para prever possíveis desdobramentos e influências no cenário político local.

O que chamou a atenção nesses dados foi a riqueza de detalhes disponíveis, como informações sobre candidaturas, despesas de campanha, distribuição por gênero, idade, e partido. Esses aspectos são fundamentais para entender melhor o perfil dos candidatos, as estratégias eleitorais adotadas e como esses fatores podem influenciar os resultados eleitorais. Acredita-se que essa análise pode gerar bons insights, como identificar tendências de investimento em campanhas, padrões de participação feminina nas eleições, e a relação entre gasto de campanha e sucesso eleitoral.

## 📋 Passo a Passo

## 🟦 Instalação de Bibliotecas:

 ### - Bibliotecas Utilizadas:

            import pandas as pd
            import matplotlib.pyplot as plt
            from datetime import datetime
            import seaborn as sns
            import sqlite3
            from google.colab import files
            import numpy as np
            import plotly.express as px
            from scipy import stats

## 🟦 Escolha do Dataset:

 ### - Abrir arquivo csv
 ### - Substituir ";"
 ### - 'on_bad_lines' indica o que fazer em linhas com erros e 'skip' irá pular linhas que causam erros:
            
            candidato = pd.read_csv('/content/drive/MyDrive/REPROGRAMA/on33-python-s13-projeto-guiado-II/Projeto Guiado/consulta_cand_2024/consulta_cand_2024_SP.csv', encoding='ISO-8859-1', sep=';', on_bad_lines='skip')

 ### - Abrir arquivo csv
 ### - Substituir ";"
 ### - 'on_bad_lines' indica o que fazer em linhas com erros e 'skip' irá pular linhas que causam erros:

            complemento = pd.read_csv('/content/drive/MyDrive/REPROGRAMA/on33-python-s13-projeto-guiado-II/Projeto Guiado/consulta_cand_complementar_2024/consulta_cand_complementar_2024_SP.csv', encoding='ISO-8859-1', sep=';', on_bad_lines='skip')            

 ### - Verificar as colunas na base de dados:

            candidato.columns

 ### - verificar as 5 primeiras linhas da base de dados candidatos:

            candidato.head()

 ### - Verificar nulos na base candidato:

            candidato.isnull().sum()

 ### - Quantidade de linhas:

            candidato.shape

 ### - Informacao dos dados:

            candidato.info()    

 ### - Criar um novo DataFrame com as colunas selecionadas:
 ### - Lista das colunas que você deseja selecionar:

            colunas_selecionadas = [
            'SG_UF', 'SG_UE', 'NM_UE', 'CD_CARGO', 'DS_CARGO', 'SQ_CANDIDATO', 
            'NR_CANDIDATO', 'NM_CANDIDATO', 'NM_URNA_CANDIDATO', 'NM_SOCIAL_CANDIDATO', 
            'NR_PARTIDO', 'SG_PARTIDO', 'NM_PARTIDO', 'SG_UF_NASCIMENTO', 
            'DT_NASCIMENTO', 'CD_GENERO', 'DS_GENERO', 'CD_GRAU_INSTRUCAO', 
            'DS_GRAU_INSTRUCAO', 'CD_ESTADO_CIVIL', 'DS_ESTADO_CIVIL', 
            'CD_COR_RACA', 'DS_COR_RACA', 'CD_OCUPACAO', 'DS_OCUPACAO'
            ]

 ### - Selecionando as colunas do DataFrame 'candidatos':

            candidatos = candidato[colunas_selecionadas]

 ### - Exibir o DataFrame selecionado:

            print(candidatos)'

 ### - Salvar copia da base:

            candidato_backup = candidatos.copy()

 ### - Renomear a coluna duplicada no DataFrame 'candidatos' e 'complementos':

            candidatos = candidatos.rename(columns={'SQ_CANDIDATO': 'SQ_CANDIDATO_Candidato'})
            complementos = complementos.rename(columns={'SQ_CANDIDATO': 'SQ_CANDIDATO_Complemento'})

## 🟦 Consultas SQL:            

 ### - Conexão com SQLite em memória:

            conn = sqlite3.connect(':memory:')

 ### - Salvar os DataFrames como tabelas SQLite:

            candidatos.to_sql('candidato', conn, index=False)
            complementos.to_sql('complemento', conn, index=False)

 ### - Realizar o JOIN com as colunas renomeadas

            eleicao = pd.read_sql_query('SELECT * FROM candidato JOIN complemento ON candidato.SQ_CANDIDATO_Candidato = complemento.SQ_CANDIDATO_Complemento', conn)

 ### - Fechar a conexão:

            conn.close()

 ### - Exibir o resultado:

            print(eleicao)

 ### - Verificar nulos na base de dados complemento:

            eleicao.isnull().sum()

 ### - Salvar no csv:
        
            eleicao.to_csv('candidatosSP.csv', index=False)

 ### - Baixar arquivo csv:

            files.download('candidatosSP.csv'):

## 🟦 Visualizações Gráficas:

 ### - 1 Distribuição de Gênero: Analisar a proporção de candidatos por gênero.

  ### Configurações para gráficos

            sns.set(style="whitegrid")
            plt.figure(figsize=(8, 6))

 ### Distribuição de Gênero

            ax = sns.countplot(x='DS_GENERO', data=eleicao, palette='Set2', hue='DS_GENERO')
            plt.title('Distribuição de Gênero')
            plt.xlabel('Gênero')
            plt.ylabel('Número de Candidatos')

 ### Adicionar rótulos às barras

            for index, value in enumerate(df['DS_GENERO'].value_counts()):
                plt.text(index, value, str(value), ha='center', va='bottom')

 ### Mostrar o gráfico

            plt.show()

  # IMAGEM (gráfico de barras Distribuicao de genero)            

 ### - 2 Idade dos Candidatos: Distribuição de idade dos candidatos.

  ### Configurações para gráficos

            sns.set(style="whitegrid")
            plt.figure(figsize=(12, 6))

  ### Converter a coluna DT_NASCIMENTO para o formato de data

            eleicao['DT_NASCIMENTO'] = pd.to_datetime(eleicao['DT_NASCIMENTO'], format='%d/%m/%Y')

  ### Função para calcular a idade

            def calcular_idade(data_nascimento):
                hoje = datetime.today()
                idade = hoje.year - data_nascimento.year - ((hoje.month, hoje.day) < (data_nascimento.month, data_nascimento.day))
                return idade

  ### Aplicar a função para calcular a idade

            df['IDADE'] = eleicao['DT_NASCIMENTO'].apply(calcular_idade)

  ### Criar o gráfico de distribuição de idades - histograma

            sns.histplot(df['IDADE'], bins=30, kde=True, color='b')

            plt.title('Distribuição de Idades dos Candidatos')
            plt.xlabel('Idade')
            plt.ylabel('Número de Candidatos')

  ### Mostrar o gráfico
  
            plt.show()  

   # IMAGEM (gráfico de histograma idades)             

 ### - 3 Comparação por Escolaridade: Comparar os candidatos com diferentes níveis de escolaridade.

  ### Configurações para gráficos

            sns.set(style="whitegrid")
            plt.figure(figsize=(12, 8))

  ### Contar o número de candidatos por nível de escolaridade

            escolaridade_count = eleicao['DS_GRAU_INSTRUCAO'].value_counts()

  ### Criar o DataFrame para o gráfico

            df_escolaridade = escolaridade_count.reset_index()
            df_escolaridade.columns = ['Grau de Instrução', 'Número de Candidatos']

  ### Criar o gráfico de barras

            ax = sns.barplot(x='Número de Candidatos', y='Grau de Instrução', data=df_escolaridade, hue='Grau de Instrução', dodge=False, palette='viridis', legend=False)

            plt.title('Número de Candidatos por Nível de Escolaridade')
            plt.xlabel('Número de Candidatos')
            plt.ylabel('Grau de Instrução')

  ### Adicionar rótulos às barras

            for index, row in df_escolaridade.iterrows():
                ax.annotate(f"{row['Número de Candidatos']}", xy=(row['Número de Candidatos'], index), ha='left', va='center')

  ### Mostrar o gráfico

            plt.show()

   # IMAGEM (gráfico de barras inclinadas, escolaridade)                

 ### - 4 Diversidade Racial: Analisar a distribuição de candidatos por raça/cor.

  ### Contar o número de candidatos por raça/cor

            cor_raca_count = eleicao['DS_COR_RACA'].value_counts()

  ### Criar o DataFrame para o gráfico

            df_cor_raca = cor_raca_count.reset_index()
            df_cor_raca.columns = ['Cor/Raça', 'Número de Candidatos']

  ### Criar o gráfico de barras com a plotly

            fig = px.bar(df_cor_raca, x='Número de Candidatos', y='Cor/Raça', color='Cor/Raça', title='Número de Candidatos por Cor/Raça') 
            fig.update_layout(xaxis_title='Número de Candidatos', yaxis_title='Cor/Raça')

  ### Mostrar o gráfico

            fig.show()    

# IMAGEM (gráfico de barras inclinadas, raca e cor)
[![gráfico](/capa.jpg)]                             

## 🟦 Hipóteses:

## Hipótese 1: Ocupações/Profissoes diferentes estão associadas a médias diferentes de despesas de campanha.

  ### - Calcular a média das despesas por ocupação

            despesa_por_ocupacao = eleicao.groupby('DS_OCUPACAO')['VR_DESPESA_MAX_CAMPANHA'].mean().sort_values(ascending=False).head(15)

  ### - Plotar um gráfico de barras

            plt.figure(figsize=(14, 8))
            ax = sns.barplot(x=despesa_por_ocupacao.values, y=despesa_por_ocupacao.index, hue=despesa_por_ocupacao.index, palette='viridis', dodge=False, legend=False)

  ### - Adicionar rótulos às barras

            for index, value in enumerate(despesa_por_ocupacao.values):
                ax.text(value, index, f"R${value:.2f}", ha='left', va='center')

            plt.title('Média de Despesas de Campanha por Ocupação (Top 15)')
            plt.xlabel('Média de Despesa de Campanha (R$)')
            plt.ylabel('Ocupação')

  ### - Mostrar o gráfico
 
            plt.show()             

## ✅ HIPOTESE COMFIRMADA! Após analise podemos concluir que é muito provável que as ocupações estejam associadas a diferentes médias de despesas de campanha, confirmando que há uma relação significativa entre a ocupação e as despesas de campanha dos candidatos. 

# IMAGEM (gráfico de barras inclinadas)

## Hipótese 2: A média das despesas de campanha é diferente entre gêneros.

  ### - Filtrar os dados por gênero

            genero_feminino = df[eleicao['DS_GENERO'] == 'Feminino']['VR_DESPESA_MAX_CAMPANHA']
            genero_masculino = df[eleicao['DS_GENERO'] == 'Masculino']['VR_DESPESA_MAX_CAMPANHA']

  ### - Teste t para amostras independentes

            t_stat, p_value = stats.ttest_ind(genero_feminino, genero_masculino, equal_var=False) 

  ### - Resultados

            f'Estatística t: {t_stat:.4f}'
            f'P-Value: {p_value:.4f}'

  ### - Interpretação

            alpha = 0.05
            if p_value < alpha:
                print("Há uma diferença significativa nas despesas de campanha entre gêneros.")
            else:
                print("Não há uma diferença significativa nas despesas de campanha entre gêneros.")

## ❌ HIPOTESE REFULTADA! Após analise podemos concluir que não há uma diferença significativa nas despesas de campanha entre os gêneros masculino e feminino, sendo essa diferenca de apenas 4,8% conforme mostra o gráfico de pizza!

# IMAGEN (gráfico de pizza)

## 👩🏻‍🏫 Professora Stefany Gracy.
Professora [Stefany Gracy](https://github.com/Stesilva16 "Stefany Gracy")