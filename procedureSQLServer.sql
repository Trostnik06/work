CREATE TABLE tootaja(
id int primary key identity(1,1),
eesnimi varchar(25),
perenimi varchar(25),
isikukood varchar(11));
select * from tootaja;
--protseduuri loomine
CREATE PROCEDURE tootajaLisamine

@uusnimi varchar(25),
@uusPerenimi varchar(25),
@kood varchar(11)
as
BEGIN
	INSERT INTO tootaja(eesnimi, perenimi, isikukood)
	VALUES (@uusnimi, @uusPerenimi, @kood);
	select * from tootaja;
END;
EXEC tootajaLisamine 'Dmitri', 'Trostnikov', '1234';
EXEC tootajaLisamine 'Ilya', 'Burzak', '54321';
EXEC tootajaLisamine 'Donat', 'Kauler', '76342';
EXEC tootajaLisamine 'Dmitri', 'Huba', '98712';
EXEC tootajaLisamine 'Erik', 'Murdvee', '81241';

--protseduur, mis uuendab tootaja andmed
CREATE Procedure tootajaUuendus
@uusperenimi varchar(25),
@id int
AS
BEGIN
	SELECT * FROM tootaja;
	UPDATE tootaja SET perenimi=@uusperenimi
	WHERE id=@id;
	SELECT * FROM tootaja;
END;
--kävitamine
EXEC tootajaUuendus 'Test', 1;

--proc mis kustutab sisestatud if järgi
CREATE PROCEDURE tootajaKustuta
@id int
AS
BEGIN
	SELECT * FROM tootaja;
	DELETE FROM tootaja
	WHERE id=@id;
	SELECT * FROM tootaja;
END;

--käivitamine
EXEC tootajaKustuta 1;
