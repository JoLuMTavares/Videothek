-- SELECT schauspieler.id, filmen.id FROM `schauspieler` JOIN filmen WHERE filmen.schauspieler LIKE CONCAT('%', schauspieler.name ,'%')

-- Diese INSERT ist fuer die filme_schauspieler Tabelle. Wenn ein film mit der Richtig schauspieler(in) findet, dann kopiert beide Schluessel (von filmen und schauspieler Tabellen)

INSERT INTO `filme_schauspieler` (filme_id, schauspieler_id) SELECT schauspieler.id, filmen.id FROM `schauspieler` JOIN filmen WHERE filmen.schauspieler LIKE CONCAT('%', schauspieler.name ,'%');


