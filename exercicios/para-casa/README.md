# Exercício de Casa 🏠 

## Projeto II

Resolução:
Usei o dataset RH_Analytics para fazer uma análise em cima dos colaboradores de uma empresa.
Escolhi esse dataset, pois me interesso pela área de People Analytics, e sempre podemos tirar muitos insights com dados de pessoas.

Instalei as bibliotecas: 
pandas, matplotlib, scipy.stats, seaborn e sqlite3

import pandas as pd
import matplotlib.pyplot as plt
from scipy.stats import ttest_ind
import seaborn as sns
import sqlite3

Iniciei o projeto fazendo uma limpeza no dataset, excluindo linhas duplicadas, excluindo colunas que não serviriam para minha análise e dados nulos.


Iniciei a análise vendo o nivel de satisfação dos colaboradores com o ambiente de trabalho deles, e concluí que mais da metade dos colaboradores estavam satisfeitos.

Também analisei o nivel de satisfação deles com o Emprego, e o resultado foi o mesmo, mais da metade satisfeitos.

Então resolvi analisar a Faixa Salarial da empresa e vi que a maior parte recebe até R$5.000,00 por mês.

Analisei também a faixa etária dos colaboradores e notei que a maior parte do quadro da empresa tem menos de 46 anos.

Também pude perceber que mais da metade do quadro é constituido por Homens.

Feitas as análises, resolvi testar uma hipótese: A satisfação dos colaboradores tem algo a ver com o salário deles?
E o resultado foi sim.




###########################












Explicação do exercício:
- Use o dataset proposto em aula ou busque um de sua preferência no [Kaggle](https://www.kaggle.com/).<br>
- Faça uma introdução explicando os dados e por que você escolheu o dataset.<br>
- Fale sobre o motivo de escolha dos dados: pq esses dados me chamaram a atenção ao ponto de achar que teríamos bons insights? O que eu vi de relevante nesses dados?
- Faça a instalação das bibliotecas necessárias para tratamento de dados, sendo necessário usar pandas e numpy.<br>
- Utilize a biblioteca Matplotlib ou Seaborn para construir novos gráficos.<br>
- Crie visualizações de gráficos com pandas, sendo no mínimo 4 gráficos.<br>
- Faça  consultas em sql.<br>
- Utilize a biblioteca Matplotlib ou Seaborn para construir novos gráficos.<br>
- Faça um teste de hipótese.<br> 

Arquivos que devem ser submetidos:

- arquivo.csv (ou similar: json, exe, etc) utilizado
- arquivo .db com entradas de interesse
- arquivo .ipynb com relatório contendo gráficos e insights sobre dados utilizados.
- código de criação e edição em sql (.py ou .ipynb)
- readme.md com todas a documentação das analises.

## Extra

Crie uma função que, a partir do dataset escolhido, crie um DataFrame, faça o tratamento dos dados e, por fim, exiba uma visualização gráfica.
Crie duas amostras e faça consultas com elas usando a operação merge.

Terminou o exercício? Dá uma olhada nessa checklist e confere se tá tudo certinho, combinado?!

- [ ] Fiz o fork do repositório.
- [ ] Clonei o fork na minha máquina (`git clone url-do-meu-fork`).
- [ ] Resolvi o exercício.
- [ ] Adicionei as mudanças. (`git add .` para adicionar todos os arquivos, ou `git add nome_do_arquivo` para adicionar um arquivo específico)
- [ ] Commitei a cada mudança significativa ou na finalização do exercício (`git commit -m "Mensagem do commit"`)
- [ ] Pushei os commits na minha branch (`git push origin nome-da-branch`)
- [ ] Criei um Pull Request seguindo as orientaçoes que estao nesse [documento](https://github.com/mflilian/repo-example/blob/main/exercicios/para-casa/instrucoes-pull-request.md).
