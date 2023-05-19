CREATE DATABASE online_game_shop;

USE online_game_shop;

CREATE TABLE Game (
    id INT PRIMARY KEY NOT NULL,
    title VARCHAR(50),
    genre VARCHAR(50),
    number_of_players INT,
    price FLOAT, 
    age_range INT   
);

CREATE TABLE Gamer (
    id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    name VARCHAR(50),
    age INT,
    nationality VARCHAR(50)
);

CREATE TABLE Review (
    id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    gamer_id INT FOREIGN KEY REFERENCES Gamer(id),
    game_id INT FOREIGN KEY REFERENCES Game(id),
    message VARCHAR(200),
    rating INT
);

CREATE TABLE Purchase (
    id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
    gamer_id INT FOREIGN KEY REFERENCES Gamer(id),
    game_id INT FOREIGN KEY REFERENCES Game(id),
    price INT,
    purchase_date VARCHAR(10)
);
