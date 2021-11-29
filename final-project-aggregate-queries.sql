/* Final Project Aggregate Queries 

USE FinalProject;
SELECT Developer.Name, COUNT(DISTINCT Game.GameID) AS [Games per Developer]
FROM Game JOIN Developer ON Game.DeveloperID = Developer.DeveloperID
GROUP BY Developer.Name
ORDER BY Developer.Name ASC;

USE FinalProject;
SELECT CAST(CAST(AVG(CAST(CAST(Game.Release AS DATETIME) AS INT)) AS DATETIME) AS DATE) AS [Average Release Date]
FROM Game;

USE FinalProject;
SELECT MIN(Game.Release) AS [Oldest Game]
FROM Game;

USE FinalProject;
SELECT MAX(Game.Release) AS [Newest Game]
FROM Game;

*/
