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
-- migrate:down

DROP TABLE authors;
DROP TABLE books;
