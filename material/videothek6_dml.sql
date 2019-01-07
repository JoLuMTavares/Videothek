-- DML Daten

USE videothek;

-- Allen Daten von der Tabelle mahnung geloescht

DELETE FROM `mahnung`;

-- Name und typ vom felder wechseln

ALTER TABLE `mahnung` CHANGE `scheibe_id` `platte_id` INT(11) NOT NULL;

-- Name und typ vom felder wechseln

ALTER TABLE `mahnung` CHANGE `description` `beschreibung` TEXT NOT NULL;

-- Neue Daten einfuegung

INSERT INTO `mahnung` (`platte_id`,`kunde_id`, `beschreibung`) VALUES (1,3,"Achtung! Es ist fast seit. Bitte, vergessen sie nicht ihre filme miete."),
(38,3,"Achtung! Es ist fast seit. Bitte, vergessen sie nicht ihre filme miete."),
(5,4,"Achtung! Es ist fast seit. Bitte, vergessen sie nicht ihre filme miete."),
(25,5,"Achtung! Es ist fast seit. Bitte, vergessen sie nicht ihre filme miete."),
(12,2,"Achtung! Es ist fast seit. Bitte, vergessen sie nicht ihre filme miete."),
(16,5,"Achtung! Es ist fast seit. Bitte, vergessen sie nicht ihre filme miete."),
(19,1,"Achtung! Es ist fast seit. Bitte, vergessen sie nicht ihre filme miete."),
(23,2,"Achtung! Es ist fast seit. Bitte, vergessen sie nicht ihre filme miete."),
(40,4,"Achtung! Es ist fast seit. Bitte, vergessen sie nicht ihre filme miete.");


-- Name und typ vom felder wechseln

ALTER TABLE `rechnung` CHANGE `scheibe_id` `platte_id` INT(11) NOT NULL;

-- Name und typ vom felder wechseln

ALTER TABLE `rechnung` CHANGE `duration` `ueber_zeit` INT(11) NOT NULL;

-- Name und typ vom felder wechseln

ALTER TABLE `rechnung` CHANGE `bill` `fein` DECIMAL(6,2) NOT NULL;

-- Neuen feld anlegen

ALTER TABLE `rechnung` ADD COLUMN `extra_bezahlen` DECIMAL(6,2) AFTER `fein`;

-- Das feld typ wechseln

ALTER TABLE `rechnung` MODIFY COLUMN `extra_bezahlen` TEXT;

-- Die Tabelle name wechseln

ALTER TABLE `rechnung` RENAME TO `Super_bezahlen`;

-- Die Tabelle name wieder wechseln

ALTER TABLE `Super_bezahlen` RENAME TO `rechnung`;

-- Das feld `extra_bezahlen` loeschen

ALTER TABLE `rechnung` DROP COLUMN `extra_bezahlen`;

-- Neue Daten einfuegung

INSERT INTO `rechnung` (`platte_id`, `kunde_id`, `ueber_zeit`, `fein`) VALUES (1,3,4,30.00),
(36,1,7,60.00),
(11,2,50,530.00),
(1,4,1,5.00),
(25,5,2,30.00),
(15,4,1,30.00),
(20,2,20,130.00),
(33,3,9,26.00),
(29,1,180,780.00);
