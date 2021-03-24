DROP TABLE IF EXISTS users;


CREATE TABLE users (
    f_name TEXT NOT NULL, 
    l_name TEXT NOT NULL,
);

CREATE TABLE questions (
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    author TEXT NOT NULL, 

    FOREIGN KEY()
);