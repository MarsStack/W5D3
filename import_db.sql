PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    f_name VARCHAR(255) NOT NULL, 
    l_name VARCHAR(255) NOT NULL,
    id INTEGER PRIMARY KEY,
);

DROP TABLE IF EXISTS questions;

CREATE TABLE questions (
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    user_id INTEGER NOT NULL, 
    question_id INTEGER NOT NULL,

    FOREIGN KEY(user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS question_follows;

CREATE TABLE question_follows (
    question_id INTEGER NOT NULL,
    question TEXT NOT NULL,
    user_id INTEGER NOT NULL, 
    FOREIGN KEY(user_id) REFERENCES users(id)
    FOREIGN KEY (question_id) REFERENCES question(question_id)
);

DROP TABLE IF EXISTS replies;

CREATE TABLE replies ( 
    parent TEXT NOT NULL, 
    reply TEXT NOT NULL,
    user_id  INTEGER NOT NULL,
    question_id  TEXT NOT NULL,

    FOREIGN KEY(user_id) REFERENCES users(id)
    FOREIGN KEY(parent) REFERENCES questions(question_id)
);