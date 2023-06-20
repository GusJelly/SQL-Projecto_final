CREATE DATABASE online_game_shop;
GO

USE online_game_shop;
GO

CREATE TABLE Game(
    id int NOT NULL IDENTITY(1,1),
    title varchar(50),
    genre varchar(50),
    number_of_players int,
    price float, 
    age_range int,
    PRIMARY KEY(id)
);
GO

CREATE TABLE Gamer(
    id int PRIMARY KEY NOT NULL IDENTITY(1,1),
    name varchar(50),
    age int,
    nationality varchar(50)
);
GO

CREATE TABLE Review (
    id int NOT NULL IDENTITY(1,1),
    gamer_id int,
    game_id int,
    message varchar(200),
    rating int,
    PRIMARY KEY(id),
    FOREIGN KEY(gamer_id) REFERENCES Gamer(id),
    FOREIGN KEY(game_id) REFERENCES Game(id)
);
GO

CREATE TABLE Purchase (
    id int NOT NULL IDENTITY(1,1),
    gamer_id int,
    game_id int,
    price float,
    purchase_date date,
    PRIMARY KEY(id),
    FOREIGN KEY(gamer_id) REFERENCES Gamer(id),
    FOREIGN KEY(game_id) REFERENCES Game(id)
);
GO

-- Inserts for the database:
-- Game
INSERT INTO Game (id, title, genre, number_of_players, price, age_range) VALUES( 1, 'Super Mario Bros'   , 'Platformer'          , 2  , 59.99, 3 );
INSERT INTO Game (id, title, genre, number_of_players, price, age_range) VALUES( 2, 'The Legend of Zelda', 'Action-adventure'    , 1  , 59.99, 10);
INSERT INTO Game (id, title, genre, number_of_players, price, age_range) VALUES( 3, 'Minecraft'          , 'Sandbox'             , 8  , 26.95, 7 );
INSERT INTO Game (id, title, genre, number_of_players, price, age_range) VALUES( 4, 'Fortnite'           , 'Battle Royale'       , 100, 0.00 , 12);
INSERT INTO Game (id, title, genre, number_of_players, price, age_range) VALUES( 5, 'Overwatch'          , 'First-person shooter', 12 , 39.99, 12);
INSERT INTO Game (id, title, genre, number_of_players, price, age_range) VALUES( 6, 'The Sims'           , 'Life simulation'     , 1  , 39.99, 12);
INSERT INTO Game (id, title, genre, number_of_players, price, age_range) VALUES( 7, 'FIFA'               , 'Sports'              , 4  , 59.99, 3 );
INSERT INTO Game (id, title, genre, number_of_players, price, age_range) VALUES( 8, 'NBA2K'              , 'Sports'              , 4  , 59.99, 3 );
INSERT INTO Game (id, title, genre, number_of_players, price, age_range) VALUES( 9, 'Call of Duty'       , 'First-person shooter', 12 , 59.99, 17);
INSERT INTO Game (id, title, genre, number_of_players, price, age_range) VALUES(10, 'Grand Theft Auto'   , 'Action-adventure'    , 1  , 59.99, 18);
GO

-- Gamer
INSERT INTO Gamer (name, age, nationality) VALUES('John Doe'        , 25, 'American'     );
INSERT INTO Gamer (name, age, nationality) VALUES('Jane Doe'        , 30, 'American'     );
INSERT INTO Gamer (name, age, nationality) VALUES('Bob Smith'       , 40, 'Canadian'     );
INSERT INTO Gamer (name, age, nationality) VALUES('Alice Smith'     , 35, 'Canadian'     );
INSERT INTO Gamer (name, age, nationality) VALUES('Charlie Brown'   , 20, 'British'      );
INSERT INTO Gamer (name, age, nationality) VALUES('Lucy Brown'      , 18, 'British'      );
INSERT INTO Gamer (name, age, nationality) VALUES('Tom Johnson'     , 50, 'Australian'   );
INSERT INTO Gamer (name, age, nationality) VALUES('Samantha Johnson', 45, 'Australian'   );
INSERT INTO Gamer (name, age, nationality) VALUES('Jack Black'      , 60, 'New Zealander');
INSERT INTO Gamer (name, age, nationality) VALUES('Jill Black'      , 55, 'New Zealander');

-- Review
INSERT INTO Review(gamer_id, game_id, message, rating) VALUES(1, 1, 'Great game!'                    , 5);
INSERT INTO Review(gamer_id, game_id, message, rating) VALUES(2, 2, 'Amazing graphics!'              , 4);
INSERT INTO Review(gamer_id, game_id, message, rating) VALUES(3, 3, 'So much fun!'                   , 5);
INSERT INTO Review(gamer_id, game_id, message, rating) VALUES(4, 4, 'Addictive gameplay!'            , 4);
INSERT INTO Review(gamer_id, game_id, message, rating) VALUES(5, 5, 'Challenging but fun!'           , 5);
INSERT INTO Review(gamer_id, game_id, message, rating) VALUES(6, 6, 'Love the customization options!', 4);

-- Purchase
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES( 1,  1, 59.99, '2023-06-19');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES( 2,  2, 59.99, '2023-06-20');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES( 3,  3, 26.95, '2023-06-21');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES( 4,  4,  0.00, '2023-06-22');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES( 5,  5, 39.99, '2023-06-23');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES( 6,  6, 39.99, '2023-06-24');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES( 7,  7, 59.99, '2023-06-25');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES( 8,  8, 59.99, '2023-06-26');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES( 9,  9, 59.99, '2023-06-27');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES(10, 10, 59.99, '2023-06-28');


-- Inserts for the Review table
INSERT INTO Review (gamer_id, game_id, message, rating) VALUES(1, 1, 'I love this game!', 5);
INSERT INTO Review (gamer_id, game_id, message, rating) VALUES(2, 1, 'So much fun!'     , 4);
INSERT INTO Review (gamer_id, game_id, message, rating) VALUES(3, 1, 'A classic!'       , 5);

-- Inserts for the Purchase table
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES(1, 1, 59.99, '2023-06-19');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES(2, 1, 59.99, '2023-06-20');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES(3, 1, 59.99, '2023-06-21');

-- Inserts for the Review table
INSERT INTO Review (gamer_id, game_id, message, rating) VALUES(4, 2, 'Great adventure game!' , 5);
INSERT INTO Review (gamer_id, game_id, message, rating) VALUES(5, 2, 'Love the puzzles!'     , 4);
INSERT INTO Review (gamer_id, game_id, message, rating) VALUES(6, 2, 'Amazing story!'        , 5);
INSERT INTO Review (gamer_id, game_id, message, rating) VALUES(7, 3, 'So creative!'          , 5);
INSERT INTO Review (gamer_id, game_id, message, rating) VALUES(8, 3, 'Endless possibilities!', 4);
INSERT INTO Review (gamer_id, game_id, message, rating) VALUES(9, 3, 'Great for all ages!'   , 5);

-- Inserts for the Purchase table
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES(4, 2, 59.99, '2023-06-22');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES(5, 2, 59.99, '2023-06-23');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES(6, 2, 59.99, '2023-06-24');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES(7, 3, 26.95, '2023-06-25');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES(8, 3, 26.95, '2023-06-26');
INSERT INTO Purchase (gamer_id, game_id, price, purchase_date) VALUES(9, 3, 26.95, '2023-06-27');

