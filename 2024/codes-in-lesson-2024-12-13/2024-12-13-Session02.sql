select * from Playlist;



BEGIN TRANSACTION;

-- SQL COMMANDS

COMMIT TRANSACION;


BEGIN TRANSACTION;

-- SQL COMMANDS

ROLLBACK TRANSACION;



BEGIN TRANSACTION;
UPDATE Customer
SET FirstName='DENEME'
WHERE CustomerId=59;

UPDATE Genre 
SET NAME = 'DENEME'
WHERE GenreId  = 1;



-- SQL COMMANDS
COMMIT TRANSACION;

BEGIN TRANSACTION;
UPDATE Customer
SET FirstName='DENEME'
WHERE CustomerId=50;
-- SQL COMMANDS
COMMIT TRANSACION;