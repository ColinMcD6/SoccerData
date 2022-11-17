import os
import sqlite3
from sqlite3 import Error

table_name = 'matchPlayers'
use = 'use cs3380;\n\n'
drop_if_exists = 'drop table if exists ' + table_name + ';\n\n'
create_team_table_sql = 'CREATE TABLE ' + table_name + ' (team_id INTEGER PRIMARY KEY,'\
                   'team_long_name TEXT,' \
                   'team_short_name TEXT );\n\n'

# create a database connection to a SQLite database
conn = None
db_file = os.getcwd()+'\\soccerData.sqlite'
print(db_file)
try:
    conn = sqlite3.connect(db_file)
    cursor = conn.cursor()
    cursor.execute('select * from Team')
    rows = cursor.fetchall()
    with open('..\\SQL scripts\\' + table_name + '.sql', 'w', encoding="utf-8") as file:
        file.write(use)
        file.write(drop_if_exists)
        file.write(create_team_table_sql)
        for row in rows:
            team_id = str(row[0])

            if row[3].find("'") < 0:
                long_name = row[3]
            else:
                long_name = row[3][:row[3].find("'")] + "'" + row[3][row[3].find("'"):]
            short_name = row[4]
            file.write("insert into teams (team_id, team_long_name, team_short_name) "
                       "values (" + team_id + ",'" + long_name + "','" + short_name + "');\n")

except Error as e:
    print(e)
finally:
    if conn:
        conn.close()