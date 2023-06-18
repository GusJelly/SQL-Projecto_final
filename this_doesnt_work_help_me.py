import mariadb
import sys


# Connect to the mariadb database:
try:
    conn = mariadb.connect(
            user="root",
            host="127.0.0.1",
            port=3306,
            database="online_game_shop"
    )
    conn.autocommit = False
except mariadb.Error as e:
    print(f"Error connecting to MariaDB Platform: {e}")
    sys.exit(1)

# Create cursor:
cur = conn.cursor()
