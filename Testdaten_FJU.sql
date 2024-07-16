
--Testdaten inkl. Testabfragen
--Einfügen der Testdatein in die Tabelle Book (Infos entnommen von: https://www.thalia.de/)
Insert INTO Book ([BookID],[Title],[ISBN],[Year],[Verlag],[AutorID],[Language],[Status])
VALUES
(1, 'Der Herr der Ringe', '978-3-608-98701-0', 2019, 'Klett Cotta', 1, 'DE', ''),
(2, 'Der Hobbit', '978-3-608-93818-0', 2010, 'Klett Cotta', 1, 'DE', ''),
(3, 'Der Totenarzt', '978-3-548-06448-2', 2024, 'Ullstein Taschenbuch', 2, 'DE', ''),
(4, 'Golden Bay - How it hurts', '978-3-328-11079-8', 2024, 'Penguin', 3, 'DE', ''),
(5, 'Der Totenarzt', '978-3-548-06448-2', 2024, 'Ullstein Taschenbuch', 2, 'DE', ''),
(6, 'Mein Lotta-Leben', '978-3-401-60653-8', 2024, 'Arena', 4, 'DE', ''),
(7, 'Twisted Love', '978-0-349-43427-8', 2022, 'Little, Brown Books for Young Readers', 5, 'EN', ''),
(8, 'Things We Never Got Over', '978-1-399-71374-0', 2024, 'Hodder And Stoughton', 6, 'EN', ''),
(9, 'Pizza Passion', '978-3-95453-314-5', 2024, 'Becker Joest Volk Verlag', 7, 'DE', ''),
(10, 'Günstig gut einkaufen', '978-3-517-10271-9', 2024, 'Südwest Verlag', 8, 'DE', '')

--Einfügen der Testdatein in die Tabelle User
INSERT INTO [User] ([UserID],[RoleID],[Surname],[Name],[Street],[Housenumber],[ZIPCode],[City],[Mail],[Phonenumber])
VALUES
(1,1,'Walter','Kram','Hauptstrasse','2a',20114,'Burgdorf','walter123@mail.de',041057542),
(2,2,'Fiona','Junius','Hamburgerstr.','20',21114,'Rosendorf','fjunius@mail.de',016224501655),
(3,3,'Hilde','Meyer','Grünestrasse','257',22774,'hamburg','',0410921545),
(4,1,'Hein','Blöd','Unterwasser','1',58114,'Seestadt','Heindererste@mail.de',NULL),
(5,1,'Lisa','Bloau','','',NULL,'',NULL),
(6,1,'Jessica','Schuh','Reiterweg','25',20114,'Burgdorf','schuhje@mail.de',NULL),
(7,1,'Alina','Braun','Reesestrabr.','43b',22152,'Hamburg','Alinaaaa@mail.de',01524485122),
(8,1,'Hilde','Kram','Hauptstrasse','2a',20114,'Burgdorf','hilde456@mail.de',041057542),
(9,1,'Holger','Stein','Weg','2',21254,'Stadt','',04105754245),
(10,1,'Zweiberg','Wesserweg','150',58652,'Hohenfeld','',01522451225)

--Einfügen der Testdatein in die Tabelle Autor
INSERT INTO Autor ([AutorID], [Surname], [Name])
VALUES
(1, 'Tolkien', 'J. R. R.'),
(2, 'Carter', 'Chris'),
(3, 'Iosivoni', 'Bianca'),
(4, 'Pantermüller', 'Alice'),
(5, 'Huang', 'Ana'),
(6, 'Score', 'Lucy'),
(7, 'Teichmann', 'Sven'),
(8, 'Sabersky', 'Annette'),
(9, 'Shakespeare', 'William'),
(10, 'Christie', 'Agatha');

--Einfügen der Testdatein in die Tabelle BookExchange
INSERT INTO BookExchange ([ExchangeID], [BookID], [UserID], [DateFrom], [DateTo], [Comment])
VALUES
(1, 10, 1, 20240115, 20240118, NULL),
(2, 4, 3, 20230426, 20230429, NULL),
(3, 1, 5, 20240227, 20240229, NULL),
(4, 8, 6, 20240128, 20240502, NULL),
(5, 5, 4, 20240210, 20240501, NULL),
(6, 6, 7, 20240229, 20240403, NULL),
(7, 1, 1, 20240401, 20240504, NULL),
(8, 8, 9, 20240503, 20240505, NULL),
(9, 10, 8, 20240503, 20240506, NULL),
(10, 2, 1, 20240504, 20240507, NULL);

--Einfügen der Testdatein in die Tabelle Role
Insert Into [Role] ([RoleID],[RoleDescription],[Read],[Write])
Values
(1,'Administrator',1,1),
(2,'User',1,0),
(3,'Viewer',0,0);

--Einfügen der Testdatein in die Tabelle Date
INSERT INTO Date ([DateID], [Date], [Year], [Month], [Day])
VALUES
(20240101, '2024-01-01', 2024, 1, 1),
(20240102, '2024-01-02', 2024, 1, 2),
(20240103, '2024-01-03', 2024, 1, 3),
(20240104, '2024-01-04', 2024, 1, 4),
(20240105, '2024-01-05', 2024, 1, 5),
(20240106, '2024-01-06', 2024, 1, 6),
(20240107, '2024-01-07', 2024, 1, 7),
(20240108, '2024-01-08', 2024, 1, 8),
(20240109, '2024-01-09', 2024, 1, 9),
(20240110, '2024-01-10', 2024, 1, 10);

--Abfrage der Daten aus Tabelle Book
SELECT [BookID]
      ,[Title]
      ,[ISBN]
      ,[Year]
      ,[Verlag]
      ,[AutorID]
      ,[Language]
      ,[Status]
  FROM [dbo].[Book]
--Abfrage der Daten aus Tabelle User
select   [UserID]
		,[RoleID]
		,[Surname]
		,[Name]
		,[Street]
		,[Housenumber]
		,[ZIPCode]
		,[City]
		,[Mail]
		,[Phonenumber]
from [dbo].[User]
--Abfrage der Daten aus Tabelle Autor
select [AutorID]
	 , [Surname]
	 , [Name]
from [dbo].[Autor]
--Abfrage der Daten aus Tabelle BookExchange
Select [ExchangeID]
	 , [BookID]
	 , [UserID]
	 , [DateFrom]
	 , [DateTo]
	 , [Comment]
from [dbo].[BookExchange]
--Abfrage der Daten aus Tabelle Role
select [RoleID]
	  ,[RoleDescription]
	  ,[Read]
	  ,[Write]
From [dbo].[Role]
--Abfrage der Daten aus Tabelle Date
select [DateID]
	 , [Date]
	 , [Year]
	 , [Month]
	 , [Day]
from [dbo].[Date]

-- Testfälle: Beziehung Book und Autor
SELECT Title, Verlag, Name, Surename 
FROM [Book]
LEFT JOIN [Autor] ON Book.AutorID = Autor.AutorID;

-- Testfälle: Beziehung BookExchange und Book
SELECT ExchangeID, BookExchange.BookId, Title
FROM [BookExchange]
LEFT JOIN [Book] ON BookExchange.BookID = Book.BookID;

-- Testfälle: Beziehung BookExchange und Date
SELECT ExchangeId, Date_.* FROM BookExchange
LEFT JOIN [DATE] ON BookExchange.DateFrom = [Date].[DateID]
WHERE ExchangeID = 1

SELECT ExchangeId, Date_.* FROM BookExchange
LEFT JOIN [DATE] ON BookExchange.DateFrom = [Date].[DateID]
WHERE ExchangeID = 1


-- Testfälle: Beziehung BookExchange und User
SELECT ExchangeID, BookExchange.UserId, [Name], Surname, Street, housenumber, City
 FROM BookExchange
 LEFT JOIN [User] on BookExchange.UserID = [User].UserID

-- Testfälle: Beziehung User und Role
SELECT [User].UserId, [Name], [User].RoleID, RoleDescription
FROM [User]
LEFT JOIN [Role] ON [User].RoleID = [Role].RoleID;

--Testfall zur Vollständigen Überprüfbarkeit des Datenbankmodells indem alle Tabellen über Left Joins verbunden werden und die Verknüpfbarkeit beweisst
SELECT BookExchange.BookID
	 , BookExchange.ExchangeID
	 , [Date].[Date]
	 , Book.Title
	 , Autor.[Name] as AutorName
	 , [User].[Name] as UserName
	 , [Role].RoleDescription
FROM BookExchange
LEFT JOIN [DATE] ON BookExchange.DateFrom = [Date].[DateID]
LEFT JOIN [Book] ON BookExchange.BookID = Book.BookID
LEFT JOIN [Autor] ON Book.AutorID = Autor.AutorID
LEFT JOIN [User] on BookExchange.UserID = [User].UserID
LEFT JOIN [Role] ON [User].RoleID = [Role].RoleID;