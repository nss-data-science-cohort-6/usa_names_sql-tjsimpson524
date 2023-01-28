
SELECT *
FROM names 


SELECT COUNT(*)
 FROM names;

-- -- There are 1957046 row in te names table


SELECT num_registered, SUM(num_registered)
FROM names
GROUP BY num_registered 

-- There are 13720 registered


SELECT MAX(name), MAX(num_registered)
FROM names

-- Most common name Zzyzx 99689

SELECT MIN(year), MAX(year)
FROM names

-- range of years: 1880 and 2018

SELECT MAX(num_registered), MAX(year)
FROM names

-- 2018 has largest number of registrations with 99,689

SELECT COUNT (DISTINCT name)
FROM names

-- There are 98400 distinct names 

SELECT COUNT(*) AS gender
FROM names
WHERE gender = 'M'

-- More females :1,156,527 to 800,519 males


SELECT MAX(num_registered), MAX(name)
FROM names
WHERE gender = 'M'

-- Most popular female name: Zyyanna (99,689). Most popular Male name: ZZyzx (94,757)


SELECT MAX(num_registered), MAX(name)
FROM names
WHERE gender = 'M'
AND year BETWEEN 2000 AND 2009

-- Most popular girl name 2000-2009: Zyrihanna(25,956). Boy name Zyvion (34477)

SELECT MAX(year), COUNT(DISTINCT name) as num_registered
FROM names

-- year with most variety: 2018 (98400)

SELECT MAX(num_registered), MAX(name)
FROM names
WHERE name LIKE 'X%'

-- Xzorion 6558

SELECT COUNT(DISTINCT name)
FROM names
WHERE name LIKE 'Q%_u'

-- 1

SELECT COUNT(DISTINCT name)
FROM names
WHERE name LIKE 'Stev_' 

-- 'Steven' is more popular spelling with 5 compared to only 1 for 'Stephen'


HAVING COUNT(*)>1
WHERE gender = 'M' 


SELECT COUNT(DISTINCT name)
FROM names

HAVING COUNT(*)>1/COUNT(gender) 


-- 98400 unisex names --




SELECT COUNT(gender),COUNT(DISTINCT name) 
from names
WHERE gender  
HAVING 



