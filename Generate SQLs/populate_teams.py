import os
import sqlite3
from sqlite3 import Error

table_name = 'teams'
create_team_table_sql = 'CREATE TABLE ' + table_name + ' (team_id INTEGER PRIMARY KEY IDENTITY(1,1),'\
                   'team_long_name TEXT,' \
                   'team_short_name TEXT );\n\n'
# create a database connection to a SQLite database
conn = None
db_file = os.getcwd()+'\\soccerData.sqlite'
print(os.getcwd())
print(db_file)
try:
    conn = sqlite3.connect(db_file)
    cursor = conn.cursor()
    cursor.execute('select * from Team')
    rows = cursor.fetchall()

    with open(os.getcwd()+'/SQL scripts/' + table_name + '.sql', 'w', encoding="utf-8") as file:
        file.write(create_team_table_sql)
        for row in rows:
            file.write("insert into teams (team_id, team_long_name, team_short_name) "
                       "values (" + str(row[0]) + ",'" + row[3] + "','" + row[4] + "');\n")

except Error as e:
    print(e)
finally:
    if conn:
        conn.close()
