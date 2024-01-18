INSERT INTO Team VALUES('Tiger', '1950-01-01', 'Toronto');
INSERT INTO Team VALUES('Puma', '1950-01-01', 'Vancouver');
INSERT INTO Team VALUES('Lion', '1970-09-11', 'Victoria');
INSERT INTO Team VALUES('Cougar', '1968-02-19', 'Montereal');
INSERT INTO Team VALUES('Jaguar', '1988-05-05', 'Montereal');
INSERT INTO Team VALUES('WildCat', '1988-05-05', 'Montereal');

SELECT * FROM Team;

INSERT INTO Player VALUES(200320, 'Draculaura', '1992-05-05', 7);
INSERT INTO Player VALUES(300320, 'Clawdeen Wolf', '1990-01-01', 12);
INSERT INTO Player VALUES(300321, 'Draculaura', '1990-01-01', 12);
INSERT INTO Player VALUES(300322, 'Frankie Stein', '1992-05-05', 5);
INSERT INTO Player VALUES(300323, 'Clawdeen Wolf', '1992-08-01', 11);

SELECT * FROM Player;

INSERT INTO Sponsor VALUES('LG');
INSERT INTO Sponsor VALUES('SAMSUNG');
INSERT INTO Sponsor VALUES('AMAZON');
INSERT INTO Sponsor VALUES('APPLE');
INSERT INTO Sponsor VALUES('GOOGLE');

SELECT * FROM Sponsor;

INSERT INTO Coach VALUES(23007, 'Cleo', '1977-02-02');
INSERT INTO Coach VALUES(23008, 'Cleo', '1980-12-02');
INSERT INTO Coach VALUES(23009, 'Toralei', '1980-12-02');
INSERT INTO Coach VALUES(23010, 'William', '1981-03-07');
INSERT INTO Coach VALUES(23011, 'Mattel', '1981-03-07');

SELECT * FROM Coach;

INSERT INTO Championship VALUES('2015-02-01','Canadian Championship', 'Canada Soccer Society', 'Puma');
INSERT INTO Championship VALUES('2016-05-18','British Colmumbia Cup', 'Canada Soccer Society', 'Cougar');
INSERT INTO Championship VALUES('2017-01-01','National Soccer Cup', 'Canada Soccer Society', 'Cougar');
INSERT INTO Championship VALUES('2018-01-01','British Colmumbia Cup', 'National Sports', 'Jaguar');
INSERT INTO Championship VALUES('2019-08-08','British Colmumbia Cup', 'National Sports', 'Puma');

SELECT * FROM Championship;

INSERT INTO GameMatch VALUES('11:30:00', '2015-02-01', 'Seoul');
INSERT INTO GameMatch VALUES('11:30:00', '2015-02-01', 'Pusan');
INSERT INTO GameMatch VALUES('11:00:00', '2016-05-18', 'Incheon');
INSERT INTO GameMatch VALUES('11:00:00', '2016-05-10', 'Incheon');
INSERT INTO GameMatch VALUES('18:30:00', '2017-02-07', 'Jeju');
INSERT INTO GameMatch VALUES('15:30:00', '2017-02-07', 'Jeju');
INSERT INTO GameMatch VALUES('15:30:00', '2018-01-07', 'Daejeon');
INSERT INTO GameMatch VALUES('15:30:00', '2019-08-10', 'Daejeon');

SELECT * FROM GameMatch;

INSERT INTO Championship_has_match VALUES('11:30:00', '2015-02-01', 'Seoul', '2015-02-01','Canadian Championship','Canada Soccer Society'); 
INSERT INTO Championship_has_match VALUES('11:30:00', '2015-02-01', 'Pusan', '2015-02-01','Canadian Championship','Canada Soccer Society');
INSERT INTO Championship_has_match VALUES('11:00:00', '2016-05-18', 'Incheon', '2016-05-18','British Colmumbia Cup', 'Canada Soccer Society');
INSERT INTO Championship_has_match VALUES('11:00:00', '2016-05-10', 'Incheon', '2016-05-18','British Colmumbia Cup', 'Canada Soccer Society');
INSERT INTO Championship_has_match VALUES('18:30:00', '2017-02-07', 'Jeju', '2017-01-01','National Soccer Cup', 'Canada Soccer Society');
INSERT INTO Championship_has_match VALUES('15:30:00', '2017-02-07', 'Jeju', '2017-01-01','National Soccer Cup', 'Canada Soccer Society');
INSERT INTO Championship_has_match VALUES('15:30:00', '2018-01-07', 'Daejeon', '2018-01-01','British Colmumbia Cup', 'National Sports');
INSERT INTO Championship_has_match VALUES('15:30:00', '2019-08-10', 'Daejeon', '2019-08-08','British Colmumbia Cup', 'National Sports');

SELECT * FROM Championship_has_match;

INSERT INTO Team_opponent_match VALUES('11:30:00', '2015-02-01', 'Seoul', 'Puma', 3, 'Tiger', 0);
INSERT INTO Team_opponent_match VALUES('11:30:00', '2015-02-01', 'Pusan', 'Lion', 1, 'Jaguar', 0);
INSERT INTO Team_opponent_match VALUES('11:00:00', '2016-05-18', 'Incheon', 'Cougar', 2, 'Jaguar', 1);
INSERT INTO Team_opponent_match VALUES('11:00:00', '2016-05-10', 'Incheon', 'Cougar', 1, 'Puma', 1);
INSERT INTO Team_opponent_match VALUES('18:30:00', '2017-02-07', 'Jeju', 'Cougar', 5, 'Tiger', 1);
INSERT INTO Team_opponent_match VALUES('15:30:00', '2017-02-07', 'Jeju', 'Puma', 0, 'Lion', 1);
INSERT INTO Team_opponent_match VALUES('15:30:00', '2018-01-07', 'Daejeon', 'Lion', 1,'Jaguar', 2);
INSERT INTO Team_opponent_match VALUES('15:30:00', '2019-08-10', 'Daejeon', 'Cougar', 3,'Puma', 4);

SELECT * FROM Team_opponent_match;

INSERT INTO Player_playsin_match VALUES(200320, '11:30:00', '2015-02-01', 'Seoul', 'Midfielder', 1);
INSERT INTO Player_playsin_match VALUES(200320, '11:00:00', '2016-05-18', 'Incheon', 'Forward', 2); 
INSERT INTO Player_playsin_match VALUES(300320, '11:30:00', '2015-02-01', 'Pusan', 'Forward', 1);
INSERT INTO Player_playsin_match VALUES(300321, '11:30:00', '2015-02-01', 'Seoul', 'Forward', 0);
INSERT INTO Player_playsin_match VALUES(300322, '18:30:00', '2017-02-07', 'Jeju', 'GoalKeeper', 0);
INSERT INTO Player_playsin_match VALUES(300322, '15:30:00', '2018-01-07', 'Daejeon','Midfielder', 2);
INSERT INTO Player_playsin_match VALUES(300322, '15:30:00', '2019-08-10', 'Daejeon', 'Midfielder', 1);
INSERT INTO Player_playsin_match VALUES(300323, '11:00:00', '2016-05-10', 'Incheon', 'Forward', 0);
INSERT INTO Player_playsin_match VALUES(300323, '18:30:00', '2017-02-07', 'Jeju', 'Forward',2);

SELECT * FROM Player_playsin_match;

INSERT INTO Player_playsfor_team VALUES(200320, 'Puma', '2015-01-01', '2022-12-30');
INSERT INTO Player_playsfor_team VALUES(300320, 'Puma', '2015-02-02', '2022-12-30');
INSERT INTO Player_playsfor_team VALUES(300321, 'Tiger', '2015-01-03', '2022-12-30');
INSERT INTO Player_playsfor_team VALUES(300322, 'Jaguar', '2015-01-02', '2022-12-30');
INSERT INTO Player_playsfor_team VALUES(300323, 'Cougar', '2015-01-05', '2022-12-30');

SELECT * FROM Player_playsfor_team;

INSERT INTO  Team_match_sponsorship VALUES('Tiger', '11:30:00', '2015-02-01', 'Seoul', 80071, 20000.00);
INSERT INTO  Team_match_sponsorship VALUES('Tiger', '18:30:00', '2017-02-07', 'Jeju', 80072, 20000.00);
INSERT INTO  Team_match_sponsorship VALUES('Puma', '11:30:00', '2015-02-01', 'Seoul', 80073, 25000.00);
INSERT INTO  Team_match_sponsorship VALUES('Lion', '11:30:00', '2015-02-01', 'Pusan', 80074, 50000.00);
INSERT INTO  Team_match_sponsorship VALUES('Cougar', '11:00:00', '2016-05-10', 'Incheon', 80075, 30000.00);
INSERT INTO  Team_match_sponsorship VALUES('Cougar', '18:30:00', '2017-02-07', 'Jeju', 80076, 35000.00);
INSERT INTO  Team_match_sponsorship VALUES('Jaguar', '15:30:00', '2018-01-07', 'Daejeon', 80077, 28000.00);

SELECT * FROM Team_match_sponsorship;

INSERT INTO Sponsor_sponsorship VALUES('SAMSUNG', 80071, 20000.00); 
INSERT INTO Sponsor_sponsorship VALUES('LG',  80072, 20000.00);
INSERT INTO Sponsor_sponsorship VALUES('AMAZON', 80073, 25000.00);
INSERT INTO Sponsor_sponsorship VALUES('APPLE',  80074, 50000.00);
INSERT INTO Sponsor_sponsorship VALUES('GOOGLE', 80075, 30000.00);
INSERT INTO Sponsor_sponsorship VALUES('SAMSUNG', 80076, 35000.00); 
INSERT INTO Sponsor_sponsorship VALUES('APPLE', 80077, 28000.00); 

SELECT * FROM Sponsor_sponsorship;

INSERT INTO Coach_worksfor_team VALUES(23007,'Tiger', '2000/10/22', '2025/10/22');
INSERT INTO Coach_worksfor_team VALUES(23008,'Puma', '2000/01/01', '2025/12/31');
INSERT INTO Coach_worksfor_team VALUES(23009,'Lion', '2000/01/01', '2025/12/31');
INSERT INTO Coach_worksfor_team VALUES(23010,'Cougar', '2001/01/01', '2024/12/31');
INSERT INTO Coach_worksfor_team VALUES(23011,'Jaguar', '2002/10/22', '2025/10/22');

SELECT * FROM Coach_worksfor_team;