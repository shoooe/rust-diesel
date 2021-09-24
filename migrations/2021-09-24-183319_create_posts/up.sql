CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL,
  body TEXT NOT NULL,
  author_id INT NOT NULL REFERENCES users(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

INSERT INTO posts (id, title, body, author_id)
VALUES 
    (1, 'Title 1', 'Body 1', 1),
    (2, 'Title 2', 'Body 2', 1),
    (3, 'Title 3', 'Body 3', 1),
    (4, 'Title 4', 'Body 4', 2),
    (5, 'Title 5', 'Body 5', 3),
    (6, 'Title 6', 'Body 6', 3),
    (7, 'Title 7', 'Body 7', 1),
    (8, 'Title 8', 'Body 8', 2),
    (9, 'Title 9', 'Body 9', 1),
    (10, 'Title 10', 'Body 10', 1),
    (11, 'Title 11', 'Body 11', 1),
    (12, 'Title 12', 'Body 12', 3),
    (13, 'Title 13', 'Body 13', 3),
    (14, 'Title 14', 'Body 14', 1),
    (15, 'Title 15', 'Body 15', 4);