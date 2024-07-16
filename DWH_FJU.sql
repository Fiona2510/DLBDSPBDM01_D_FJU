--Erstellen der Datenbank BookExchangeApp
CREATE DATABASE BookExchangeApp
use [BookExchangeApp]
GO
--Erstellen der Tabellen:
--Die Tabelle Book beinhaltet eine eindeutide BuchID, Titel, ISBN, Erscheinungsjahr, Verlag, AutorID, Sprache, Status
create Table [Book](
[BookID] [int] NOT NULL,
CONSTRAINT [PK_BookID] PRIMARY KEY CLUSTERED (BookID),
[Title] [nvarchar] (150) NOT NULL,
[ISBN] [nvarchar] (150) NULL,
[Year] [int] NULL,
[Verlag] [nvarchar](150) NULL,
[AutorID] [nvarchar] (150) NULL,
[Language] [nvarchar] (150) NULL,
[Status] [nvarchar] (50)  NULL
)ON [PRIMARY]

--Erstellen des Primary Keys [PK_BookID] für die Tabelle Book -> wurde in das Create ausgelagert
--ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [PK_BookID] PRIMARY KEY CLUSTERED 
--(
--	[BookID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--GO

--Die Tabelle User beinhaltet eine eindeutide Benutzer ID, Name, Vorname, Adresse und Kontaktmöglichkeit als Telefonummer und Mail der Benutzer
create Table [User] (
[UserID] [int] NOT NULL,
CONSTRAINT [PK_UserID] PRIMARY KEY CLUSTERED (UserID),
[RoleID] [int] NOT NULL,
[Surname] [nvarchar] (150) NULL,
[Name] [nvarchar] (150) NULL,
[Street]  [nvarchar] (150) NULL,
[Housenumber]  [nvarchar] (10) NULL,
[ZIPCode]  [int] NULL,
[City]  [nvarchar] (150) NULL,
[Mail]  [nvarchar] (150) NULL,
[Phonennumber]  [int] NULL
)ON [PRIMARY]

--Erstellen des Primary Keys [PK_BookID] für die Tabelle Book -> wurde in das Creat ausgelagert
--ALTER TABLE [dbo].[User] ADD  CONSTRAINT [PK_UserID] PRIMARY KEY CLUSTERED 
--(
--	[UserID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--GO
--Erstellen des FK
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [FK_RoleID] FOREIGN KEY (RoleID) REFERENCES dbo.[Role](RoleID)

--Die Tabelle Autor beinhaltet die eindeutige AutorenID und den Namen des Autors inkl. Erstellung des Primary Keys [PK_AutorID]
create Table [Autor] (
[AutorID] [nvarchar] (150) NOT NULL,
CONSTRAINT [PK_AutorID] PRIMARY KEY CLUSTERED (AutorID),
[Surname] [nvarchar] (150) NULL,
[Name] [nvarchar] (150) NULL
)ON [PRIMARY]

--Die Tabelle BookExchange beinhaltet eine eindeutide ID zu dem Ausleihvorgang, Buch, Benutzer, Datum und ein Kommentarfeld inkl. Erstellung des Primary Keys [PK_ExchangeID]
create Table [BookExchange] (
[ExchangeID]  [int] NOT NULL,
CONSTRAINT [PK_ExchangeID] PRIMARY KEY CLUSTERED (ExchangeID),
[BookID] [int] NOT NULL,
[UserID] [int] NOT NULL,
[DateFrom] [datetime] NULL,
[DateTo] [datetime] NULL,
[Comment] [nvarchar] (150) NULL
)ON [PRIMARY]

--Erstellen der Tabelle Role mit der eindetigen ID inkl. Erstellung des Primary Keys [PK_RoleID]
--Die Rollenbeschreibung ([RoleDescription]) gibt eine kurze Beschreibung der Funktion an, die Read und Write Felder definieren die genau Funktion 
create Table [Role](
[RoleID] [int] NOT NULL,
CONSTRAINT [PK_RoleID] PRIMARY KEY CLUSTERED (RoleID),
[RoleDescription] [nvarchar] (150) NULL,
[Read] [int] NOT NULL,
[Write] [int] NOT NULL
)ON [PRIMARY]


-- Datumstabelle mit einer DateID und dem Datum als Date Feld inkl. Jahr, Monat und Tag als int inkl. Erstellung des Primary Keys [PK_DateID]
create Table [Date](
[DateID] [int] NOT NULL,
CONSTRAINT [PK_DateID] PRIMARY KEY CLUSTERED (DateID),
[Date] date NOT NULL,
[Year] [int] NOT NULL,
[Month] [int] NOT NULL,
[Day] [int] NOT NULL
)ON [PRIMARY]
