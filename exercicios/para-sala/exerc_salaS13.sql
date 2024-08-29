SELECT Gênero, COUNT(idpassageiro) AS Contagem 
FROM titanic_tratado
GROUP BY Gênero