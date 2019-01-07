-- Alle regisseure

SELECT name FROM regisseur;

-- Informationen von alle filmen

SELECT titel,jahr, regisseure, laenge FROM filmen;


--------------------- Genres ---------------------


-- Alle filmen mit "Comedy" genre

SELECT * FROM filmen WHERE genres LIKE '%Comedy%';

-- Alle filmen mit "Drama" genre

SELECT * FROM filmen WHERE genres LIKE '%Drama%';

-- Alle filmen mit "Action" genre

SELECT * FROM filmen WHERE genres LIKE '%Action%';

-- Alle filmen mit "Adventure" genre

SELECT * FROM filmen WHERE genres LIKE '%Adventure%';

-- Alle filmen mit "War" genre

SELECT * FROM filmen WHERE genres LIKE '%War%';

-- Alle filmen mit "Crime" genre

SELECT * FROM filmen WHERE genres LIKE '%Crime%';


--------------------- Genres und Schauspieler ---------------------


-- Alle 90er Jahre filmen mit "Crime" genre und Morgan Freeman schauspieler

SELECT * FROM filmen WHERE genres LIKE '%Crime%' AND schauspieler LIKE '%Morgan Freeman%' 
AND jahr > 1990 AND jahr < 2000;


-- Alle 90er Jahre filmen mit "Crime" genre und `Kevin Spacey` schauspieler

SELECT * FROM filmen WHERE genres LIKE '%Crime%' AND schauspieler LIKE '%Kevin Spacey%' 
AND jahr > 1990 AND jahr < 2000;

-- Alle 90er Jahre filmen mit "Drama" genre und `Kevin Spacey` schauspieler

SELECT * FROM filmen WHERE genres LIKE '%Drama%' AND schauspieler LIKE '%Kevin Spacey%' 
AND jahr > 1990 AND jahr < 2000;

-- Alle 90er Jahre filmen mit "Action" genre und `Arnold Schwarzenegger` schauspieler

SELECT * FROM filmen WHERE genres LIKE '%Action%' AND schauspieler LIKE '%Arnold Schwarzenegger%' 
AND jahr > 1990 AND jahr < 2000;


--------------------- Schauspieler ---------------------

-- Alle filmen `Arnold Schwarzenegger` schauspieler

SELECT * FROM filmen WHERE schauspieler LIKE '%Arnold Schwarzenegger%';

-- Alle filmen `Bruce Willis` schauspieler

SELECT * FROM filmen WHERE schauspieler LIKE '%Bruce Willis%';

-- Alle filmen `Al Pacino` schauspieler

SELECT * FROM filmen WHERE schauspieler LIKE '%Al Pacino%';


-- Alle filmen `Christian Balle` schauspieler

SELECT * FROM filmen WHERE schauspieler LIKE '%Christian Bale%';


--------------------- Mahnung und Rechnung ---------------------

-- Alle Kunden, die eine Mahnung mit Rechnung erhalten sollten

SELECT * FROM kunde JOIN mahnung JOIN rechnung WHERE kunde.id = mahnung.kunde_id AND kunde.id = rechnung.id;


--------------------- Filmen ---------------------

-- Allen filmen frei in der Videothek

SELECT titel,jahr, regisseure, laenge FROM filmen JOIN platten WHERE filmen.id = platten.filme_id AND platten.miete_status = 'available';

-- Liste der am meisten geliehene Filme (top Ten)

-- SELECT titel,jahr, regisseure, laenge FROM filmen JOIN 
-- (SELECT platte_id FROM platte_kunde ORDER BY platte_id DESC LIMIT 10) 

SELECT titel,jahr, regisseure, laenge, schauspieler FROM filmen JOIN platten JOIN platte_kunde
WHERE filmen.id = platten.filme_id AND platten.id = platte_kunde.platte_id
ORDER BY platte_kunde.platte_id DESC LIMIT 10; 

-- Liste der Filme (Flop Ten), die nie geliehen worden.

SELECT titel,jahr, regisseure, laenge, schauspieler FROM filmen JOIN platten JOIN platte_kunde
WHERE filmen.id = platten.filme_id AND platten.id = platte_kunde.platte_id
ORDER BY platte_kunde.platte_id ASC LIMIT 10; 


-- Allen filmen von `Francis Ford Coppola`

SELECT * FROM filmen WHERE regisseure LIKE '%Francis Ford Coppola%';

-- Allen filmen von `Quentin Tarantino`

SELECT * FROM filmen WHERE regisseure LIKE '%Quentin Tarantino%';

-- Allen filmen von `Peter Jackson`

SELECT * FROM filmen WHERE regisseure LIKE '%Peter Jackson%';

-- Allen filmen von `James Cameron`

SELECT * FROM filmen WHERE regisseure LIKE '%James Cameron%';
