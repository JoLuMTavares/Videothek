-- DML Daten

USE videothek;

-- Allen Daten von der Tabelle platten geloescht

DELETE FROM `platten`;

-- Neue Daten einfuegung

INSERT INTO `platten` (`platten_typ`,`platten_groesse`,`dauerhaftigkeit`,`miete_status`,`miete_grenze`,`filme_id`) VALUES ('DVD','4.7 GB','360 days','available',0,1), 
('DVD','4.7 GB','360 days','available',0,2),
('Blu-ray','25 GB','unlimited','available',0,3),
('Blu-ray','50 GB','1080 days','available',0,5),
('Blu-ray','25 GB','unlimited','available',0,6),
('DVD','4.7 GB','unlimited','rented',1,4),
('DVD','4.7 GB','720 days','rented',4,12),
('DVD','4.7 GB','unlimited','rented',3,34),
('DVD','4.7 GB','unlimited','rented',2,55),
('DVD','4.7 GB','360 days','rented',1,13),
('DVD','4.7 GB','unlimited','rented',6,44),
('DVD','4.7 GB','unlimited','rented',8,47),
('DVD','4.7 GB','360 days','rented',1,41),
('DVD','4.7 GB','unlimited','rented',3,24),
('DVD','4.7 GB','720 days','rented',1,34),
('DVD','4.7 GB','unlimited','rented',2,46),
('DVD','4.7 GB','unlimited','rented',1,194),
('DVD','4.7 GB','unlimited','rented',1,154),
('DVD','4.7 GB','360 days','rented',9,134),
('DVD','4.7 GB','unlimited','rented',1,124),
('DVD','4.7 GB','unlimited','rented',1,191),
('DVD','4.7 GB','1080 days','rented',1,169),
('DVD','4.7 GB','unlimited','rented',2,20),
('DVD','4.7 GB','unlimited','rented',1,130),
('DVD','4.7 GB','360 days','rented',1,80),
('DVD','4.7 GB','unlimited','rented',1,90),
('DVD','4.7 GB','unlimited','rented',9,82),
('DVD','4.7 GB','1080 days','rented',1,62),
('DVD','4.7 GB','unlimited','rented',1,91),
('DVD','4.7 GB','unlimited','rented',2,200),
('DVD','4.7 GB','360 days','rented',1,133),
('DVD','4.7 GB','unlimited','rented',1,149),
('DVD','4.7 GB','unlimited','rented',1,199),
('DVD','4.7 GB','1080 days','rented',10,129),
('DVD','4.7 GB','unlimited','rented',1,27),
('DVD','4.7 GB','360 days','rented',13,47),
('DVD','4.7 GB','unlimited','rented',1,97),
('DVD','4.7 GB','unlimited','rented',7,45),
('DVD','4.7 GB','1080 days','rented',1,125),
('DVD','4.7 GB','unlimited','rented',1,131),
('DVD','4.7 GB','720 days','rented',1,144),
('DVD','4.7 GB','unlimited','rented',1,178),
('DVD','4.7 GB','360 days','rented',3,119),
('DVD','4.7 GB','unlimited','rented',6,101),
('DVD','4.7 GB','1080 days','rented',3,100),
('DVD','4.7 GB','unlimited','rented',10,93),
('DVD','4.7 GB','unlimited','rented',1,107),
('DVD','4.7 GB','360 days','rented',7,171),
('DVD','4.7 GB','unlimited','rented',1,197),
('DVD','4.7 GB','1080 days','rented',5,111),
('DVD','4.7 GB','unlimited','rented',1,124),
('DVD','4.7 GB','720 days','rented',1,161),
('DVD','4.7 GB','360 days','rented',3,189);

-- Allen Daten von der Tabelle 	platte_kunde geloescht

DELETE FROM `platte_kunde`;

INSERT INTO `platte_kunde` (`platte_id`, `kunde_id`) VALUES (12,1),
(13,2),
(16,5),
(17,3),
(27,4),
(24,1),
(33,2),
(15,5),
(27,4),
(47,3),
(20,1),
(10,2),
(39,5),
(50,4),
(50,4),
(28,3),
(30,2),
(30,1),
(10,1),
(10,5),
(9,3),
(8,4),
(20,2),
(22,1),
(24,2),
(29,3),
(31,4),
(44,5),
(38,5),
(37,2),
(36,4),
(6,1),
(5,3),
(13,5),
(50,2),
(12,3),
(16,1),
(26,1),
(26,5),
(32,4),
(50,3),
(7,2),
(15,1),
(17,1),
(17,4),
(28,2),
(44,5),
(40,3),
(43,3),
(42,3),
(47,1),
(35,1),
(23,2),
(11,2),
(18,5),
(27,5),
(27,3),
(24,2),
(13,2),
(49,2),
(49,2),
(53,5),
(52,1),
(52,3),
(51,1);