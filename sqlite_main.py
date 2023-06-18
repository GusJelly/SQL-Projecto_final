# import sqlite3

# conn = sqlite3.connect("online_game_shop.db")
# cur = conn.cursor()
#
#
# async def create_table_game():
#     query = """
#         CREATE TABLE Game(
#             id INTEGER NOT NULL,
#             title TEXT,
#             genre TEXT,
#             number_of_players INTEGER,
#             price REAL,
#             age_range INTEGER,
#             PRIMARY KEY(id)
#         );
#     """
#     cur.execute(query)
#
#
# async def create_table_gamer():
#     query = """
#         CREATE TABLE Gamer(
#             id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
#             name TEXT,
#             age INTEGER,
#             nationality TEXT
#         );
#     """
#     cur.execute(query)
#
#
# async def create_table_review():
#     query = """
#         CREATE TABLE Review (
#             id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
#             gamer_id INTEGER,
#             game_id INTEGER,
#             message TEXT,
#             rating INTEGER,
#             FOREIGN KEY(gamer_id) REFERENCES Gamer(id)
#         );
#     """
#     cur.execute(query)
#
#
# async def create_table_purchase():
#     query = """
#         CREATE TABLE Purchase(
#             id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
#             gamer_id INTEGER,
#             game_id INTEGER,
#             price INTEGER,
#             purchase_date TEXT,
#             FOREIGN KEY(gamer_id) REFERENCES Gamer(id),
#             FOREIGN KEY(game_id) REFERENCES Game(id)
#
#         );
#     """
#     cur.execute(query)
#
# conn.close()


