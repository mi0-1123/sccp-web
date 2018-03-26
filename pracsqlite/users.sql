CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(32),
  age INTEGER
);

CREATE TABLE exercises (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  number INTEGER,
  user_id INTEGER REFERENCES users(id),
  score INTEGER
);

INSERT INTO users(name, age) VALUES('Pole', 23);
INSERT INTO users(name, age) VALUES('Anna', 22);
INSERT INTO users(name, age) VALUES('Mary', 19);
INSERT INTO users(name, age) VALUES('Bob', 38);
INSERT INTO users(name, age) VALUES('Taro', 33);
INSERT INTO users(name, age) VALUES('Tom', 17);
INSERT INTO users(name, age) VALUES('Sara', 44);
INSERT INTO users(name, age) VALUES('Mike', 26);

INSERT INTO exercises(number, user_id, score) VALUES (1, 1, 100);
INSERT INTO exercises(number, user_id, score) VALUES (1, 2, 90);
INSERT INTO exercises(number, user_id, score) VALUES (1, 3, 50);
INSERT INTO exercises(number, user_id, score) VALUES (1, 4, 90);
INSERT INTO exercises(number, user_id, score) VALUES (1, 5, 80);
INSERT INTO exercises(number, user_id, score) VALUES (1, 6, 20);
INSERT INTO exercises(number, user_id, score) VALUES (1, 7, 20);
INSERT INTO exercises(number, user_id, score) VALUES (1, 8, 60);
INSERT INTO exercises(number, user_id, score) VALUES (2, 1, 90);
INSERT INTO exercises(number, user_id, score) VALUES (2, 2, 30);
INSERT INTO exercises(number, user_id, score) VALUES (2, 3, 100);
INSERT INTO exercises(number, user_id, score) VALUES (2, 4, 50);
INSERT INTO exercises(number, user_id, score) VALUES (2, 5, 10);
INSERT INTO exercises(number, user_id, score) VALUES (2, 6, 60);
INSERT INTO exercises(number, user_id, score) VALUES (2, 7, 80);
INSERT INTO exercises(number, user_id, score) VALUES (2, 8, 100);
INSERT INTO exercises(number, user_id, score) VALUES (3, 3, 50);
INSERT INTO exercises(number, user_id, score) VALUES (3, 9, 80);
INSERT INTO exercises(number, user_id, score) VALUES (3, 1, 20);