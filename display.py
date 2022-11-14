import pyodbc
import os
import pandas as pd
from tkinter import *
from pandastable import Table, config


from dotenv import load_dotenv

load_dotenv()

username = os.getenv('USER')
password = os.getenv('PASSWORD')
server_name = os.getenv('SERVER_NAME')


class TestApp(Frame):
    """Basic test frame for the table"""

    def __init__(self, parent=None):
        self.parent = parent
        Frame.__init__(self)
        self.main = self.master
        self.main.geometry('600x400+200+100')
        self.main.title('Table app')
        f = Frame(self.main)
        f.pack(fill=BOTH, expand=1)

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

        sql_query = pd.read_sql_query('select * from products', cnxn)

        df = pd.DataFrame(sql_query, columns=['productID', 'price', 'prodName'])
        self.table = pt = Table(f, dataframe=df,
                                showtoolbar=False, showstatusbar=False)
        pt.show()
        # set some options
        options = {'colheadercolor': 'green', 'floatprecision': 5}
        config.apply_options(options, pt)
        pt.show()
        return


app = TestApp()
# launch the app
app.mainloop()
