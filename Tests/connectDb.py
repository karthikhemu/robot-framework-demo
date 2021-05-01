import pyodbc


def read_sql_file():
    cnxn = pyodbc.connect(
        "Driver={SQL Server};"
        "Server=DCA-QA-247;"
        "Database=gfpPRM;"
        "Trusted_Connection=yes;"
    )
    cursor = cnxn.cursor()
    for line in open('C://development//robot-framework-demo//data//TestUsersInsertionQuery.sql', 'r'):
        cursor.execute(line)
        cnxn.commit()
read_sql_file()
