SELECT * FROM world.countrylanguage;

-- TO FIND THE COUNTRY LANGUAGE OF NIGERIA
SELECT * FROM world.countrylanguage
where CountryCode = "nga";

-- TO CORRECT THE SPELLING OF JORUBA TO YORUBA
UPDATE world.countrylanguage
SET  LANGUAGE = "Yoruba" 
WHERE Percentage = 21.4;

-- TO CORRECT THE SPELLING OF IBO TO IGBO 
UPDATE world.countrylanguage
SET  LANGUAGE = "Igbo" 
WHERE Percentage = 18.1;