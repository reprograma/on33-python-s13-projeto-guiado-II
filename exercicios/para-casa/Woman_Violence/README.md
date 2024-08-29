# Análise de Dados de Violência Contra Mulheres

## Introdução

Este projeto analisa dados globais sobre violência contra mulheres, utilizando um banco de dados desenvolvido pela ONU Mulheres. O objetivo é entender a extensão, natureza e consequências da violência contra mulheres em diferentes países.

## Motivação

A violência contra mulheres é um problema global significativo. Este projeto visa explorar os dados disponíveis para identificar padrões e fornecer insights que possam ajudar na formulação de políticas e medidas de combate a essa violência.

## Instalação e Pré-Requisitos

Para executar o código, você precisará das seguintes bibliotecas Python:

```python
import pandas as pd
import matplotlib.pyplot as plt
```


## Uso

1. Clone este repositório para sua máquina local.
2. Navegue até o diretório do projeto.
3. Abra o arquivo `Woman_Violence.ipynb` em um ambiente Jupyter Notebook.
4. Execute as células de código sequencialmente para carregar e analisar os dados.

## Estrutura dos Dados

Os dados são carregados a partir de um arquivo CSV:

```python
df_backup = pd.read_csv("Data_Map_export.csv")
```

Para evitar alterações no conjunto de dados original, uma cópia é feita:

```python
df = df_backup.copy()
```

## Análise Inicial

A análise inicial inclui a verificação da estrutura dos dados, presença de valores nulos e limpeza de dados.
Também foi realizada a fagmentação de uma coluna em outras três para uma análise mais precisa.
O dataframe com os dados tratados foram salvos em novo arquivo csv "Woman_Violence.csv"


### Lidando com Erros

Para correções de erros apontadas pelos códigos e aperfeiçoamento da execução foram feitas consultas às IAs Copilot, GhatGPT, Gemini e Perplexity.


## Contribuições

Contribuições e sugestões são bem-vindas!.