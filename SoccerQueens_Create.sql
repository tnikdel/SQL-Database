-- [Difference between MS SQL Server and MySQL] 
--   If we have ',' after end of line in a table, MySQL occurs Syntax Error. 
--   However, it works on MS SQL server.

-- 'Match' is a reserved keyword. So we cannot use 'Match' as a table name.
-- Instead 'Match', we decided using 'GameMatch'
CREATE DATABASE SoccerQueens;


CREATE TABLE GameMatch(
	MatchTime TIME NOT NULL,
	MatchDate DATE NOT NULL, 
	MatchLocation CHAR(30) NOT NULL,
	
	PRIMARY KEY (MatchTime, MatchDate, MatchLocation)
);

CREATE TABLE Team(
	TeamName CHAR(30) NOT NULL PRIMARY KEY,
	StartDate DATE,
	TeamLocation CHAR(30)
);
CREATE TABLE Championship(
	ChampionshipDate DATE NOT NULL, 
	ChampionshipName CHAR(30) NOT NULL,
	Host CHAR(30),
	WinTeamName CHAR(30),

	PRIMARY KEY (ChampionshipDate, ChampionshipName), 
	FOREIGN KEY (WinTeamName) REFERENCES Team(TeamName)  ON DELETE CASCADE
);
CREATE TABLE Player(
	PlayerID INT NOT NULL PRIMARY KEY,
	PlayerName CHAR(30),
	PlayerDoB DATE,
	PlayerNumber INT
);
CREATE TABLE Sponsor(
	CompanyName CHAR(30) NOT NULL PRIMARY KEY
);
CREATE TABLE Coach(
	CoachID INT NOT NULL PRIMARY KEY,
	CoachName CHAR(30),
	CoachDoB DATE
);

CREATE TABLE Championship_has_match(
	MatchTime TIME NOT NULL,
	MatchDate DATE NOT NULL,
	MatchLocation CHAR(30) NOT NULL,
	ChampionshipDate DATE, 
	ChampionshipName CHAR(30),
	Host CHAR(30),

	PRIMARY KEY (MatchTime, MatchDate, MatchLocation),
	FOREIGN KEY (MatchTime, MatchDate, MatchLocation) REFERENCES GameMatch(MatchTime, MatchDate, MatchLocation),
	FOREIGN KEY (ChampionshipDate, ChampionshipName) REFERENCES Championship(ChampionshipDate, ChampionshipName)  ON DELETE CASCADE 

);
CREATE TABLE Team_opponent_match(
	MatchTime TIME NOT NULL,
	MatchDate DATE NOT NULL,
	MatchLocation CHAR(30) NOT NULL,
	TeamName1 CHAR(30),
	Score1 INT,
	TeamName2 CHAR(30) ,
	Score2 INT,

	PRIMARY KEY (MatchTime, MatchDate, MatchLocation),
	FOREIGN KEY (MatchTime, MatchDate, MatchLocation) REFERENCES GameMatch(MatchTime, MatchDate, MatchLocation),
	FOREIGN KEY (TeamName1) REFERENCES Team(TeamName),
	FOREIGN KEY (TeamName2) REFERENCES Team(TeamName)	
);	

-- 'Role' is a reserved keyword. So we cannot use 'Role' as an attribute name.
-- Instead 'Role', we decided using 'PlayerRole'.
CREATE TABLE Player_playsin_match(
	PlayerID INT, 
	MatchTime TIME,
	MatchDate DATE,
	MatchLocation CHAR(30),
	PlayerRole CHAR(30),
	NumberOfGoals INT,

	PRIMARY KEY (PlayerID, MatchTime, MatchDate, MatchLocation),
	FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
	FOREIGN KEY (MatchTime, MatchDate, MatchLocation) REFERENCES GameMatch(MatchTime, MatchDate, MatchLocation)
);
CREATE TABLE Team_match_sponsorship(
	TeamName CHAR(30),
	MatchTime TIME,	
	MatchDate DATE,
	MatchLocation CHAR(30),
	SponsorSequence INT,
	Amount NUMERIC(8,2),

	PRIMARY KEY (TeamName, MatchTime, MatchDate, MatchLocation),
	FOREIGN KEY (TeamName) REFERENCES Team(TeamName),
	FOREIGN KEY (MatchTime, MatchDate, MatchLocation) REFERENCES GameMatch(MatchTime, MatchDate, MatchLocation)
);
CREATE TABLE Sponsor_sponsorship(
	CompanyName CHAR(30),
	SponsorSequence INT,
	Amount NUMERIC(8,2),

	PRIMARY KEY (CompanyName, SponsorSequence),
	FOREIGN KEY (CompanyName) REFERENCES Sponsor(CompanyName)
);
CREATE TABLE Player_playsfor_team(
	PlayerID INT,
	TeamName CHAR(30),
	PlayerStartDate DATE,
	PlayerEndDate DATE,

	PRIMARY KEY (PlayerID, teamName),
	FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
	FOREIGN KEY (TeamName) REFERENCES Team(TeamName)
);
CREATE TABLE Coach_worksfor_team(
	CoachID INT,
	TeamName CHAR(30),
    CoachStartTime DATE,
    CoachEndTime DATE,

	PRIMARY KEY (CoachID, TeamName),
	FOREIGN KEY (CoachID) REFERENCES Coach(CoachID),
	FOREIGN KEY (TeamName) REFERENCES Team(TeamName)
);




