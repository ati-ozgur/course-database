INSERT INTO Customer
( FirstName, LastName,  Email)
VALUES( 'Atilla', 'Özgür',  'aaa@com');


INSERT INTO Customer
( FirstName, LastName,  Email)
VALUES( 1, 2,  3);


INSERT INTO Customer
( FirstName, LastName,  Email, SupportRepId)
VALUES( 1, 2,  3, 'Atilla');


SELECT * FROM Customer c;


INSERT INTO Playlist (Name)
VALUES('Name playlist');


INSERT INTO Playlist ;

insert into Playlist DEFAULT VALUES;

INSERT INTO Playlist (Name) VALUES
    ('Name 1'),
    ('Name 2'),
    ('Name 3');

SELECT * FROM Playlist p;

INSERT INTO Customer
(FirstName, LastName,  Email)
SELECT FirstName,LastName, Email
FROM Employee;

SELECT * FROM Customer c;


UPDATE Employee
SET City='DENEME'



SELECT COUNT(*) FROM Customer 
WHERE FirstName LIKE 'A%'


UPDATE Customer
SET City='ABU'
WHERE FirstName LIKE 'A%';

SELECT COUNT(*) FROM Customer 
WHERE FirstName LIKE ''

DELETE FROM Customer 
WHERE FirstName LIKE ''

DELETE FROM Customer  
WHERE CustomerId =63



select * from Playlist;

INSERT INTO Playlist ( Name) VALUES( 'Deneme1');


