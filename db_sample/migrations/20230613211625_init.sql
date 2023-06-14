-- migrate:up
CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    created TIMESTAMP DEFAULT NOW(),
    title VARCHAR(255) NOT NULL,
    author_id INTEGER NOT NULL,
    FOREIGN KEY (author_id) REFERENCES authors (id)
    ON DELETE CASCADE
);

INSERT INTO authors (name)
VALUES (('Alice'), ('Bob'));

INSERT INTO books (title, author_id)
VALUES (
    ('How To Python', 1),
    ('Using Docker', 1),
    ('Database Guide', 2)
);
-- migrate:down

DROP TABLE books;
DROP TABLE authors;
