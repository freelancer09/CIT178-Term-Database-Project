/* Final Project
Michael McLaughlin
CIT 178 */

USE FinalProject;

GO

INSERT INTO Genre VALUES(1, 'Role-playing')
INSERT INTO Genre VALUES(2, 'Stealth')
INSERT INTO Genre VALUES(3, 'First-person shooter')
INSERT INTO Genre VALUES(4, 'Action-adventure')
INSERT INTO Genre VALUES(5, 'Puzzle')

GO

INSERT INTO MediaType VALUES(1, 'CD')
INSERT INTO MediaType VALUES(2, 'DVD')
INSERT INTO MediaType VALUES(3, 'Blu-ray')
INSERT INTO MediaType VALUES(4, 'Digital')
INSERT INTO MediaType VALUES(5, 'Cartridge')

GO

INSERT INTO Developer VALUES(1, 'Game Freak')
INSERT INTO Developer VALUES(2, 'Konami Computer Entertainment Japan')
INSERT INTO Developer VALUES(3, 'Kojima Productions')
INSERT INTO Developer VALUES(4, 'Bungie')
INSERT INTO Developer VALUES(5, 'Naughty Dog')
INSERT INTO Developer VALUES(6, 'PopCap Games')

GO

INSERT INTO Publisher VALUES(1, 'Sony Computer Entertainment')
INSERT INTO Publisher VALUES(2, 'Nintendo')
INSERT INTO Publisher VALUES(3, 'Microsoft Game Studios')
INSERT INTO Publisher VALUES(4, 'Konami')
INSERT INTO Publisher VALUES(5, 'Electronic Arts')

GO

INSERT INTO Console VALUES(1, 'Playstation 1')
INSERT INTO Console VALUES(2, 'Playstation 2')
INSERT INTO Console VALUES(3, 'Playstation 3')
INSERT INTO Console VALUES(4, 'Playstation 4')
INSERT INTO Console VALUES(5, 'Playstation 5')
INSERT INTO Console VALUES(6, 'Playstation Portable')
INSERT INTO Console VALUES(7, 'Playstation Vita')
INSERT INTO Console VALUES(8, 'DS')
INSERT INTO Console VALUES(9, '3DS')
INSERT INTO Console VALUES(10, 'Game Cube')
INSERT INTO Console VALUES(11, 'Wii')
INSERT INTO Console VALUES(12, 'Wii U')
INSERT INTO Console VALUES(13, 'Switch')
INSERT INTO Console VALUES(14, 'Xbox')
INSERT INTO Console VALUES(15, 'Xbox 360')
INSERT INTO Console VALUES(16, 'Xbox One')
INSERT INTO Console VALUES(17, 'Xbox Series')

GO

INSERT INTO Game VALUES(1, 'Pokemon Diamond', 8, 2, 1, '2006-09-28', 5, 1)
INSERT INTO Game VALUES(2, 'Pokemon X', 9, 2, 1, '2013-10-12', 5, 1)
INSERT INTO Game VALUES(3, 'Metal Gear Solid', 1, 4, 2, '1998-09-03', 1, 2)
INSERT INTO Game VALUES(4, 'Metal Gear Solid 2: Sons of Liberty', 2, 4, 2, '2001-11-13', 2, 2)
INSERT INTO Game VALUES(5, 'Metal Gear Solid 3: Snake Eater', 2, 4, 2, '2004-11-17', 2, 2)
INSERT INTO Game VALUES(6, 'Metal Gear Solid 4: Guns of the Patriots', 3, 4, 3, '2008-06-12', 3, 2)
INSERT INTO Game VALUES(7, 'Halo: Combat Evolved', 14, 3, 4, '2004-11-09', 1, 3)
INSERT INTO Game VALUES(8, 'Halo 2', 14, 3, 4, '2004-11-09', 1, 3)
INSERT INTO Game VALUES(9, 'Uncharted: Drakes Fortune', 3, 1, 5, '2007-11-20', 3, 4)
INSERT INTO Game VALUES(10, 'Peggle', 3, 5, 6, '2009-11-19', 4, 5)