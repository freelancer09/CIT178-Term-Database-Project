/* Final Project
Michael McLaughlin
CIT 178 */

USE FinalProject;

GO

CREATE INDEX idx_Console on Game(ConsoleID);

GO

CREATE INDEX idx_Publisher on Game(PublisherID);

GO

CREATE INDEX idx_Developer on Game(DeveloperID);

GO

CREATE INDEX idx_MediaType on Game(MediaTypeID);

GO

CREATE INDEX idx_Genre on Game(GenreID);