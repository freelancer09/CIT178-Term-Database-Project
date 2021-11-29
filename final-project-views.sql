/* Final Project Views - Michael McLaughlin */


USE FinalProject;
SELECT * FROM VI_genre;
-- View #1


GO
CREATE VIEW VI_genre 
AS
SELECT Genre.Name, COUNT(Game.GenreID) AS 'Total'
FROM Game 
JOIN Genre ON Game.GenreID = Genre.GenreID
GROUP BY Genre.Name;

/*
-- View #2

GO
CREATE VIEW VI_released
AS
SELECT GameID, Name, Release
FROM Game
WHERE MONTH(Release) = MONTH(GETDATE());


-- View #3 

GO
CREATE VIEW VI_mediatypeconsole
AS
SELECT ConsoleID, MediaTypeID, COUNT(*) AS 'Total'
FROM Game
GROUP BY ConsoleID, MediaTypeID WITH ROLLUP;


-- View #4

GO
CREATE VIEW VI_games
AS
SELECT GameID, Name, Release
FROM Game;


-- Update View
GO
UPDATE VI_games
SET Release = '2099-12-31'
WHERE GameID = 6;
*/