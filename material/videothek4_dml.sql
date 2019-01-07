
-- Diese INSERT ist fuer die regisseur_filme Tabelle. Wenn ein film mit der Richtig regisseur findet, dann kopiert beide Schluessel (von filmen und regisseure Tabellen)

INSERT INTO `regisseur_filme` (regisseur_id, filme_id) SELECT regisseur.id, filmen.id FROM `regisseur` JOIN filmen WHERE regisseur.name LIKE CONCAT('%', filmen.regisseure ,'%');



-- Diese INSERT ist fuer die filme_genre Tabelle. Wenn ein film mit der Richtig genre findet, dann kopiert beide Schluessel (von filmen und genres Tabellen)


INSERT INTO `filme_genre` (	filme_id, genre_id) SELECT filmen.id, genres.id FROM `filmen` JOIN genres WHERE filmen.genres LIKE CONCAT('%', genres.genre ,'%');