/* Final Project
Michael McLaughlin
CIT 178 */

CREATE DATABASE FinalProject;

GO

USE FinalProject;

CREATE TABLE Game(
	GameID int NOT NULL,
	Name varchar(200) NOT NULL,
	ConsoleID int NOT NULL,
	PublisherID int,
	DeveloperID int,
	Release date,
	MediaTypeID int,
	GenreID int,
	PRIMARY KEY(GameID)
);

GO

CREATE TABLE Console(
	ConsoleID int NOT NULL,
	Name varchar(30) NOT NULL,
	PRIMARY KEY(ConsoleID)
);

GO

CREATE TABLE Publisher(
	PublisherID int NOT NULL,
	Name varchar(50) NOT NULL,
	PRIMARY KEY(PublisherID)
);

GO

CREATE TABLE Developer(
	DeveloperID int NOT NULL,
	Name varchar(50) NOT NULL,
	PRIMARY KEY(DeveloperID)
);

GO

CREATE TABLE MediaType(
	MediaTypeID int NOT NULL,
	Type varchar(30) NOT NULL,
	PRIMARY KEY(MediaTypeID)
);

GO

CREATE TABLE Genre(
	GenreID int NOT NULL,
	Name varchar(30) NOT NULL,
	PRIMARY KEY(GenreID)
);