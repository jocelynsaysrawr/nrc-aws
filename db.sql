DROP DATABASE IF EXISTS nrc_helloworld;
CREATE DATABASE nrc_helloworld;
use nrc_helloworld;
CREATE TABLE users (
    user_id SERIAL NOT NULL PRIMARY KEY,
    username varchar(100) NOT NULL,
    name varchar(255) NOT NULL,
    bio text
);

CREATE TABLE threads (
    thread_id SERIAL NOT NULL PRIMARY KEY,
    title text NOT NULL,
    createdBy INTEGER REFERENCES users(user_id)
);

CREATE TABLE posts (
    post_id SERIAL NOT NULL PRIMARY KEY,
    text text NOT NULL,
    user INTEGER REFERENCES users(user_id),
    thread INTEGER REFERENCES threads(thread_id)
);

INSERT INTO users
VALUES
    (DEFAULT, 'marceline', 'Marceline Abadeer', '1000 year old vampire queen, musician');

INSERT INTO users
VALUES
    (DEFAULT, 'finn', 'Finn "the Human" Mertens', 'Adventurer and hero, last human, defender of good');

INSERT INTO users
VALUES
    (DEFAULT, 'pb', 'Bonnibel Bubblegum', 'Scientist, bearer of candy power, ruler of the candy kingdom');

INSERT INTO users
VALUES
    (DEFAULT, 'jake', 'Jake the Dog', 'Former criminal, now magical dog adventurer, and father');

INSERT INTO threads
VALUES
    (DEFAULT, "What's up with the YOU?", 4);

INSERT INTO threads
VALUES
    (DEFAULT, "Party tomorrow", 3);

INSERT INTO threads
VALUES
    (DEFAULT, "In search of clarinet?", 1);

INSERT INTO posts
VALUES
    (DEFAULT, "Who are you really?", 4, 1);

INSERT INTO posts
VALUES
    (DEFAULT, "I'll stop by and see how he's doing tomorrow!", 2, 1);

INSERT INTO posts
VALUES
    (DEFAULT, "Come party with the candy people tomorrow!", 3, 2);

INSERT INTO posts
VALUES
    (DEFAULT, "Mathematical!", 2, 2);

INSERT INTO posts
VALUES
    (DEFAULT, "I'll bring my guitar", 1, 2);

INSERT INTO posts
VALUES
    (DEFAULT, "I need a new clarinet to play the most savory licks in Ooo", 1, 3);
