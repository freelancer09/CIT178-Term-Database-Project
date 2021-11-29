/* Final Project Procedures */

USE FinalProject

-- Create a stored procedure that retrieves and displays data 

/*
GO
CREATE PROC spGames
AS
SELECT * FROM Game
ORDER BY Release;
GO
EXEC spGames;
*/

-- Create a stored procedure that takes 1 or more input parameters and retrieves results based on the value

/*
GO
CREATE PROC spGetConsole
	@ConsoleID int
AS
BEGIN
	SELECT * FROM Game
	WHERE ConsoleID = @ConsoleID;
END
GO
EXEC spGetConsole 3;
*/

-- Create a stored procedure that takes 1 or more input parameters and includes 1 or more output parameters 

/*
GO
CREATE PROC spGetGame
	@ID int,
	@PublisherID int OUTPUT,
	@DeveloperID int OUTPUT,
	@Name varchar(200) OUTPUT
AS
BEGIN
	SELECT @PublisherID = PublisherID,
		@DeveloperID = DeveloperID,
		@Name = Name
	FROM Game
	WHERE GameID = @ID
END
GO
DECLARE @gameID int, @gamePublisher int, @gameDeveloper int, @gameName varchar(200)

EXEC spGetGame 9, @gamePublisher OUTPUT, @gameDeveloper OUTPUT, @gameName OUTPUT

SELECT @gameName AS 'Name', @gamePublisher AS 'Publisher', @gameDeveloper AS 'Developer';
*/

-- Create a stored procedure that includes a return value

/*
GO
CREATE PROC spGameCount
AS
DECLARE @GameCount int;
SELECT @GameCount = COUNT(*)
FROM Game
RETURN @GameCount;
GO

DECLARE @GameCount int;
EXEC @GameCount = spGameCount;
PRINT 'There are ' + CONVERT(varchar, @GameCount) + ' games in your database.';
*/


/* Final Project User Defined Functions */

-- Create a scalar function that accepts an argument. 

/*
GO
CREATE FUNCTION fnPublisherID (@PublisherName varchar(200))
	RETURNS int
BEGIN
	RETURN (SELECT PublisherID FROM Publisher WHERE Name = @PublisherName);
END;
GO

SELECT * FROM Game WHERE PublisherID = dbo.fnPublisherID('Sony Computer Entertainment');
*/

-- Create a table function that accepts at least one argument

/*
GO
CREATE FUNCTION fnReleasedAfter (@DateCutOff date = '1900-01-01')
	RETURNS table
	RETURN (SELECT * FROM Game WHERE Release > @DateCutOff);

GO
SELECT * FROM dbo.fnReleasedAfter('2010-01-01');
*/


/* Final Project Triggers */

-- Create a trigger that will add deleted data from one of your tables into an archive or transaction table

/*
GO
SELECT * INTO GameLog FROM Game WHERE 1=0;
GO
ALTER TABLE GameLog ADD Activity varchar(50);
GO
CREATE TRIGGER GameLog_Delete ON Game
AFTER DELETE 
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @GameID int
	DECLARE @Name varchar(200)
	DECLARE @ConsoleID int
	DECLARE @PublisherID int
	DECLARE @DeveloperID int
	DECLARE @Release date
	DECLARE @MediaTypeID int
	DECLARE @GenreID int

	SELECT @GameID=DELETED.GameID, @Name=DELETED.Name, @ConsoleID=DELETED.ConsoleID, @PublisherID=DELETED.PublisherID,
			@DeveloperID=DELETED.DeveloperID, @Release=DELETED.Release, @MediaTypeID=DELETED.MediaTypeID, @GenreID=DELETED.GenreID
			FROM DELETED
	INSERT INTO GameLog VALUES(@GameID, @Name, @ConsoleID, @PublisherID, @DeveloperID, @Release, @MediaTypeID, @GenreID, 'Deleted')
END
*/

-- Create an insert trigger that adds to the archive or transaction table when a row is inserted

/*
GO
CREATE TRIGGER GameLog_Insert ON Game
AFTER INSERT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @GameID int
	DECLARE @Name varchar(200)
	DECLARE @ConsoleID int
	DECLARE @PublisherID int
	DECLARE @DeveloperID int
	DECLARE @Release date
	DECLARE @MediaTypeID int
	DECLARE @GenreID int

	SELECT @GameID=INSERTED.GameID, @Name=INSERTED.Name, @ConsoleID=INSERTED.ConsoleID, @PublisherID=INSERTED.PublisherID,
			@DeveloperID=INSERTED.DeveloperID, @Release=INSERTED.Release, @MediaTypeID=INSERTED.MediaTypeID, @GenreID=INSERTED.GenreID
			FROM INSERTED
	INSERT INTO GameLog VALUES(@GameID, @Name, @ConsoleID, @PublisherID, @DeveloperID, @Release, @MediaTypeID, @GenreID, 'Inserted')
END
*/

-- Create an update trigger that adds to the archive or transaction table when a row is modified

/*
GO
CREATE TRIGGER GameLog_Update ON Game
AFTER UPDATE
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @GameID int
	DECLARE @Name varchar(200)
	DECLARE @ConsoleID int
	DECLARE @PublisherID int
	DECLARE @DeveloperID int
	DECLARE @Release date
	DECLARE @MediaTypeID int
	DECLARE @GenreID int

	SELECT @GameID=INSERTED.GameID, @Name=INSERTED.Name, @ConsoleID=INSERTED.ConsoleID, @PublisherID=INSERTED.PublisherID,
			@DeveloperID=INSERTED.DeveloperID, @Release=INSERTED.Release, @MediaTypeID=INSERTED.MediaTypeID, @GenreID=INSERTED.GenreID
			FROM INSERTED
	INSERT INTO GameLog VALUES(@GameID, @Name, @ConsoleID, @PublisherID, @DeveloperID, @Release, @MediaTypeID, @GenreID, 'Updated')
END
*/