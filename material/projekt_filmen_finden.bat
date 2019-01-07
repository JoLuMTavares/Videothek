c:\xampp\mysql\bin\mysql.exe videothek -u root -X -e "SELECT * FROM filmen" > c:\xampp\htdocs\dsql\videothek\filmen.xml


c:\xampp\mysql\bin\mysql.exe videothek -u root -X -e "SELECT titel,jahr, regisseure, laenge FROM filmen" > c:\xampp\htdocs\dsql\videothek\filmen.html