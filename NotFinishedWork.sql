-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Aprill 25, 2024 kell 09:09 EL
-- Serveri versioon: 10.4.27-MariaDB
-- PHP versioon: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `lilledetrost`
--

DELIMITER $$
--
-- Toimingud
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `alterTable` (IN `tabeliNimi` VARCHAR(50), IN `veeruNimi` VARCHAR(50), IN `tyyp` VARCHAR(10))   BEGIN
SET @ddl=CONCAT('ALTER TABLE ', tabeliNimi, ' ADD COLUMN ', veeruNimi, ' ', tyyp);
PREPARE STMT FROM @ddl;
EXECUTE STMT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DropColumn` (IN `tabeliNimi` VARCHAR(50), IN `veeruNimi` VARCHAR(50))   BEGIN
SET @ddl=CONCAT('ALTER TABLE ', tabeliNimi, ' DROP COLUMN ', veeruNimi);
PREPARE STMT FROM @ddl;
EXECUTE STMT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `DropColumnCliendikaart` (IN `veeruNimi` VARCHAR(50))   BEGIN
SET @ddl=CONCAT('ALTER TABLE kliendikaart DROP COLUMN ', veeruNimi);
PREPARE STMT FROM @ddl;
EXECUTE STMT;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `get_kaup` (IN `str` VARCHAR(4))   BEGIN
	CASE str
    WHEN "sum1"
    THEN
    	SELECT kaup, SUM(hind) as "sum1"
        FROM kaup
        GROUP BY kaup
        HAVING SUM(hind) < 3000;
	WHEN "sum2"
    THEN
    	SELECT kaup, SUM(hind) as "sum2"
        FROM kaup
        GROUP BY kaup
        HAVING SUM(hind) > 3000 AND
SUM(hind) < 3000;
	WHEN "sum3"
    THEN
    	SELECT kaup, SUM(hind) as "sum3"
        FROM kaup
        GROUP BY kaup
        HAVING SUM(hind) >= 3000;
	END CASE;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `if` (IN `param1` INT)   BEGIN
DECLARE variable1 INT;
SET variable1 = param1 + 1;
	IF variable1 = 0 THEN
    	SELECT variable1;
    END IF;
IF param1 = 0 THEN
SELECT 'Parameter value = 0';
	ELSE
SELECT 'Parameter value <> 0';
	END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `kaartLisatamine` (IN `kaartID` VARCHAR(100), IN `kaartNimi` VARCHAR(25))   BEGIN
INSERT INTO kliendikaart (kliendikaartID, kliendikaart)
VALUES (kaartID, kaartNimi);
SELECT * FROM kliendikaart;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `kaupSuuremkuiSisestatud` (IN `sisestatudHind` INT)   BEGIN
	SELECT * FROM kaup
    WHERE hind > SisestatudHind;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `myykFind` (IN `SisestatudKliendikaartID` INT)   BEGIN
SELECT * FROM myyk
WHERE kliendikaartID=SisestatudKliendikaartID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tootajaKustutamine` (IN `kustutamisID` INT)   BEGIN

SELECT * FROM tootaja;
DELETE FROM tootaja
WHERE tootajaID=kustutamisID;
SELECT * FROM tootaja;

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tootajaLisamine` (IN `uusNimi` VARCHAR(25), IN `uusPere` VARCHAR(25), IN `uusKood` VARCHAR(11))   BEGIN
insert into tootaja (eesnimi, perekonnanimi, isikukood)
values (uusNimi, uusPere, uusKood);
SELECT * from tootaja;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tootajaNimisisaldabTaht` (IN `taht` CHAR(1))   BEGIN
Select * from tootaja
Where eesnimi LIKE Concat('%', taht , '%');
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tootajaOtsing1tahejargi` (IN `taht` CHAR(1))   BEGIN
Select * from tootaja
Where eesnimi LIKE Concat(taht , '%');
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tootajaUuendamine` (IN `sisestaID` INT, IN `uusKood` VARCHAR(11))   BEGIN

	UPDATE tootaja 
    SET isikukood=uusKood
	Where tootajaID=sisestaID;
    SELECT * from tootaja;
    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `VeeruKaart` (IN `veeruNimi` VARCHAR(50), IN `tyyp` VARCHAR(10))   BEGIN
SET @ddl=CONCAT('ALTER TABLE kliendikaart ADD COLUMN ', veeruNimi, ' ', tyyp);
PREPARE STMT FROM @ddl;
EXECUTE STMT;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kaup`
--
CREATE DATABASE LillTrost;
USE LillTrost;

CREATE TABLE kaup (
  kaupID int primary key identity(1,1),
  kaup varchar(15),
  kirjeldus varchar(100),
  hind int
) 
SELECT * FROM kaup;

--
-- Andmete tõmmistamine tabelile `kaup`
--

INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Grand Am', 'CL-Class', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Firebird', 'Z4', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Galant', 'SC', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Galant', 'Focus', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Tacoma', 'R8', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Thunderbird', 'Sentra', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Galant', 'Sunbird', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('6000', 'LX', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Legacy', 'Sedona', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Prelude', 'Tempest', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Legacy', 'Suburban 1500', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Bonneville', 'Eurovan', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Durango', 'Contour', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('IS-F', 'Silverado 2500', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Accord', 'B-Series', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Safari', 'Q', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Thunderbird', 'F150', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('207', 'Sierra 1500', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Oasis', 'Grand Prix', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Golf', 'Sierra 2500', 1000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('9-5', 'Suburban 2500', 2000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Avanti', 'Tribeca', 2000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Endeavor', 'GX', 2000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Esprit', 'M', 2000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('LX', 'Caravan', 2000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Jetta III', 'Scoupe', 2000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Fairlane', 'Dakota', 2000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Hemisfear', 'Elantra', 2000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('TT', 'Sebring', 2000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Camaro', 'M5', 2000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('Grand Cherokee', 'E250', 2000);
INSERT INTO kaup (kaup, kirjeldus, hind) VALUES ('430', 'Spyder', 2000);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kliendikaart`
--

CREATE TABLE `kliendikaart` (
  `kliendikaartID` int primary key identity(1,1) NOT NULL,
  `kliendikaart` varchar(20) DEFAULT NULL
)

--
-- Andmete tõmmistamine tabelile `kliendikaart`
--

INSERT INTO `kliendikaart` (`kliendikaartID`, `kliendikaart`) VALUES
(1, 'platinum'),
(2, 'silver'),
(3, 'gold'),
(4, 'diamon');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `myyk`
--

CREATE TABLE `myyk` (
  `myykID` int primary key identity(1,1) NOT NULL,
  `kuupaev` date DEFAULT NULL,
  `tootajaID` int(11) DEFAULT NULL,
  `kaupID` int(11) DEFAULT NULL,
  `kogus` int(11) DEFAULT NULL,
  `hind` decimal(7,2) DEFAULT NULL,
  `kliendikaartID` int(11) DEFAULT NULL
)

--
-- Andmete tõmmistamine tabelile `myyk`
--

INSERT INTO `myyk` (`myykID`, `kuupaev`, `tootajaID`, `kaupID`, `kogus`, `hind`, `kliendikaartID`) VALUES
(1, '0000-00-00', 1, NULL, 403, '354.00', 1),
(2, '0000-00-00', 2, NULL, 2139, '439.00', 2),
(3, '0000-00-00', 3, NULL, 79, '813.00', 3),
(4, '0000-00-00', 4, NULL, 60, '836.00', 1),
(5, '0000-00-00', 5, NULL, 5900, '887.00', 2),
(6, '0000-00-00', 6, NULL, NULL, '167.00', 3),
(7, '0000-00-00', 7, NULL, 217, '508.00', 1),
(8, '0000-00-00', 8, NULL, 1403, '944.00', 2),
(9, '0000-00-00', 9, NULL, 1631, '883.00', 3),
(10, '0000-00-00', 10, NULL, 1584, '341.00', 1),
(11, '0000-00-00', 11, NULL, 0, '949.00', 2),
(12, '0000-00-00', 12, NULL, 2460, '876.00', 3),
(13, '0000-00-00', 13, NULL, 290, '188.00', 1),
(14, '0000-00-00', 14, NULL, 2451, '103.00', 2),
(15, '0000-00-00', 15, NULL, 215, '343.00', 3),
(16, '0000-00-00', 16, NULL, 115, '985.00', 1),
(17, '0000-00-00', 17, NULL, 14, '795.00', 2),
(18, '0000-00-00', 18, NULL, 95, '868.00', 3),
(19, '0000-00-00', 19, NULL, NULL, '697.00', 1),
(20, '0000-00-00', 20, NULL, 146, '112.00', 2),
(21, '0000-00-00', 21, NULL, 344, '931.00', 3),
(22, '0000-00-00', 22, NULL, 761, '120.00', 1),
(23, '0000-00-00', 23, NULL, 289, '660.00', 2),
(24, '0000-00-00', 24, NULL, 729, '482.00', 3),
(25, '0000-00-00', 25, NULL, 3616, '617.00', 1),
(26, '0000-00-00', 26, NULL, 683, '392.00', 2),
(27, '0000-00-00', 27, NULL, 102, '741.00', 3),
(28, '0000-00-00', 28, NULL, 4250, '403.00', 1),
(29, '0000-00-00', 29, NULL, 354, '945.00', 2),
(30, '0000-00-00', 30, NULL, 454, '549.00', 3),
(31, '0000-00-00', 31, NULL, 509, '939.00', 1),
(32, '0000-00-00', 32, NULL, 91, '100.00', 2),
(33, '0000-00-00', 33, NULL, 9, '159.00', 3),
(34, '0000-00-00', 34, NULL, 10682, '534.00', 1),
(35, '0000-00-00', 35, NULL, 591, '754.00', 2),
(36, '0000-00-00', 36, NULL, 2798, '891.00', 3),
(37, '0000-00-00', 37, NULL, 33, '993.00', 1),
(38, '0000-00-00', 38, NULL, 2400, '400.00', 2),
(39, '0000-00-00', 39, NULL, 1050, '627.00', 3),
(40, '0000-00-00', 40, NULL, 14, '458.00', 1),
(41, '0000-00-00', 41, NULL, 9, '871.00', 2),
(42, '0000-00-00', 42, NULL, 602, '991.00', 3),
(43, '0000-00-00', 43, NULL, 279, '636.00', 1),
(44, '0000-00-00', 44, NULL, 151, '833.00', 2),
(45, '0000-00-00', 45, NULL, 1651, '261.00', 3),
(46, '0000-00-00', 46, NULL, 1011, '985.00', 1),
(47, '0000-00-00', 47, NULL, 618, '764.00', 2),
(48, '0000-00-00', 48, NULL, 85, '866.00', 3),
(49, '0000-00-00', 49, NULL, 622, '633.00', 1),
(50, '0000-00-00', 50, NULL, 1572, '445.00', 2);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `tootaja`
--

CREATE TABLE `tootaja` (
  `tootajaID` int primary key identity(1,1) NOT NULL,
  `eesnimi` varchar(20) DEFAULT NULL,
  `perekonnanimi` varchar(20) DEFAULT NULL,
  `isikukood` varchar(11) DEFAULT NULL
)

--
-- Andmete tõmmistamine tabelile `tootaja`
--

INSERT INTO `tootaja` (`tootajaID`, `eesnimi`, `perekonnanimi`, `isikukood`) VALUES
(1, 'Dmitri', 'Trostnikov', 'uuskooddd'),
(2, 'Freida', 'Stoner', 'kooodik'),
(3, 'Renie', 'Heatly', '36987-1514'),
(4, 'Lorenzo', 'Copo', '11822-0098'),
(5, 'Germaine', 'Halse', '64205-218'),
(6, 'Winn', 'Solly', '0597-0039'),
(7, 'Evania', 'Dufaur', '55714-2296'),
(8, 'Constanta', 'O\'Coskerry', '11084-111'),
(9, 'Rockie', 'Cleare', '12213-730'),
(10, 'Pacorro', 'McLaggan', '49999-248'),
(11, 'Marna', 'Elston', '24385-283'),
(12, 'Garik', 'Puddicombe', '54569-3756'),
(13, 'Julita', 'Fontenot', '68180-482'),
(14, 'Gavra', 'Blackham', '25021-668'),
(15, 'Marwin', 'Brickham', '72036-240'),
(16, 'Marleen', 'Bayfield', '44087-1225'),
(17, 'Kathryn', 'Bawdon', '0069-4026'),
(18, 'Grenville', 'Laingmaid', '43857-0083'),
(19, 'Meryl', 'Sleeman', '62257-575'),
(20, 'Alic', 'Fey', '55910-455'),
(21, 'Rebekah', 'Kupec', '35356-432'),
(22, 'Yolanthe', 'Kroch', '45802-950'),
(23, 'Trumann', 'Rattrie', '0268-0183'),
(24, 'Crichton', 'Duddan', '50006-200'),
(25, 'Jackqueline', 'Sopper', '55714-8014'),
(26, 'Lucias', 'Gribbins', '63187-053'),
(27, 'Gasparo', 'Quig', '57665-331'),
(28, 'Roldan', 'Binge', '60512-6032'),
(29, 'Julia', 'Arniz', '48951-1102'),
(30, 'Roberto', 'MacTrusty', '0781-1655'),
(31, 'Haydon', 'Habbin', '68180-843'),
(32, 'Angel', 'Burndred', '68001-185'),
(33, 'Chelsie', 'Lawling', '65862-022'),
(34, 'Robin', 'Roxbrough', '52125-980'),
(35, 'Axe', 'McIan', '16590-138'),
(36, 'Sherry', 'Griffitts', '59262-354'),
(37, 'Dixie', 'Philipeau', '10812-173'),
(38, 'Celene', 'Boyfield', '58411-226'),
(39, 'Roxie', 'De Bischof', '68647-201'),
(40, 'Amalee', 'Edser', '43353-876'),
(41, 'Jamaal', 'Nutbeem', '15127-933'),
(42, 'Wendi', 'Allston', '49349-350'),
(43, 'Giffy', 'Borg-Bartolo', '36800-103'),
(44, 'Cathrine', 'Chettoe', '35356-811'),
(45, 'Madeline', 'Mourant', '16714-682'),
(46, 'Sile', 'Helks', '54868-0762'),
(47, 'Elbertine', 'Fairhurst', '37205-671'),
(48, 'Mathias', 'McOrkill', '43386-712'),
(49, 'Kenon', 'Nafzger', '60429-112'),
(50, 'Delila', 'Glison', '63739-446'),
(51, 'Samuel', 'Caws', '53208-414'),
(53, 'test', 'tester', 'kodik');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `kaup`
--
ALTER TABLE `kaup`
  ADD PRIMARY KEY (`kaupID`);

--
-- Indeksid tabelile `kliendikaart`
--
ALTER TABLE `kliendikaart`
  ADD PRIMARY KEY (`kliendikaartID`);

--
-- Indeksid tabelile `myyk`
--
ALTER TABLE `myyk`
  ADD PRIMARY KEY (`myykID`),
  ADD KEY `tootajaID` (`tootajaID`),
  ADD KEY `kaupID` (`kaupID`),
  ADD KEY `kliendikaartID` (`kliendikaartID`);

--
-- Indeksid tabelile `tootaja`
--
ALTER TABLE `tootaja`
  ADD PRIMARY KEY (`tootajaID`),
  ADD UNIQUE KEY `isikukood` (`isikukood`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `kaup`
--
ALTER TABLE `kaup`
  MODIFY `kaupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT tabelile `kliendikaart`
--
ALTER TABLE `kliendikaart`
  MODIFY `kliendikaartID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT tabelile `myyk`
--
ALTER TABLE `myyk`
  MODIFY `myykID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT tabelile `tootaja`
--
ALTER TABLE `tootaja`
  MODIFY `tootajaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `myyk`
--
ALTER TABLE `myyk`
  ADD CONSTRAINT `myyk_ibfk_1` FOREIGN KEY (`tootajaID`) REFERENCES `tootaja` (`tootajaID`),
  ADD CONSTRAINT `myyk_ibfk_2` FOREIGN KEY (`kaupID`) REFERENCES `kaup` (`kaupID`),
  ADD CONSTRAINT `myyk_ibfk_3` FOREIGN KEY (`kliendikaartID`) REFERENCES `kliendikaart` (`kliendikaartID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
