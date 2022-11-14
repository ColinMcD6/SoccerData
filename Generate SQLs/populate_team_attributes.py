import os
import sqlite3
from sqlite3 import Error

create_team_attributes_table_sql = 'CREATE TABLE teams_attributes (' \
                                   'team_id INTEGER references teams(team_id),' \
                                   'date varchar(10),' \
                                   'buildUpPlaySpeed INTEGER,' \
                                   'buildUpPlaySpeedClass TEXT,' \
                                   'buildUpPlayDribbling INTEGER, ' \
                                   'buildUpPlayDribblingClass TEXT,' \
                                   'buildUpPlayPassing INTEGER,' \
                                   'buildUpPlayPassingClass TEXT,' \
                                   'buildUpPlayPositioningClass TEXT,' \
                                   'chanceCreationPassing INTEGER,' \
                                   'chanceCreationPassingClass TEXT,' \
                                   'chanceCreationCrossing INTEGER,' \
                                   'chanceCreationCrossingClass TEXT,' \
                                   'chanceCreationShooting INTEGER,' \
                                   'chanceCreationShootingClass TEXT,' \
                                   'chanceCreationPositioningClass TEXT,' \
                                   'defencePressure INTEGER,' \
                                   'defencePressureClass TEXT,' \
                                   'defenceAggression INTEGER,' \
                                   'defenceAggressionClass TEXT,' \
                                   'defenceTeamWidth INTEGER,' \
                                   'defenceTeamWidthClass TEXT,' \
                                   'defenceDefenderLineClass TEXT,' \
                                   'PRIMARY KEY (team_id, date))\n\n'

# create a database connection to a SQLite database
conn = None
db_file = os.getcwd()+'\\soccerData.sqlite'

try:
    conn = sqlite3.connect(db_file)
    cursor = conn.cursor()
    cursor.execute('select * from Team')
    rows = cursor.fetchall()

    with open(os.getcwd()+'/SQL scripts/team.sql', 'w', encoding="utf-8") as file:
        file.write(create_team_table_sql)
        for row in rows:
            file.write("insert into teams (team_id, team_long_name, team_short_name) "
                       "values (" + str(row[0]) + ",'" + row[3] + "','" + row[4] + "');\n")

except Error as e:
    print(e)
finally:
    if conn:
        conn.close()
