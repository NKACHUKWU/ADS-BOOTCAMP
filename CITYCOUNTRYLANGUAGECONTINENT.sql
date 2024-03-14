-- TO FIND THE CITIES WITH THE LARGEST POPULATION

SELECT *FROM world.country;
SELECT Name, SUM(population) AS Population
FROM world.city;

SELECT *FROM world.country;
SELECT Name, SUM(population) AS Population
FROM world.city
GROUP BY Name
ORDER BY SUM(population) DESC
LIMIT 10
; 
-- TO KNOW CONTINENTS WITH THE HIGHEST POPULATION AND AVERAGE LIFE EXPECTANCY
SELECT * FROM world.country;

SELECT Continent, SUM(population) AS Population, AVG(LifeExpectancy) AS AvgLifeExpectancy
FROM world.country
GROUP BY Continent;

SELECT Name, SUM(population) AS Population, AVG(LifeExpectancy) AS AvgLifeExpectancy
FROM world.country
GROUP BY Name
ORDER BY SUM(population) DESC
LIMIT 10;


-- TO FIND THE AVERAGE PERCENTAGE OF COUNTRY LANGUAGES
SELECT *FROM world.countrylanguage;
SELECT language, AVG(percentage) AS AvgPercentage
FROM world.countrylanguage
GROUP BY Language; 

-- TO JOIN TABLE

SELECT C.Name, L.language, AVG(L.percentage) AS AvgPercentage
FROM world.country C
JOIN World.Countrylanguage L
ON C.Code = L.CountryCode
GROUP BY C.Name, L.language;

-- TO ROUND UP THE DECIMALS
SELECT C.Name, L.language, ROUND(AVG(L.percentage), 1) AS AvgPercentage
FROM world.country C
JOIN World.Countrylanguage L
ON C.Code = L.CountryCode
GROUP BY C.Name, L.language;

-- TO KNOW THE LANGUAGES IN AFRICA
SELECT C.Continent, L.language
FROM world.country C
JOIN World.Countrylanguage L
ON C.Code = L.countrycode
WHERE C.Continent = "Africa"
GROUP BY C.Continent, L.language;

-- TO FIND OUT CITY NAMES, COUNTRY AND OFFICIAL LANGUAGE
SELECT CI.Name AS City, C.Name AS Country, L.language AS OfficialLanguage
FROM world.country C
JOIN World.Countrylanguage L
ON C.Code = L.countrycode AND L.IsOfficial = 'T'
JOIN world.city CI 
ON CI.CountryCode = C.Code;

-- TO UNION CITY AND COUNTRY
SELECT NAME AS NAME, "CITY" AS TYPE FROM CITY
UNION 
SELECT NAME AS NAME, "COUNTRY" AS TYPE FROM COUNTRY;

-- TO UNION LANGUAGE INTO OFFICIAL AND NON-OFFICIAL
SELECT LANGUAGE AS LANGUAGE, "OFFICIAL" AS TYPE FROM COUNTRYLANGUAGE WHERE ISOFFICIAL ="T" 
UNION 
SELECT LANGUAGE AS LANGUAGE, "NON-OFFICIAL" AS TYPE FROM COUNTRYLANGUAGE WHERE ISOFFICIAL ="F";


 