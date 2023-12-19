import psycopg2
import matplotlib.pyplot as plt

username = 'stasyuk'
password = '111111'
database = 'db_lab4'
host = 'localhost'
port = '5432'

query_1 = '''
SELECT state , COUNT(reg) AS Colonies_from_Alabama
FROM State
WHERE reg = 'Alabama';
'''

query_2 = '''
SELECT State.state, Colonies.max_colonies
FROM State
INNER JOIN Colonies ON State.num_colonies=Colonies.num_colonies;
'''

query_3 = '''
SELECT State.state, Colonies.max_colonies
FROM State
INNER JOIN Colonies ON State.num_colonies=Colonies.num_colonies
WHERE Colonies.lost_colonies < Colonies.added_colonies;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:

    cur = conn.cursor()

    cur.execute(query_1)
    print("Query 1: Number of bee colonies from Alabama.")
    for row in cur:
        print(row)
    print("\n")

    cur.execute(query_2)
    print("Query 2: Display the maximum number of honey bee colonies from each state.")
    for row in cur:
        print(row)
    print("\n")

       
    cur.execute(query_3)
    print("Query 3: Display bee colonies where the number of colony losses is less than the number of colonies added.")
    for row in cur:
        print(row)
    print("\n")