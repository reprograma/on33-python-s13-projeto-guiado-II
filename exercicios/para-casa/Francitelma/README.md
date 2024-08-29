# Projeto Guiado II


## Descrição


Este é um pré projeto realizado como atividade de casa da décima terceira semana do curso de Python: análise de dados, solicitado pela professora Stefany Gracy da parte de Projeto Guiado II

O projeto faz uso do dataset Amazon Prime Userbase Dataset, retirado do site [Kaggle](https://www.kaggle.com/) para análise. 

O conjunto de dados do Amazon Prime contém informações sobre 2.500 usuários fictícios do serviço de assinatura. Cada registro inclui detalhes como nome do usuário, endereço de e-mail, localização, plano de assinatura, informações de pagamento e métricas de engajamento. Além disso, estão disponíveis dados demográficos, como gênero e data de nascimento, além de preferências pessoais, como gêneros favoritos e dispositivos utilizados para acessar a plataforma.

Esse conjunto de dados foi criado para refletir uma ampla diversidade de usuários Prime, abrangendo diferentes perfis demográficos, tipos de assinatura e padrões de uso. Ele é ideal para análises que buscam identificar comportamentos, preferências e interações dos usuários com a plataforma Amazon Prime. Essas informações podem ser usadas  identificar tendências, criar campanhas de marketing direcionadas e melhorar a experiência do usuário na plataforma.

Vale ressaltar que este conjunto de dados é composto por informações fictícias, geradas exclusivamente para fins ilustrativos, e não representa usuários reais do Amazon Prime.


## Implementação


O primeiro passo foi baixar todas a bibliotecas usadas para o projeto.

```
import pandas as pd
import matplotlib.pyplot as plt 
from scipy.stats import ttest_ind
import seaborn as sns
from datetime import datetime
import plotly.express as px
import numpy as np
```
Logo em seguida, foi realizada uma ETL, coletando-se os dados do arquivo .csv já baixado na máquina. Apos essa primeira etapa, foi realizado o processo de verificação e  transformação de dados para que pudessem atender aos requisitos de qualidade e estrutura necesários para análise.
```
nulos_por_linhas = df.isnull().sum(axis=1)  
print(nulos_por_linhas)
```
df = df.drop_duplicates()
```
def visualizar_as_duplicadas(df):  
    duplicados = df[df.duplicated(keep=False)]

    return duplicados

linhas_duplicadas = visualizar_as_duplicadas(df)
print (linhas_duplicadas)
```
Após a verificação de dados nulos e duplicados, foi excluída a coluna de "Engagement Metrics" para fins didáticos e renomeadas todas as colunas restantes para o idioma português.
```
df = df.drop(columns=["Engagement Metrics"])
```
df.rename(columns={              
    'User ID': 'ID Cliente',
    'Name':'Nome', 
    'Email Address':'Email', 
    'Username': 'Usuario', 
    'Date of Birth':'Data de aniversario',
    'Gender':'Genero', 
    'Location':'Localização', 
    'Membership Start Date':'Inicio da associação', 
    'Membership End Date':'Fim da associação',
    'Subscription Plan':'Plano de assinatura', 
    'Payment Information':'Informações de pagamento', 
    'Renewal Status':'Status de renovação',
    'Usage Frequency':'Frequencia de uso', 
    'Purchase History':'Historico de compras', 
    'Favorite Genres':'Genero favorito',
    'Devices Used':'Dispositivos usados',  
    'Feedback/Ratings':'Feedbacks/Classificações',
    'Customer Support Interactions':'Interações de suporte ao cliente'
}, inplace=True)
```
Depois de feita toda limpeza de dados foi criado um novo dataframe.
```
df.to_csv("amazonprime_tratado.csv",index=False)
```
## Analise

O primeiro questionamento analisado foi a sexagem dos usuários do streaming e após a descoberta, feito um grafico do tipo pizza para representar a divisão.

#Qual a divisão de usuários por gênero no streaming?

##contagem de usuários
```
contagem_genero = df["Genero"].value_counts()
```
##criação do grafico
```
contagem_genero.plot(
    kind='pie',
    autopct='%1.1f%%',
    colors=['#1f77b4', '#ff7f0e'],
    wedgeprops={'edgecolor': 'black'},
    title='Usuários por gênero'
)
plt.show()
``` 
O segundo questionamento foi sobre o gosto desses usuários. Quais os cinco gêneros de filmes/séries se destacavam entre as coleções. Em seguida, foi feita a criação de um gráfico de barras com os tipos e quantidades (através do comando 'for') de usuários que escolheram determinado gênero.

#Qual o genero favorito entre os usuários?

##contagem do tipo de generos
```
genero_favorito = df["Genero favorito"].value_counts().nlargest(5) 
```
##criação do grafico
```
genero_favorito.plot(kind="bar", edgecolor="black", color=['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b', '#e377c2'])

for index, value in enumerate(genero_favorito):
    plt.text(index, value + 2.5, str(value), ha='center')

plt.xlabel("Genero favorito")
plt.ylabel("Quantidade")
plt.title("Divisão por gênero favorito")
plt.show()
```
A terceira indagação analisada foi a divisão de genero preferido entre os sexos e a comparação entre eles.

#Qual a divisão de genero favorito por sexagem e comparação entre eles.

##Contagem de valores por genero do sexo masculino. 

```nota_feminina = df[df['Genero'] == 'Female']['Genero favorito'].value_counts().reset_index() 
nota_masculina = df[df['Genero'] =='Male']['Genero favorito'].value_counts().reset_index() 

print(nota_masculina)```

##Contagem de valores por genero do sexo feminino.  

```nota_feminina = df[df['Genero'] == 'Female']['Genero favorito'].value_counts().reset_index() 
nota_masculina = df[df['Genero'] =='Male']['Genero favorito'].value_counts().reset_index() 

print(nota_feminina)```

Fazendo a comparação através do gráfico em formato de histograma, das quantidades por genero, entre os sexos masculino e feminino: 
```
fig = px.histogram(df, x ='Genero favorito', 
                   color='Genero',
                   barmode='group')

counts = df.groupby(['Genero favorito', 'Genero']).size().reset_index(name='Count')


fig.update_layout(
    title='Categoria por Genero',
    xaxis_title='Genero favorito',
    yaxis_title='Total',
    font={'color':'Black', 'size':12,'family':'Courrier New'}
    )
fig.show()
```
Em seguida, foi criada uma nova coluna com a idade dos usuários da plataforma, para posteriormente ser criado um gráfico que mostrasse qual faixa etária se destacava.

#Qual a distribuição de usuários por idade?

##Descobrindo a idade dos usuários.
```
df['Data de aniversario'] = pd.to_datetime(df['Data de aniversario'])
df['Idade'] = 2024 - df['Data de aniversario'].dt.year

df[['Data de aniversario', 'Idade']].head()
```
##Criação do gráfico
```
plt.figure(figsize=(8, 6))
plt.hist(df['Idade'], bins=30, edgecolor='black') 
plt.title('Distribuição por Idades')
plt.xlabel('Idade')
plt.ylabel('Frequência')
plt.show()
```
Logo em seguida foi feito um teste de hipoteses para analisar se os feedbacks com notas altas tinha alguma relação com o sexo feminino.

# Teste de relação sexo feminino e feedbacks com notas altas     

Hipotese Nula HO: A média das notas dadas por mulheres é MAIOR ou igual à média das notas dadas por homens.
Hipotese Alternativa H1:  A média das notas dadas por mulheres é MENOR que a média das notas dadas por homens.

#Amostragem
Todas as notas de feedbacks dadas pelo sexo feminino e masculino.
```
nota_feminina = df[df['Genero'] == 'Female']['Feedbacks/Classificações']
nota_masculina = df[df['Genero'] =='Male']['Feedbacks/Classificações']
```
# Teste t
```
estatistica_t, valor_p = ttest_ind(nota_feminina, nota_masculina)
print("Teste T de notas por gênero")
print(f"Estatística T : {estatistica_t}") 
print(f"Valor P: {valor_p}") 
```
##criação do gráfico (mostrará um histograma de notas femininas e masculinas e a quantidade de usuários que deram tal nota no feedback, sobrepondo-se para melhor analise visual)
```
sns.histplot(nota_feminina, color= 'red', label ='Feedback Feminino', kde=True, bins= 20)
sns.histplot(nota_masculina, color = 'lightblue', label = 'Feedback Masculino', kde=True, bins= 20)
```
#rotulos
plt.legend()
plt.title(" Feedbacks por gênero")
plt.xlabel("Feedbacks")
plt.ylabel("Quantidade de usuários")
plt.show()

#interpretação
if valor_p < 0.05:
    print("Rejeitamos a hipótese nula")
else:
    print("Não rejeitamos a hipótese nula") #diferença observada nas médias pode ser devido ao acaso

Para provar o que mostra o gráfico, foi tirada uma média das notas, pra ver se bate com o resultado do teste de hipotese.  
```
media_feedback_por_genero = df.groupby('Genero')['Feedbacks/Classificações'].mean()
print(media_feedback_por_genero)
```
Para finalizar foi criado um dataframe de amostragem com 100 usuários para saber quantos desses deram determinada nota ao serviço.
```
amostragem_df = df.sample(100)
amostragem_df.head(3)
```
Pela biblioteca pandas, foi criado um codigo para analisar e organizar os dados com essas notas e seu respectivo numero de usuários.

#pandas 
```
avaliação = amostragem_df['Feedbacks/Classificações'].value_counts().reset_index()    #reset_index = deixar como tabela
avaliação.columns =['Avaliação do streaming','Usuários']
print(avaliação)
```
Por ultimo, foi feito um backup de todo documento.
```
df_backup = df.copy() #backup 
```


































