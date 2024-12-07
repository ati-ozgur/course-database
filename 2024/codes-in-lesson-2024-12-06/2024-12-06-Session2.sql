INSERT INTO Customer
( FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId)
VALUES( 'ABU Session 2', '', '', '', '', '', '', '', '', '', '', 0);

INSERT INTO Customer
( FirstName, LastName,  Email)
VALUES( 'ABU Session 2', 'LastName ABU', 'abu.com');

SELECT * FROM Customer c;

INSERT INTO Playlist (PlaylistId, Name)
VALUES(0, '');


INSERT INTO Playlist ( Name)
VALUES( 'Deneme');


INSERT INTO Playlist;

INSERT INTO Playlist DEFAULT VALUES;


SELECT * FROM Playlist;


INSERT INTO Playlist (Name) VALUES
    ('Name 1'),
    ('Name 2'),
    ('Name 3');
    
   
INSERT INTO Customer
(FirstName, LastName,  Email)
SELECT FirstName,LastName , Email
FROM Employee;

SELECT * FROM Customer c;



UPDATE Employee
SET City='DENEME'



UPDATE Employee
SET City='ROW BEŞ'
WHERE EmployeeId=5; 


SELECT COUNT(*) FROM Customer 
WHERE FirstName LIKE 'A%'

UPDATE Customer
SET City='ABU SESSION 2'
WHERE FirstName LIKE 'A%'; 

--SELECT COUNT(*) FROM Customer c 
DELETE FROM Customer
WHERE FirstName LIKE 'ABU%'; 




DROP TABLE ABU_SESSION2A;

CREATE TABLE ABU_SESSION2A (
        ID INTEGER PRIMARY KEY,
        Name TEXT,
        ColumnInteger INTEGER
);

INSERT INTO ABU_SESSION2A ( Name, ColumnInteger) VALUES('Atilla','Atilla');
SELECT * FROM Playlist p;

INSERT INTO Playlist ( Name) VALUES('Deneme Lock');


ALTER TABLE ABU_DERS ADD NewColumn2 INTEGER NOT NULL;

