PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS question_likes;
DROP TABLE IF EXISTS replies;
DROP TABLE IF EXISTS question_follows;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    f_name VARCHAR(255) NOT NULL, 
    l_name VARCHAR(255) NOT NULL
);

CREATE TABLE questions (
    id INTEGER PRIMARY KEY,
    title VARCHAR(255) NOT NULL, 
    body TEXT NOT NULL,
    author_id INTEGER NOT NULL,

    FOREIGN KEY(author_id) REFERENCES users(id)
);

CREATE TABLE question_follows (
    id INTEGER PRIMARY KEY,
    question_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL, 

    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY (question_id) REFERENCES questions(id)
);

CREATE TABLE replies ( 
    id INTEGER PRIMARY KEY,
    reply TEXT NOT NULL,
    parent TEXT,
    user_id INTEGER NOT NULL,

    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(reply) REFERENCES replies(parent),
    FOREIGN KEY(parent) REFERENCES question(question_id)
);

CREATE TABLE question_likes (
    question_id TEXT NOT NULL,
    user_id INTEGER NOT NULL,

    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(question_id) REFERENCES questions(id)
);

INSERT INTO
    users (f_name, l_name)
VALUES
    ('Elvin', 'Marseilles'),
    ('Michelle', 'Roos'),
    ('Steve', 'Jackson'),
    ('Brian', 'George');

INSERT INTO 
    questions (title, body, author_id)
VALUES
    ('SQLQuestion', 'what is a primary key?', 1),
    ('RubyQuestion', 'What is a variable?', 3),
    ('JSQuestion', 'What is a loop?', 4);

INSERT INTO
    question_follows(question_id, user_id)
VALUES
    (1,2),
    (3,1),
    (2,3),
    (3,2);

INSERT INTO 
    replies(reply, parent, user_id)
VALUES