# Análise de Dados de Felicidade Global (2015-2023)

Este projeto realiza uma análise de dados sobre a felicidade global utilizando informações disponíveis em vários arquivos CSV. O objetivo é unificar os dados, realizar limpeza, e gerar gráficos para entender melhor as correlações entre diferentes fatores e a pontuação de felicidade global.

## Escolha do Dataset

Esse Dataset foi escolhido por conter dados bastante completos e oferecer a possibilidade de análises com diversos parâmetros diferentes. Além disso, desde o início chamou atenção a pergunta: "Quais fatores mais influenciam na felicidade de uma população", o que, por si só, já acaba delineando diferentes testes de hipótese a serem realizados.


## Estrutura do Projeto

1. **Importação de Bibliotecas**  
   Bibliotecas essenciais para manipulação de dados e criação de gráficos são importadas. Inclui `pandas`, `matplotlib`, `seaborn`, `sqlite3`, entre outras.

2. **Unificação dos Arquivos CSV**  
   Os arquivos CSV contendo dados anuais sobre felicidade são combinados em um único arquivo. Adiciona-se uma coluna de ano para facilitar a análise ao longo do tempo.

3. **Criação do Banco de Dados SQLite**  
   O DataFrame unificado é salvo em um banco de dados SQLite para consultas futuras.

4. **Verificação de Dados Nulos e Duplicados**  
   O código verifica e exibe a presença de dados nulos e duplicados, e realiza limpeza quando necessário.

5. **Análise SQL**  
   Realiza uma consulta SQL para contar o número de países em cada ano e avalia a consistência dos dados ao longo dos anos.

6. **Visualização de Dados**  
   Diversos gráficos são criados para analisar a relação entre a pontuação de felicidade e outros fatores como PIB, liberdade de decisão, suporte social, expectativa de vida saudável, generosidade e percepção de corrupção.

7. **Comparação entre Países**  
   Compara os países com as maiores e menores médias de felicidade para uma análise detalhada.

8. **Teste de Hipótese**  
   Realiza um teste de correlação de Pearson para verificar se há uma relação significativa entre PIB e a pontuação de felicidade.

## Dependências

- `pandas`
- `matplotlib`
- `seaborn`
- `sqlite3`
- `scipy`



## Notas:
- Tenha certeza de que os arquivos CSV estão corretamente formatados e na pasta correta.

## Observações Finais:
- A análise mostra como diferentes fatores influenciam a felicidade global.
- Os gráficos ajudam a identificar tendências e relações importantes.
- Pode-se expandir a análise para incluir outros fatores ou mais detalhes.

