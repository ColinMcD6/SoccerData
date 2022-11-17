import pyodbc
import os
from dotenv import load_dotenv

load_dotenv()

username = os.getenv('USER')
password = os.getenv('PASSWORD')
server_name = os.getenv('SERVER_NAME')

cnxn = pyodbc.connect(driver='{ODBC Driver 18 for SQL Server}',
                      server=server_name,
                      database='cs3380',
                      user=username,
                      password=password,
                      timeout=30,
                      # Trusted_connection='Yes',
                      Encrypt='Yes',
                      TrustServerCertificate='Yes',
                      autocommit=True
                      )


# cursor = cnxn.cursor()

# cursor.execute("create table people ("
#                "id integer primary key IDENTITY(1,1),"
#                "name varchar(100))")
# cursor.commit()
#
# cursor.execute("insert into people(name) values ('Emily Hogan')")
# cursor.commit()

# cursor.execute("drop table people")
# cursor.commit()

with open(os.getcwd()+'\\products.sql', 'r', encoding="utf-8") as sql:
    script = sql.read()
    for sql_statement in script.split(';'):
        with cnxn.cursor() as cur:
            print(sql_statement)
            cur.execute(sql_statement)

cnxn.close()
