INSERT INTO Playlist (PlaylistId, Name) VALUES(0, '');
BEGIN TRANSACTION;
INSERT INTO Playlist (Name) VALUES('deneme');
COMMIT TRANSACTION;



SELECT * FROM Playlist p;

INSERT INTO Playlist (Name) VALUES('session 1 transaction consistency demo 1');


BEGIN TRANSACTION;
INSERT INTO Playlist (Name) VALUES('session 1 transaction consistency demo 1');
INSERT INTO Playlist (Name) VALUES('session 1 transaction consistency demo 2');
SELECT * FROM Playlist p;

INSERT INTO Playlist (PlaylistId, Name) VALUES(1, 'PK Error');
ROLLBACK TRANSACTION;

COMMIT TRANSACTION;

