-- DML Daten

USE videothek;

DELETE FROM `genres`;

DELETE FROM `platten`;

INSERT INTO `platten` (`platten_typ`,`platten_groesse`,`dauerhaftigkeit`,`miete_status`,`miete_grenze`,`filme_id`) VALUES ('DVD','4.7 GB','360 days','available',0,1), 
('DVD','4.7 GB','360 days','available',0,2),
('Blu-ray','25 GB','unlimited','available',0,3),
('Blu-ray','50 GB','1080 days','available',0,5),
('Blu-ray','25 GB','unlimited','available',0,6),
('DVD','4.7 GB','unlimited','rented',1,4);


DELETE FROM `kunde`;

INSERT INTO `kunde` (`first_name`,`last_name`,`age`,`street`,`hause_number`,`postal_code`,`city`,`phone`,`mobile`,`email`) VALUES ('Mark','Philips','24','Juliusstrasse','30','12051','Berlin','030-0000000','015690293847','mark.philips@gmx.de'),
('Joana','Castro','30','Friedrischstrasse','27','10151','Berlin','030-7898133','015683829102','joana.castro@gmx.de'),
('John','Layfield','47','Warschauerstrasse','13','10251','Berlin','030-0000000','015739333092','thejayman@gmail.com'),
('Akira','Takeshi','33','Warschauerstrasse','24','10251','Berlin','030-77783902','0158912135674','super.special@gmx.de'),
('Leonel','Rico','18','Alexanderstrasse','18','13151','Berlin','030-0000000','015490112283','thebestone23@gmx.de');