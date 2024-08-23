-- 0. Introdução 
-- Iremos Analisar os dados Do Percentual de alguns Filmes Com base nos dados do 'WWW.Kaggle.com'

-- Perguntas que Tentaremos Responder:
-- 1. Quais os Filmes com a maior bilheteria do mundo?
-- 2. Qual a maior Renda Doméstica média por ano?
-- 3. Quais os 5 principais Filmes com a maior porcentagem de Renda Estrangeira?
-- 4. qual foi o filme com a maior diferença entre a bilheteria doméstica e estrangeira?

-- 0.1 CARREGANDO OS DADOS PARA A ANALISE
SELECT * FROM aula5.`2000-2009 movies box ofice collection`;


-- 1.0 RESPOSTA
SELECT `Release Group` , Worldwide
FROM `2000-2009 movies box ofice collection`
ORDER BY Worldwide DESC
LIMIT 10;
-- Como podemos ver a consulta criou um Ranking limitando 10 filmes com a maior bilheteria gerando uma consulta Decrescente
-- Ranking:
-- Whatever It Takes
-- Shin Chan: The Adult Empirer Strikes Back
-- 3 Strikes
-- Harry Potter and the sorcerrers Stone
-- My life Without Me
-- Bread and Tulips
-- The Young Black stalion
-- Pirates of the Caribbean: At World's End
-- Married for 7 Years
-- Veronica Guerrin



-- 2.0 RESPOSTA
SELECT Year, AVG(Domestic) AS AverageDomesticEarnings
FROM `2000-2009 movies box ofice collection`
GROUP BY Year;
-- Esta consulta calcula os rendimentos domésticos médios para cada ano no seu conjunto de dados, ajudando você a identificar tendências ao longo do tempo.    
-- 2000 = 63.555 
-- 2001 = 962.605 (Ano com maior rendimento médio)
-- 2002 = 10.444    
-- 2003 = 138.825
-- 2004 = 281.777
-- 2005 = 57.885
-- 2006 = 312.177
-- 2007 = 10.755
-- 2008 = 7.385
-- 2009 = 457. 455



-- 3.0 RESPOSTA
SELECT `Release Group`, Foreign_Percent
FROM `2000-2009 movies box ofice collection`
ORDER BY Foreign_percent Desc
LIMIT 5;
-- Essa consulta destaca os 5 Principais filmes com a maior taxa de Renda estrangeira
-- Ranking 
-- The Crimson Rivers - 99%
-- Taxi 2 - 99%  
-- Anatomy - 99.9% (Maior Porcentagem de lucro médio)
-- Love and Honor - 99.8%
-- 18 Years Later - 99.7%  



-- 4.0 RESPOSTA
SELECT
`Release Group`,
domestic_percent,
Foreign_percent
FROM
    `2000-2009 movies box ofice collection`
ORDER BY 
     `Release Group` Desc limit 10;
-- Essa consulta Limita os filmes com a maior diferença de bilheteria doméstica e estrangeira
-- chegando a conclusão final o filme com a maior fiferença é o filme 'Zhara' tendo 100% da bilheteria como estrangeira
