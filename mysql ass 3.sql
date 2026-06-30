SHOW DATABASES;

USE college;

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    price DECIMAL(8,2),
    published_date DATE,
    in_stock INT DEFAULT 1
);

INSERT INTO Books (title, isbn, price, published_date, in_stock)
VALUES
('Java Basics', 'ISBN001', 450.00, '2019-05-10', 1),
('Python Guide', 'ISBN002', 550.00, '2021-08-15', 1),
('History of India', 'ISBN003', 350.00, '2018-03-20', 0),
('Database Systems', 'ISBN004', 600.00, '2022-01-12', 1);

INSERT INTO Books (title, isbn, price, published_date)
VALUES
('World History', 'ISBN005', 400.00, '2017-11-25');

ALTER TABLE Books
RENAME COLUMN title TO book_title;

ALTER TABLE Books
MODIFY COLUMN price FLOAT;

ALTER TABLE Books
ADD COLUMN author_name VARCHAR(50) NOT NULL DEFAULT 'Unknown';

UPDATE Books
SET price = price * 0.9
WHERE book_id > 0
AND published_date < '2020-01-01';

DELETE FROM Books
WHERE book_id > 0
AND in_stock = 0;

ALTER TABLE Books
AUTO_INCREMENT = 101;

SELECT book_title, price, published_date
FROM Books
WHERE book_title LIKE '%History%'
AND price > 300
ORDER BY price DESC;

CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(100) NOT NULL,
    join_date DATE NOT NULL DEFAULT (CURDATE())
);

SELECT *
FROM Members
WHERE YEAR(join_date) = 2024
ORDER BY member_name ASC;