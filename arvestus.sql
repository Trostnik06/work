CREATE TABLE Klient(
klientID int primary key identity (1,1),
eesnimi VARCHAR(50),
perenimi VARCHAR(50));

CREATE TABLE Ost(
ostID int primary key identity (1,1),
kliendi_id int,
toote_id int
FOREIGN KEY (kliendi_id) REFERENCES Klient(klientID),
FOREIGN KEY (toote_id) REFERENCES Toode(toodeID));

CREATE TABLE Toode(
toodeID int primary key identity (1,1),
tooteNimi VARCHAR(100),
ühikuhind NUMERIC,
ühik VARCHAR(20));

SELECT * FROM Klient;
SELECT * FROM Ost;
SELECT * FROM Toode;



CREATE TABLE logi(
logiID int primary key identity (1,1),
kuupaev DATETIME,
siestatudAndmed TEXT,
kasutaja VARCHAR(100));


CREATE TRIGGER OstiUuendamine
ON Ost
FOR UPDATE
AS
BEGIN
	INSERT INTO logi(kasutaja, kuupaev, siestatudAndmed)
	SELECT USER, GETDATE(),
	CONCAT('vanad: ', deleted.kliendi_id, ', ', deleted.toote_id,
	' uued: ', inserted.kliendi_id, ', ', inserted.toote_id)
	FROM deleted INNER JOIN inserted
	ON inserted.ostID=deleted.ostID;
END


CREATE TRIGGER OstiLisamine
ON Ost
FOR INSERT
AS
BEGIN
INSERT INTO logi(kasutaja, kuupaev, siestatudAndmed)
SELECT USER, GETDATE(), CONCAT('Sisestatud andmed: ', inserted.kliendi_id, inserted.toote_id)
FROM inserted;
END


CREATE PROCEDURE ToodeLisamine
@uusToodeNimi VARCHAR(100),
@uusUhikuhind NUMERIC,
@uusUhik VARCHAR(2)
AS
BEGIN
	INSERT INTO Toode(tooteNimi, ühikuhind, ühik)
	VALUES (@uusToodeNimi, @uusUhikuhind, @uusUhik);
	SELECT * FROM Toode;
END