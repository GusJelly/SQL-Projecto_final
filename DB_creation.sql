CREATE DATABASE online_game_shop;

use online_game_shop;

CREATE TABLE Game(
    id  PRIMARY KEY NOT NULL,
    title varchar(50),
    genre varchar(50),
    number_of_players int,
    price double, 
    age_range int   
);



CREATE TABLE Gamer(
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(50),
    age int,
    nacionality varchar(50)
);

CREATE TABLE Review (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    gamer_id int REFERENCES gamer(id),
    game_id int REFERENCES game(id),
    message varchar(200),
    rating int
);

CREATE TABLE Purchase (
    id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    gamer_id int REFERENCES gamer(id),
    game_id int REFERENCES game(id),
    price int,
    purchase_date varchar(10)
);
