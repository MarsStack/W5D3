DROP TABLE IF EXISTS users;

CREATE TABLE users (
    f_name TEXT NOT NULL, 
    l_name TEXT NOT NULL,
);

CREATE TABLE questions (
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    user TEXT NOT NULL, 

    FOREIGN KEY(
);

CREATE TABLE question_follows (
    users TEXT NOT NULL,
    questions TEXT NOT NULL,
);

CREATE TABLE replies ( 
    reply TEXT NOT NULL,
    user  TEXT NOT NULL,
    question  TEXT NOT NULL,
);