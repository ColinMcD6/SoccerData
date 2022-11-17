CREATE TABLE teams (team_id INTEGER PRIMARY KEY,team_long_name TEXT,team_short_name TEXT );

INSERT into teams (team_id, team_long_name, team_short_name)
select Team.id, Team.team_long_name, team_short_name from Team;

CREATE TABLE teamids (new_team_id INTEGER PRIMARY KEY AUTOINCREMENT, old_team_id);

INSERT into teamids (old_team_id)
select team_id from Team;

CREATE TABLE `team_attrs` (team_id INTEGER NOT NULL REFERENCES teams(team_id), retrieval_date TEXT NOT NULL, `buildUpPlaySpeed` INTEGER, `buildUpPlaySpeedClass` TEXT, `buildUpPlayDribbling` INTEGER,`buildUpPlayDribblingClass` TEXT, `buildUpPlayPassing` INTEGER, `buildUpPlayPassingClass` TEXT, `buildUpPlayPositioningClass` TEXT, `chanceCreationPassing` INTEGER, `chanceCreationPassingClass` TEXT, `chanceCreationCrossing` INTEGER, `chanceCreationCrossingClass` TEXT, `chanceCreationShooting` INTEGER,`chanceCreationShootingClass` TEXT, `chanceCreationPositioningClass` TEXT, `defencePressure` INTEGER,`defencePressureClass` TEXT, `defenceAggression` INTEGER, `defenceAggressionClass` TEXT, `defenceTeamWidth` INTEGER,`defenceTeamWidthClass` TEXT, `defenceDefenderLineClass` TEXT, PRIMARY KEY (team_id, retrieval_date));

insert into team_attrs
select Team.id, Team_Attributes.date, `buildUpPlaySpeed`, `buildUpPlaySpeedClass`, `buildUpPlayDribbling`,`buildUpPlayDribblingClass`, `buildUpPlayPassing`, `buildUpPlayPassingClass`, `buildUpPlayPositioningClass`, `chanceCreationPassing`, `chanceCreationPassingClass`, `chanceCreationCrossing` , `chanceCreationCrossingClass`, `chanceCreationShooting` ,`chanceCreationShootingClass`, `chanceCreationPositioningClass`, `defencePressure`,`defencePressureClass`, `defenceAggression`, `defenceAggressionClass`, `defenceTeamWidth`,`defenceTeamWidthClass`, `defenceDefenderLineClass` from Team_Attributes inner join Team on Team_Attributes.team_api_id = Team.team_api_id and Team_Attributes.team_fifa_api_id = Team.team_fifa_api_id join teamids on teamids.old_team_id = Team.id
where Team_Attributes.id != 860;

CREATE TABLE playerids (new_player_id INTEGER PRIMARY KEY AUTOINCREMENT, old_player_id);

INSERT into playerids (old_player_id)
select id from Player;

CREATE TABLE `players`( `player_id` INTEGER PRIMARY KEY, `player_name` TEXT, `birthday` TEXT, `height` INTEGER, `weight` INTEGER );

INSERT into players (player_id, player_name, birthday, height, weight)
select id, player_name, birthday, height, weight from Player;

CREATE TABLE player_attrs ( player_id INTEGER NOT NULL REFERENCES players(player_id), `retrieval_date` TEXT NOT NULL, `overall_rating` INTEGER, `potential` INTEGER, `preferred_foot` TEXT, `attacking_work_rate` TEXT, `defensive_work_rate` TEXT, `crossing` INTEGER, `finishing` INTEGER, `heading_accuracy` INTEGER, `short_passing` INTEGER, `volleys` INTEGER, `dribbling` INTEGER, `curve` INTEGER, `free_kick_accuracy` INTEGER, `long_passing` INTEGER, `ball_control` INTEGER, `acceleration` INTEGER, `sprint_speed` INTEGER, `agility` INTEGER, `reactions` INTEGER, `balance` INTEGER, `shot_power` INTEGER, `jumping` INTEGER, `stamina` INTEGER, `strength` INTEGER, `long_shots` INTEGER, `aggression` INTEGER, `interceptions` INTEGER, `positioning` INTEGER, `vision` INTEGER, `penalties` INTEGER, `marking` INTEGER, `standing_tackle` INTEGER, `sliding_tackle` INTEGER, `gk_diving` INTEGER, `gk_handling` INTEGER, `gk_kicking` INTEGER, `gk_positioning` INTEGER, `gk_reflexes` INTEGER, PRIMARY KEY (player_id, retrieval_date));

INSERT into player_attrs
select Player.id, date,`overall_rating`, `potential`, `preferred_foot`, `attacking_work_rate`, `defensive_work_rate`, `crossing`, `finishing`, `heading_accuracy`, `short_passing`, `volleys`, `dribbling`, `curve`, `free_kick_accuracy`, `long_passing`, `ball_control`, `acceleration`, `sprint_speed`, `agility`, `reactions`, `balance`, `shot_power`, `jumping`, `stamina`, `strength`, `long_shots`, `aggression`, `interceptions`, `positioning`, `vision`, `penalties`, `marking`, `standing_tackle`, `sliding_tackle`, `gk_diving`, `gk_handling`, `gk_kicking`, `gk_positioning`, `gk_reflexes`
from Player_Attributes
inner join Player on Player_Attributes.player_api_id = Player.player_api_id and Player_Attributes.player_fifa_api_id = Player.player_fifa_api_id
group by Player.id, date;
