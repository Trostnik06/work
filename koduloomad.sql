CREATE TABLE koduloomad(
koduloomadID INT PRIMARY KEY identity(1,1),
koduloomadNIMI VARCHAR(20),
vanus int,
peremees VARCHAR(20),
tervis VARCHAR(20)
)
SELECT * FROM koduloomad;
INSERT INTO koduloomad(koduloomadNIMI, vanus, peremees, tervis) VALUES ('Musja', '11', 'Dmitri', 'Hästi');


--kirje lisamine
CREATE PROCEDURE kirjeLisamine
@koduloomadNIMI VARCHAR(20),
@vanus int,
@peremees VARCHAR(20),
@tervis VARCHAR(20)
AS
BEGIN
INSERT INTO koduloomad(koduloomadNIMI, vanus, peremees, tervis) VALUES (@koduloomadNIMI, @vanus, @peremees, @tervis);
SELECT * FROM koduloomad;
END

EXEC kirjeLisamine'Volt', '9', 'Daniel', 'Hästi';

--Otsi Jänuse Jäargi
CREATE PROCEDURE OtsiJänuseJäargi
@sisestatudVanus int
AS
BEGIN
SELECT * FROM koduloomad
WHERE vanus=@sisestatudVanus;
END
EXEC OtsiJänuseJäargi '10';

--Otsige Kirja Järgi
CREATE PROCEDURE OtsiJKirjaJäargi
@sisestatudKirje VARCHAR(1)
AS
BEGIN
SELECT * FROM koduloomad
WHERE koduloomadNimi LIKE @sisestatudKirje + '%';
END

EXEC OtsiJKirjaJäargi 'A';

--Otsige keskmise vanuse järgi
CREATE PROCEDURE keskmineVanus
AS
BEGIN
SELECT AVG(vanus) AS kesk_vanus
FROM koduloomad;
END
EXEC keskmineVanus;

--Kustuta
CREATE PROCEDURE kustuta
@sisestatudID int
AS
BEGIN
DELETE FROM koduloomad WHERE koduloomadID = @sisestatudID;
SELECT * FROM koduloomad;
END
EXEC kustuta '7';
