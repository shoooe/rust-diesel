CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR NOT NULL,
  email TEXT NOT NULL
);

INSERT INTO users (id, full_name, email)
VALUES 
    (1, 'John Doe', 'john@example.com'),
    (2, 'Mary Sue', 'mary@example.com'),
    (3, 'Luke White', 'luke@example.com'),
    (4, 'Darth Poppins', 'dark@example.com'),
    (5, 'Mario Rossi', 'mario@example.com');
