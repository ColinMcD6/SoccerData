CREATE TABLE teams (team_id INTEGER PRIMARY KEY,team_long_name TEXT,team_short_name TEXT );

INSERT into teams (team_id, team_long_name, team_short_name)
select Team.id, Team.team_long_name, team_short_name from Team;

CREATE TABLE teamids (new_team_id INTEGER PRIMARY KEY AUTOINCREMENT, old_team_id);

INSERT into teamids (old_team_id)
select team_id from Team;
