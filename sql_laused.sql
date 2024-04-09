MS SQL Server management studio

Server Name: localdb/(...) ja Windows Authentification

CREATE DATABASE trostnikovTITpv22;

--tabeli loomine
--primary key - annab unikaalne väärtus
USE trostnikovTITpv22;
CREATE TABLE oppeaine(
oppeaineID int Primary key identity(1,1),
nimetus varchar(50) UNIQUE,
kestvus int NOT NULL,
kirjeldus Text,
algus_kuupaev date);
--Kuva/ Näita tabeli
SELECT * FROM oppeaine;

--Andmete lisamine tabeli sisse
INSERT INTO oppeaine(
nimetus, kestvus, algus_kuupaev, kirjeldus)
VALUES (
'Eesti Keel', 200, '2024-04-9', 'Üldainete moodul');
SELECT * FROM oppeaine;

--tabeli kustutamine
DROP table oppeaine;

--Tabel Opetaja
CREATE TABLE opetaja(
opetajaID int Primary key identity(1,1),
eesnimi varchar(50),
perenimi varchar(50) NOT NULL,
synniaeg date,
kontakt varchar(50));
SELECT * from opetaja;
INSERT INTO opetaja(eesnimi, perenimi, kontakt)
VALUES ('Mihail', 'Agapov', '76543578');

--andmete uuendamine
UPDATE opetaja SET synniaeg='3000-10-10'
WHERE opetajaID=1;
--tabeli muutmine veergu lisamine
--FK--->PK
ALTER TABLE oppeaine ADD opetajaID int;
SELECT * FROM oppeaine;
SELECT * FROM opetaja;
UPDATE oppeaine SET opetajaID=1;
--Foreign key lisamine tabeli sisse
ALTER TABLE oppeaine
ADD FOREIGN KEY (opetajaID) REFERENCES opetaja(opetajaID);

INSERT INTO oppeaine(
nimetus, kestvus, algus_kuupaev, kirjeldus, opetajaID)
VALUES (
'Linux', 600, '2024-04-9', 'Linux moodul moodul', 1);
SELECT * FROM oppeaine;

--Ülesanne
--opilane
CREATE TABLE opilane(
opilaneID int Primary key identity(1,1),
eesnimi varchar(50) NOT NULL,
perenimi varchar(50) NOT NULL,
isikukood varchar(50) NOT NULL,
aadress varchar(50));
SELECT * from opilane;
ALTER TABLE hindamine ADD oppeaineID int;
ALTER TABLE hindamine ADD opilaneID int;
INSERT INTO opilane(eesnimi, perenimi, isikukood, aadress)
VALUES ('Ilja', 'Burzak', '50606300223', '63764856');
--hindamine
CREATE TABLE hindamine(
hindamineID int Primary key identity(1,1),
kuupaev date,
hinne varchar(50));
ALTER TABLE hindamine ADD FOREIGN KEY (opilaneID) REFERENCES opilane(opilaneID);
INSERT INTO hindamine(kuupaev,opilaneID,oppeaineID,hinne) VALUES ('2024-09-04',252,525,5);
SELECT * from opilane;
SELECT * from hindamine;
DELETE from hindamine;
DROP table hindamine;
