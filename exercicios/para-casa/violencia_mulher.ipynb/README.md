# Análise de Dados de Violência Contra Mulheres
## Introdução
Este projeto analisa dados globais sobre violência contra mulheres, utilizando um banco de dados desenvolvido pela ONU Mulheres. O objetivo é entender a extensão, natureza e consequências da violência contra mulheres em diferentes países.

## Motivação
A violência contra mulheres é um problema global significativo. Este projeto visa explorar os dados disponíveis para identificar padrões e fornecer insights que possam ajudar na formulação de políticas e medidas de combate a essa violência.

## Instalação e Pré-Requisitos
Para executar o código, você precisará das seguintes bibliotecas Python:

import pandas as pd
import matplotlib.pyplot as plt

## Uso
Clone este repositório para sua máquina local.
Navegue até o diretório do projeto.
Abra o arquivo woman_tratado.ipynb em um ambiente Jupyter Notebook.
Execute as células de código sequencialmente para carregar e analisar os dados.
Estrutura dos Dados
Os dados são carregados a partir de um arquivo CSV:

df_backup = pd.read_csv("Data_Map_export.csv")
Para evitar alterações no conjunto de dados original, uma cópia é feita:

df = df_backup.copy()

## Análise Inicial
A análise inicial inclui a verificação da estrutura dos dados, presença de valores nulos e limpeza de dados. Também foi realizada a fagmentação de uma coluna em outras três para uma análise mais precisa. O dataframe com os dados tratados foram salvos em novo arquivo csv "woman_tratado.csv"

## Lidando com Erros
Para correções de erros apontadas pelos códigos e aperfeiçoamento da execução foram feitas consultas às IAs Copilot, GhatGPT, Gemini e Perplexity.

## Contribuições
Contribuições e sugestões são bem-vindas!.