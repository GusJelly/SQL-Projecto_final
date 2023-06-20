--Procura todos os gamers que tenham efetuado compra de jogos
SELECT DISTINCT Gamer.name
FROM Gamer
JOIN Purchase ON Gamer.id = Purchase.gamer_id;


SELECT Game.title, AVG(Review.rating) AS average_rating
FROM Game
LEFT JOIN Review ON Game.id = Review.game_id
GROUP BY Game.title;


SELECT Game.title, AVG(Review.rating) AS average_rating
FROM Game
LEFT JOIN Review ON Game.id = Review.game_id
GROUP BY Game.title
HAVING AVG(Review.rating) >= 4.5
ORDER BY average_rating DESC;


SELECT Gamer.name, COUNT(Purchase.id) AS total_purchases
FROM Gamer
JOIN Purchase ON Gamer.id = Purchase.gamer_id
GROUP BY Gamer.name;


SELECT Game.title
FROM Game
JOIN Purchase ON Game.id = Purchase.game_id
JOIN Gamer ON Purchase.gamer_id = Gamer.id
WHERE Gamer.name = 'John Doe';



SELECT Gamer.name
FROM Gamer
JOIN Review ON Gamer.id = Review.gamer_id
JOIN Game ON Review.game_id = Game.id
WHERE Game.title = 'Super Mario Bros';


SELECT nationality, AVG(age) AS average_age
FROM Gamer
GROUP BY nationality;


