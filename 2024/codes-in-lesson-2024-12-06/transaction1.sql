BEGIN TRANSACTION;
INSERT INTO Playlist (PlaylistId, Name) VALUES(0, '');

select * from Playlist;

UPDATE Playlist 
SET NAME = 'Inside Transaction'
WHERE PlaylistId =0;

select * from Playlist;

ROLLBACK TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO Playlist ( Name) VALUES( 'Deneme1');
select * from Playlist;
ROLLBACK TRANSACTION;

COMMIT TRANSACTION;

