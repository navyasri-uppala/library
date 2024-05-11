-- Create table for books
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    status VARCHAR(20),
    quantity INT
);

-- Sample data for books
INSERT INTO books (book_id, title, author, category, price, status, quantity)
VALUES
    (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 10.99, 'Available', 5),
    (2, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', 12.50, 'Available', 8),
    (3, '1984', 'George Orwell', 'Science Fiction', 9.99, 'Available', 3),
    (4, 'Pride and Prejudice', 'Jane Austen', 'Fiction', 11.25, 'Available', 6),
    (5, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', 8.75, 'Available', 10);

-- Create table for issued books
CREATE TABLE issued_books (
    issue_id INT PRIMARY KEY,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    customer_name VARCHAR(100),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Sample data for issued books
INSERT INTO issued_books (issue_id, book_id, issue_date, return_date, customer_name)
VALUES
    (1, 1, '2024-05-01', '2024-05-15', 'John Doe'),
    (2, 2, '2024-04-20', '2024-05-10', 'Jane Smith');

-- Query to fetch all books with their titles categorically
SELECT category, title FROM books ORDER BY category, title;
