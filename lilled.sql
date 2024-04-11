CREATE DATABASE lilledeTrost;
USE lilledeTrost;

--tabel tootaja
CREATE TABLE tootaja(
tootajaID INT PRIMARY KEY identity(1,1),
eesnimi VARCHAR(20),
perekonnanimi VARCHAR(20),
isikukood VARCHAR(11) UNIQUE,
)
SELECT * FROM tootaja;

INSERT INTO tootaja(eesnimi, perekonnanimi, isikukood)
VALUES ('Dmitri','Trostnikov','50606300223');

insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Freida', 'Stoner', '60429-319');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Renie', 'Heatly', '36987-1514');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Lorenzo', 'Copo', '11822-0098');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Germaine', 'Halse', '64205-218');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Winn', 'Solly', '0597-0039');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Evania', 'Dufaur', '55714-2296');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Constanta', 'O''Coskerry', '11084-111');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Rockie', 'Cleare', '12213-730');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Pacorro', 'McLaggan', '49999-248');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Marna', 'Elston', '24385-283');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Garik', 'Puddicombe', '54569-3756');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Julita', 'Fontenot', '68180-482');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Gavra', 'Blackham', '25021-668');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Marwin', 'Brickham', '72036-240');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Marleen', 'Bayfield', '44087-1225');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Kathryn', 'Bawdon', '0069-4026');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Grenville', 'Laingmaid', '43857-0083');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Meryl', 'Sleeman', '62257-575');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Alic', 'Fey', '55910-455');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Rebekah', 'Kupec', '35356-432');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Yolanthe', 'Kroch', '45802-950');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Trumann', 'Rattrie', '0268-0183');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Crichton', 'Duddan', '50006-200');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Jackqueline', 'Sopper', '55714-8014');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Lucias', 'Gribbins', '63187-053');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Gasparo', 'Quig', '57665-331');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Roldan', 'Binge', '60512-6032');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Julia', 'Arniz', '48951-1102');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Roberto', 'MacTrusty', '0781-1655');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Haydon', 'Habbin', '68180-843');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Angel', 'Burndred', '68001-185');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Chelsie', 'Lawling', '65862-022');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Robin', 'Roxbrough', '52125-980');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Axe', 'McIan', '16590-138');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Sherry', 'Griffitts', '59262-354');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Dixie', 'Philipeau', '10812-173');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Celene', 'Boyfield', '58411-226');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Roxie', 'De Bischof', '68647-201');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Amalee', 'Edser', '43353-876');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Jamaal', 'Nutbeem', '15127-933');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Wendi', 'Allston', '49349-350');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Giffy', 'Borg-Bartolo', '36800-103');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Cathrine', 'Chettoe', '35356-811');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Madeline', 'Mourant', '16714-682');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Sile', 'Helks', '54868-0762');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Elbertine', 'Fairhurst', '37205-671');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Mathias', 'McOrkill', '43386-712');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Kenon', 'Nafzger', '60429-112');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Delila', 'Glison', '63739-446');
insert into tootaja (eesnimi, perekonnanimi, isikukood) values ('Samuel', 'Caws', '53208-414');

SELECT * FROM tootaja;

--kaup
CREATE TABLE kaup(
kaupID INT PRIMARY KEY identity(1,1),
kaup VARCHAR(15),
kirjeldus VARCHAR (100),
);


insert into kaup (kaup, kirjeldus) values ('Grand Am', 'CL-Class');
insert into kaup (kaup, kirjeldus) values ('Firebird', 'Z4');
insert into kaup (kaup, kirjeldus) values ('Ram 2500', 'SC');
insert into kaup (kaup, kirjeldus) values ('Galant', 'Focus');
insert into kaup (kaup, kirjeldus) values ('Tacoma', 'R8');
insert into kaup (kaup, kirjeldus) values ('Thunderbird', 'Sentra');
insert into kaup (kaup, kirjeldus) values ('6 Series', 'Sunbird');
insert into kaup (kaup, kirjeldus) values ('6000', 'LX');
insert into kaup (kaup, kirjeldus) values ('Legacy', 'Sedona');
insert into kaup (kaup, kirjeldus) values ('Prelude', 'Tempest');
insert into kaup (kaup, kirjeldus) values ('Legacy', 'Suburban 1500');
insert into kaup (kaup, kirjeldus) values ('Bonneville', 'Eurovan');
insert into kaup (kaup, kirjeldus) values ('Durango', 'Contour');
insert into kaup (kaup, kirjeldus) values ('IS-F', 'Silverado 2500');
insert into kaup (kaup, kirjeldus) values ('Accord', 'B-Series');
insert into kaup (kaup, kirjeldus) values ('Safari', 'Q');
insert into kaup (kaup, kirjeldus) values ('Thunderbird', 'F150');
insert into kaup (kaup, kirjeldus) values ('207', 'Sierra 1500');
insert into kaup (kaup, kirjeldus) values ('Oasis', 'Grand Prix');
insert into kaup (kaup, kirjeldus) values ('Golf', 'Sierra 2500');
insert into kaup (kaup, kirjeldus) values ('9-5', 'Suburban 2500');
insert into kaup (kaup, kirjeldus) values ('Avanti', 'Tribeca');
insert into kaup (kaup, kirjeldus) values ('Endeavor', 'GX');
insert into kaup (kaup, kirjeldus) values ('Esprit', 'M');
insert into kaup (kaup, kirjeldus) values ('LX', 'Caravan');
insert into kaup (kaup, kirjeldus) values ('Jetta III', 'Scoupe');
insert into kaup (kaup, kirjeldus) values ('Fairlane', 'Dakota');
insert into kaup (kaup, kirjeldus) values ('Hemisfear', 'Elantra');
insert into kaup (kaup, kirjeldus) values ('TT', 'Sebring');
insert into kaup (kaup, kirjeldus) values ('Camaro', 'M5');
insert into kaup (kaup, kirjeldus) values ('Grand Cherokee', 'E250');
insert into kaup (kaup, kirjeldus) values ('430', 'Spyder');

SELECT * FROM kaup;

--table kliendikaart
CREATE TABLE kliendikaart(
kliendikaartID INT Primary key identity(1,1),
kliendikaart VARCHAR(20)
)
DROP Table kliendikaart;
select *from kliendikaart;

INSERT INTO kliendikaart(kliendikaart)
VALUES ('platinum'), ('silver'), ('gold');

--tabel myyk
CREATE TABLE myyk(
myykID INT PRIMARY KEY identity(1,1),
kuupaev date,
tootajaID int,
kaupID int,
kogus int,
hind decimal(7,2),
kliendikaartID int,
FOREIGN KEY (tootajaID) REFERENCES tootaja(tootajaID),
FOREIGN KEY (kaupID) REFERENCES kaup(kaupID),
FOREIGN KEY (kliendikaartID) REFERENCES kliendikaart(kliendikaartID));
select * from myyk;
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('5/18/2023', 1, '403', 354, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('7/24/2023', 2, '2139', 439, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('1/3/2024', 3, '79', 813, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('10/11/2023', 4, '60', 836, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('12/9/2023', 5, '5900', 887, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('2/9/2024', 6, null, 167, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('4/24/2023', 7, '217', 508, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('3/17/2024', 8, '1403', 944, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('12/27/2023', 9, '1631', 883, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('7/23/2023', 10, '1584', 341, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('8/19/2023', 11, '0', 949, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('4/29/2023', 12, '2460', 876, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('7/7/2023', 13, '290', 188, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('2/1/2024', 14, '2451', 103, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('3/15/2024', 15, '215', 343, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('10/11/2023', 16, '115', 985, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('3/9/2024', 17, '14', 795, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('2/17/2024', 18, '95', 868, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('10/22/2023', 19, null, 697, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('4/26/2023', 20, '146', 112, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('8/11/2023', 21, '344', 931, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('7/17/2023', 22, '761', 120, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('11/18/2023', 23, '289', 660, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('12/13/2023', 24, '729', 482, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('12/16/2023', 25, '3616', 617, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('11/18/2023', 26, '683', 392, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('3/30/2024', 27, '102', 741, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('1/24/2024', 28, '4250', 403, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('4/23/2023', 29, '354', 945, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('5/20/2023', 30, '454', 549, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('8/20/2023', 31, '509', 939, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('3/5/2024', 32, '91', 100, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('9/29/2023', 33, '9', 159, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('5/9/2023', 34, '10682', 534, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('7/2/2023', 35, '591', 754, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('2/9/2024', 36, '2798', 891, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('4/21/2023', 37, '33', 993, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('9/19/2023', 38, '2400', 400, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('8/31/2023', 39, '1050', 627, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('8/19/2023', 40, '14', 458, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('6/27/2023', 41, '9', 871, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('12/26/2023', 42, '602', 991, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('7/3/2023', 43, '279', 636, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('2/19/2024', 44, '151', 833, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('10/22/2023', 45, '1651', 261, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('12/18/2023', 46, '1011', 985, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('1/19/2024', 47, '618', 764, 2);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('7/18/2023', 48, '85', 866, 3);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('2/10/2024', 49, '622', 633, 1);
insert into myyk (kuupaev, tootajaID, kogus, hind, kliendikaartID) values ('5/14/2023', 50, '1572', 445, 2);

--tabel (not finished)
CREATE TABLE kojuvedu(
veduID INT PRIMARY KEY identity(1,1),
aadress varchar(50),
kuupaev date,
kellaeg varchar(50),
kaupID int,
);
