Usei o dataset proposto em aula[Kaggle](https://www.kaggle.com/) para buscar os dados sobre Estatísticas dos jogadores da NBA 23/24, escolhi esse tema, pois sou ex-atleta e apaixonada por esse esporte.

Comecei fazendo os import das bibliotecas que iria utilizar que são: 
import pandas as pd
import matplotlib.pyplot as plt
from scipy.stats import ttest_ind
import seaborn as sns
import sqlite3
import scipy.stats as stats
 
Leitura do arquivo em CSV

Alguns teste mostrandos os dados das tabelas como linhas e colunas lunas e exclusão de linhas duplicadas

Renomeie os nomes das colunas principais, os demais dados eram sobre estatistica de jogo, não fiz o uso deles, então só renomeie as que realmente iriam ser utilizadas. 

Foram feitos 4 tipos de graficos, mostrando: 
Quantos jogadores são Point Guard (PG): Armador?
Idades dos jogadores
Qual a taxa dos jogadores com 25 anos? 
Amostra do melhor e pior Time que não retornou valor (amostra com pouco dado).

Feita consulta em SQL e Pandas para mostrar a contagens de jogadores por Times. 
Fiz o fork do repositório.
Clonei o fork na minha máquina (`git clone url-do-meu-fork`).
Resolvi o exercício.