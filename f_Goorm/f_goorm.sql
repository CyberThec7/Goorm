/* mysql befehle:
ls
mysql-ctl start oder stop
mysql-ctl cli
SHOW DATABASES 
CREATE DATABASE Goorm oder bla bla 
DROP DATABASE Goorm */

/* ---------- Strukturen -----------*/
SHOW DATABASES;
/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS Goorm;
/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS Goorm;
/* DB auswählen */
USE Goorm;

/* Tabelle anlegen, falls noch nicht vorhanden */
# CREATE TABLE IF NOT EXISTS test
# (
# 	name VARCHAR(20),
# 	age INT
# );
/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS Goorm.test
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL UNIQUE DEFAULT "TBA",# UNIQUE heißt no repeat 
	age INT NOT NULL DEFAULT 0
);
/* Struktur der Tabelle anzeigen */
DESCRIBE test;
/* ----- Daten ------- */
INSERT INTO test(name,age) VALUES ('Wahhab',34);
INSERT INTO test(age,name) VALUES (21,"Alaa");

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM test;

/* ----- Daten ------- */
INSERT INTO Goorm.test(name,age) VALUES ("Grizabella",29);
INSERT INTO Goorm.test(name,age) VALUES ("Alonzo",35);
INSERT INTO Goorm.test(name,age) VALUES ("Alonzo",31);
INSERT INTO Goorm.test(name,age) VALUES ("Alonzo",25);
INSERT INTO Goorm.test(name,age) VALUES ("Maxine",25);

INSERT INTO Goorm.test VALUES ();
SELECT * FROM test;
