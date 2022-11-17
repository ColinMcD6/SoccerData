import os
import sqlite3
from sqlite3 import Error

table_name = 'team_attributes'
use = 'use cs3380;\n\n'
drop_if_exists = 'drop table if exists ' + table_name + ';\n\n'
create_team_attributes_table_sql = 'CREATE TABLE ' + table_name + '(\n' \
                                   'team_id INTEGER references teams(team_id),\n' \
                                   'date varchar(10),\n' \
                                   'buildUpPlaySpeed INTEGER,\n' \
                                   'buildUpPlaySpeedClass TEXT,\n' \
                                   'buildUpPlayDribbling INTEGER,\n' \
                                   'buildUpPlayDribblingClass TEXT,\n' \
                                   'buildUpPlayPassing INTEGER,\n' \
                                   'buildUpPlayPassingClass TEXT,\n' \
                                   'buildUpPlayPositioningClass TEXT,\n' \
                                   'chanceCreationPassing INTEGER,\n' \
                                   'chanceCreationPassingClass TEXT,\n' \
                                   'chanceCreationCrossing INTEGER,\n' \
                                   'chanceCreationCrossingClass TEXT,\n' \
                                   'chanceCreationShooting INTEGER,\n' \
                                   'chanceCreationShootingClass TEXT,\n' \
                                   'chanceCreationPositioningClass TEXT,\n' \
                                   'defencePressure INTEGER,\n' \
                                   'defencePressureClass TEXT,\n' \
                                   'defenceAggression INTEGER,\n' \
                                   'defenceAggressionClass TEXT,\n' \
                                   'defenceTeamWidth INTEGER,\n' \
                                   'defenceTeamWidthClass TEXT,\n' \
                                   'defenceDefenderLineClass TEXT,\n' \
                                   'PRIMARY KEY (team_id, date))\n\n'


# create a database connection to a SQLite database
conn = None
db_file = os.getcwd()+'\\soccerData.sqlite'

try:
    conn = sqlite3.connect(db_file)
    cursor = conn.cursor()
    cursor.execute('select * from Team_Attributes inner join Team on Team_Attributes.team_api_id = '
                   'Team.team_api_id  and Team_Attributes.team_fifa_api_id = Team.team_fifa_api_id'
                   ' where Team_Attributes.id != 860')
    rows = cursor.fetchall()

    with open('..\\SQL scripts/' + table_name + '.sql', 'w', encoding="utf-8") as file:
        file.write(use)
        file.write(drop_if_exists)
        file.write(create_team_attributes_table_sql)
        for row in rows:
            buildUpPlayDribbling = str(row[6]) if row[6] is not None else "NULL"
            file.write("insert into team_attributes (team_id, date, buildUpPlaySpeed,"
                       "buildUpPlaySpeedClass, buildUpPlayDribbling, buildUpPlayDribblingClass,"
                       "buildUpPlayPassing, buildUpPlayPassingClass, buildUpPlayPositioningClass,"
                       "chanceCreationPassing, chanceCreationPassingClass, chanceCreationCrossing,"
                       "chanceCreationCrossingClass, chanceCreationShooting, chanceCreationShootingClass,"
                       "chanceCreationPositioningClass, defencePressure, defencePressureClass, defenceAggression,"
                       "defenceAggressionClass, defenceTeamWidth, defenceTeamWidthClass, defenceDefenderLineClass)\n\t "
                       "values (" + str(row[25]) + ",'" + row[3].split(' ')[0] + "'," + str(row[4]) + ",'"
                       + row[5] + "'," + buildUpPlayDribbling + ",'" + row[7] + "',"
                       + str(row[8]) + ",'" + row[9] + "','" + row[10] + "',"
                       + str(row[11]) + ",'" + row[12] + "'," + str(row[13]) + ",'"
                       + row[14] + "'," + str(row[15]) + ",'" + row[16] + "','"
                       + row[17] + "'," + str(row[18]) + ",'" + row[19] + "'," + str(row[20]) + ",'"
                       + row[21] + "'," + str(row[22]) + ",'" + row[23] + "','" + row[24] + "');\n")

except Error as e:
    print(e)
finally:
    if conn:
        conn.close()
