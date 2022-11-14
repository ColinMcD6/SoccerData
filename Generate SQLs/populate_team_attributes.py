import os
import sqlite3
from sqlite3 import Error

table_name = 'team_attributes'

create_team_attributes_table_sql = 'CREATE TABLE ' + table_name + '(' \
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
    cursor.execute('select * from Team_Attributes inner join Team on Team_Attributes.team_fifa_api_id = '
                   'Team.team_fifa_api_id')
    rows = cursor.fetchall()

    with open(os.getcwd()+'/SQL scripts/' + table_name + '.sql', 'w', encoding="utf-8") as file:
        file.write(create_team_attributes_table_sql)
        for row in rows:
            file.write("insert into team_attributes (team_id, date, buildUpPlaySpeed,"
                       "buildUpPlaySpeedClass, buildUpPlayDribbling, buildUpPlayDribblingClass,"
                       "buildUpPlayPassing, buildUpPlayPassingClass, buildUpPlayPositioningClass,"
                       "chanceCreationPassing, chanceCreationPassingClass, chanceCreationCrossing,"
                       "chanceCreationCrossingClass, chanceCreationShooting, chanceCreationShootingClass,"
                       "chanceCreationPositioningClass, defencePressure, defencePressureClass, defenceAggression,"
                       "defenceAggressionClass, defenceTeamWidth, defenceTeamWidthClass, defenceDefenderLineClass) "
                       "values (" + str(row[25]) + ",'" + row[3].split(' ')[0] + "'," + str(row[4]) + ",'"
                       + row[5] + "'," + str(row[6]) + ",'" + row[7] + ","
                       + str(row[8]) + ",'" + row[9] + "','" + row[10] + "',"
                       + str(row[11]) + ",'" + row[12] + "'," + str(row[13]) + ",'"
                       + row[14] + "'," + str(row[15]) + ",'" + row[16] + "','"
                       + row[17] + "'," + str(row[18]) + ",'" + row[19] + "'," + row[20] + ",'"
                       + row[21] + "'," + str(row[22]) + ",'" + row[23] + "','" + row[24] + "');\n")

except Error as e:
    print(e)
finally:
    if conn:
        conn.close()
