-- DDL

DROP DATABASE IF EXISTS `videothek`;

CREATE DATABASE IF NOT EXISTS `videothek` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

USE videothek;

CREATE TABLE `filmen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jahr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  
  `laenge` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `genres` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regisseure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,

  `schauspieler` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plot` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sprache` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `laender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  
  `plakat_url|` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
 
  `imdbID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  
  PRIMARY KEY (id)
  
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- arme INT


-- Tabelle fuer regiessuer

CREATE TABLE `regisseur` (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Tabelle fuer regisseur_filme beziehung. Das heißt, ein regiessuer kann viele filme realisieren

CREATE TABLE `regisseur_filme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regisseur_id` int(11) NOT NULL,
  `filme_id` int(11) NOT NULL,
  PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Tabelle fuer genres

CREATE TABLE `genres` (
	id INT(11) NOT NULL AUTO_INCREMENT,
	genre varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL, 
	PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- Tabelle fuer filme_genre beziehung. Das heißt, ein genre kann an viele filmen angeschaltet sein

CREATE TABLE `filme_genre` (
	id INT(11) NOT NULL AUTO_INCREMENT,
	filme_id INT(11) NOT NULL,
	genre_id INT(11) NOT NULL,
	PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Tabelle fuer schauspieler

CREATE TABLE `schauspieler` (
	id INT(11) NOT NULL,
	`name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- Tabelle fuer filme_schauspieler beziehung. Das heißt, ein schauspieler kann an viele filmen schauspielern. Normalweise, ein filme hat viele schauspieler.

CREATE TABLE `filme_schauspieler` (
	id INT(11) NOT NULL AUTO_INCREMENT,
	filme_id INT(11) NOT NULL,
	schauspieler_id INT(11) NOT NULL,
	PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- Tabelle fuer Platten. Das heißt, ein Platte hat nur ein filme.

CREATE TABLE `platten` (
	id INT(11) NOT NULL AUTO_INCREMENT,
	platten_typ VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
	platten_groesse VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
	dauerhaftigkeit VARCHAR(10) COLLATE utf8_unicode_ci DEFAULT NULL,
	miete_status VARCHAR(20) COLLATE utf8_unicode_ci DEFAULT NULL, -- mann muss das wechseln
	miete_grenze INT(2),	
	filme_id INT(11) NOT NULL,
	PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



-- Tabelle fuer Kunde

CREATE TABLE `kunde` (
	id INT(11) NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(30) COLLATE utf8_unicode_ci DEFAULT NULL,
	last_name VARCHAR(60) COLLATE utf8_unicode_ci DEFAULT NULL, -- mann muss das wechseln
	age INT(2),
	street  VARCHAR(30) COLLATE utf8_unicode_ci DEFAULT NULL, 
	hause_number  VARCHAR(5) COLLATE utf8_unicode_ci DEFAULT NULL,
	postal_code INT(5),
	city  VARCHAR(20) COLLATE utf8_unicode_ci DEFAULT NULL,
	phone  VARCHAR(15) COLLATE utf8_unicode_ci DEFAULT NULL,
	mobile  VARCHAR(15) COLLATE utf8_unicode_ci DEFAULT NULL,
	email  VARCHAR(30) COLLATE utf8_unicode_ci DEFAULT NULL,
	PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


-- Tabelle fuer platte_kunde beziehung. Das heißt, eine Kunde kann nur eine Platte mieten.

CREATE TABLE `platte_kunde` (
	id INT(11) NOT NULL AUTO_INCREMENT,
	platte_id INT(11) NOT NULL,
	kunde_id INT(11) NOT NULL,
	PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Tabelle fuer mahnung. Das heißt, wenn die scheibe seit miete fast vertig ist, erhaelt die kunde eine Mahnung.

CREATE TABLE `mahnung` (
	id INT(11) NOT NULL AUTO_INCREMENT,
	scheibe_id INT(11) NOT NULL,
	kunde_id INT(11) NOT NULL,
	description TEXT COLLATE utf8_unicode_ci DEFAULT NULL,
	PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Tabelle fuer rechnung. Das heißt, wenn ein kunde ein scheibe jenseits vom Termin gemietet hat, erhaelt er eine rechnung. 

CREATE TABLE `rechnung` (
	id INT(11) NOT NULL AUTO_INCREMENT,
	scheibe_id INT(11) NOT NULL,
	kunde_id INT(11) NOT NULL,
	duration INT(2) NOT NULL,
	bill DECIMAL(6,2) NOT NULL,
	PRIMARY KEY (id)
) DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
