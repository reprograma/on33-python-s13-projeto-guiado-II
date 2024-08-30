1° passo: o dataset utilizado para esta análise foi o de vencedores do oscar até o ano de 2014.


2° passo: As bibliotecas utilizadas para esta análise foram as seguintes:

    import pandas as pd
    import matplotlib.pyplot as plt
    from scipy.stats import ttest_ind
    import seaborn as sns

3° passo: os dados foram tratados para a análise. Foram verificados a existência de dados nulos por coluna e linha, bem como pedido a verificação e descrição destes dados. Após a limpeza, os dados, que tinham o índice em inglês, foram convertidos para o português, e após todas as transformações, o novo dataframe foi salvo no formato csv com o nome 'Dados_Oscar_Tratado'

4° passo: algumas das colunas foram utilizadas para análise. A primeira foi demonstrando como as categorias da premiação se separam por gênero apenas nas atuações. Para diretor concorrem homens e mulheres na mesma categoria.

O segundo gráfico demonstra a quantidade de vencedores por raça, independentemente de categoria.

O terceiro gráfico demonstra a quantidade de vencedores por orientação sexual, independentemente de categoria.

O quarto gráfico faz um cruzamento dos vencedores por raça dentro de cada categoria, dividindo-se em cinco delas: melhor ator, melhor atriz, melhor diretor, melhor ator coadjuvante e melhor atriz coadjuvante.

O quinto gráfico demonstra o teste de hipótese adotado nesta análise, ilustrando a correlação entre a raça dos concorrentes e se o fato dos mesmos serem brancos influenciaria na vitória.