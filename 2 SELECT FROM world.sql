1. -- Introduction
SELECT name, continent, population 
FROM world

2. -- Large Countries
SELECT name FROM world
WHERE population > 200000000

3. -- Per capita GDP
SELECT name, gdp/population
FROM world
WHERE population > 200000000

4. -- South America in Millions
SELECT name, population/1000000
FROM world
WHERE continent = 'South America'

5. -- France, Germany, Italy
SELECT name, population
FROM world
WHERE name in ('FRANCE', 'GERMANY', 'ITALY')

6. -- United
SELECT name 
FROM world 
WHERE name LIKE '%united%'

7. -- Two ways to be big
SELECT name, population, area 
FROM world 
WHERE area > 3000000 or population > 250000000

8. -- One or the other (but not both)
SELECT name, population, area 
FROM world 
WHERE (area > 3000000 AND population < 250000000) OR (population > 250000000 AND area < 3000000)

9. -- Rounding
SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) 
FROM world 
WHERE continent = 'South America'

10. -- Trillion dollar economies
SELECT name, ROUND(gdp/population, -3) 
FROM world 
WHERE gdp > 1000000000000

11. -- Name and capital have the same length
SELECT name, capital FROM world
WHERE LENGTH(name) = LENGTH(capital)

12. -- Matching name and capital
SELECT name, capital FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1) and name <> capital

13. -- All the vowels
SELECT name
FROM world
WHERE name LIKE '%a%' and name LIKE '%i%' and name LIKE '%u%' and name LIKE '%e%' and name LIKE '%o%' and name not like '% %'