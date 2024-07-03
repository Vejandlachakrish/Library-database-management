use library;

CREATE TABLE Books (
    BookID INT ,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(255) NOT NULL,
    ISBN VARCHAR(17) NOT NULL,
    Genre VARCHAR(100),
    Publisher VARCHAR(255),
    YearPublished INT,
    CopiesAvailable INT,
    PRIMARY KEY (BookID)
);

INSERT INTO Books (BookID, Title, Author, ISBN, Genre, Publisher, YearPublished, CopiesAvailable) VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', '978-0061120084', 'Fiction', 'J.B. Lippincott & Co.', 1960, 5),
(2, '1984', 'George Orwell', '978-0451524935', 'Dystopian', 'Secker & Warburg', 1949, 3),
(3, 'Moby-Dick', 'Herman Melville', '978-1503280786', 'Adventure', 'Harper & Brothers', 1851, 4),
(4, 'The Great Gatsby', 'F. Scott Fitzgerald', '978-0743273565', 'Tragedy', 'Charles Scribner''s Sons', 1925, 2),
(5, 'War and Peace', 'Leo Tolstoy', '978-0199232765', 'Historical', 'The Russian Messenger', 1869, 1),
(6, 'Pride and Prejudice', 'Jane Austen', '978-1503290563', 'Romance', 'T. Egerton, Whitehall', 1813, 6),
(7, 'The Catcher in the Rye', 'J.D. Salinger', '978-0316769488', 'Fiction', 'Little, Brown and Company', 1951, 3),
(8, 'The Hobbit', 'J.R.R. Tolkien', '978-0547928227', 'Fantasy', 'George Allen & Unwin', 1937, 7),
(9, 'Ulysses', 'James Joyce', '978-0199535675', 'Modernist', 'Sylvia Beach', 1922, 2),
(10, 'The Odyssey', 'Homer', '978-0140268867', 'Epic', 'Penguin Classics', -800, 5);


CREATE TABLE Members (
    MemberID INT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(255),
    MembershipDate DATE,
    PRIMARY KEY (MemberID)
);

INSERT INTO Members (MemberID, FirstName, LastName, Address, PhoneNumber, Email, MembershipDate) VALUES
(1, 'John', 'Doe', '123 Elm St', '555-1234', 'john.doe@example.com', '2024-01-15'),
(2, 'Jane', 'Smith', '456 Oak St', '555-5678', 'jane.smith@example.com', '2024-02-20'),
(3, 'Bob', 'Johnson', '789 Pine St', '555-8765', 'bob.johnson@example.com', '2024-03-05'),
(4, 'Alice', 'Brown', '321 Maple St', '555-4321', 'alice.brown@example.com', '2024-04-10'),
(5, 'Charlie', 'Davis', '654 Birch St', '555-3456', 'charlie.davis@example.com', '2024-05-25'),
(6, 'Emily', 'White', '987 Cedar St', '555-6789', 'emily.white@example.com', '2024-06-15'),
(7, 'Frank', 'Black', '123 Spruce St', '555-9101', 'frank.black@example.com', '2024-07-05'),
(8, 'Grace', 'Green', '456 Redwood St', '555-1122', 'grace.green@example.com', '2024-08-01'),
(9, 'Henry', 'Blue', '789 Chestnut St', '555-3344', 'henry.blue@example.com', '2024-09-20'),
(10, 'Irene', 'Yellow', '321 Palm St', '555-5566', 'irene.yellow@example.com', '2024-10-10');



CREATE TABLE Borrowing (
    BorrowingID INT,
    BookID INT,
    MemberID INT,
    BorrowingDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    Fine INT,
    Status VARCHAR(50),
    PRIMARY KEY (BorrowingID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

INSERT INTO Borrowing (BorrowingID, BookID, MemberID, BorrowingDate, DueDate, ReturnDate, Status, Fine) VALUES
(1, 1, 1, '2024-06-01', '2024-06-15', '2024-06-14', 'Returned', 0),
(2, 2, 2, '2024-06-03', '2024-06-17', NULL, 'Borrowed', 0),
(3, 3, 3, '2024-06-05', '2024-06-19', NULL, 'Borrowed', 0),
(4, 4, 4, '2024-06-07', '2024-06-21', NULL, 'Borrowed', 0),
(5, 5, 5, '2024-06-09', '2024-06-23', NULL, 'Borrowed', 0),
(6, 6, 6, '2024-06-10', '2024-06-24', NULL, 'Borrowed', 0),
(7, 7, 7, '2024-06-11', '2024-06-25', NULL, 'Borrowed', 0),
(8, 8, 8, '2024-06-12', '2024-06-26', NULL, 'Borrowed', 0),
(9, 9, 9, '2024-06-13', '2024-06-27', NULL, 'Borrowed', 0),
(10, 10, 10, '2024-06-14', '2024-06-28', NULL, 'Borrowed', 0);



CREATE TABLE Staff (
    StaffID INT,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    PhoneNumber VARCHAR(15),
    Role VARCHAR(100),
    ContactInfo VARCHAR(255),
    Salary INT,
    HireDate DATE,    
    PRIMARY KEY (StaffID)
);

INSERT INTO Staff (StaffID, FirstName, LastName, Role, ContactInfo, Address, PhoneNumber, HireDate, Salary) VALUES
(1, 'Emily', 'Wilson', 'Librarian', 'emily.wilson@example.com', '123 Maple Street', '555-123-4567', '2020-05-01', 18000),
(2, 'Michael', 'Thompson', 'Assistant', 'michael.thompson@example.com', '456 Oak Avenue', '555-234-5678', '2021-03-15', 17000),
(3, 'Laura', 'Martinez', 'Librarian', 'laura.martinez@example.com', '789 Pine Road', '555-345-6789', '2019-07-22', 19000),
(4, 'David', 'Anderson', 'Assistant', 'david.anderson@example.com', '101 Birch Lane', '555-456-7890', '2022-01-10', 16000),
(5, 'Sarah', 'Lewis', 'Librarian', 'sarah.lewis@example.com', '202 Cedar Court', '555-567-8901', '2018-11-30', 20000),
(6, 'Thomas', 'Clark', 'Manager', 'thomas.clark@example.com', '303 Elm Street', '555-678-9012', '2016-09-10', 20000),
(7, 'Emma', 'Hall', 'Assistant', 'emma.hall@example.com', '404 Spruce Drive', '555-789-0123', '2022-05-05', 15000),
(8, 'James', 'Allen', 'Librarian', 'james.allen@example.com', '505 Willow Way', '555-890-1234', '2021-12-01', 17500),
(9, 'Olivia', 'Young', 'Assistant', 'olivia.young@example.com', '606 Cedar Street', '555-901-2345', '2022-04-20', 15500),
(10, 'William', 'King', 'Librarian', 'william.king@example.com', '707 Pine Avenue', '555-012-3456', '2020-08-15', 18500);



CREATE TABLE Suppliers (
    SupplierID INT,
    SupplierName VARCHAR(255) NOT NULL,
    ContactInfo VARCHAR(255),
    ItemsSupplied VARCHAR(255),
    PRIMARY KEY (SupplierID)
);

INSERT INTO Suppliers (SupplierID, SupplierName, ContactInfo, ItemsSupplied) VALUES
(1, 'Book Distributors Inc.', 'contact@bookdistributors.com', 'Books, Magazines'),
(2, 'Library Supplies Co.', 'info@librarysupplies.com', 'Books, Stationery'),
(3, 'Educational Books Ltd.', 'sales@edbooks.com', 'Textbooks, Educational Material'),
(4, 'Media World', 'media@mediaworld.com', 'DVDs, Audiobooks'),
(5, 'Global Books', 'support@globalbooks.com', 'Books, Journals'),
(6, 'Academic Sources', 'info@academicsources.com', 'Academic Books'),
(7, 'National Publications', 'contact@nationalpubs.com', 'Journals, Magazines'),
(8, 'Fictional Universe', 'sales@fictionaluniverse.com', 'Fiction Books'),
(9, 'Non-Fiction Hub', 'info@nonfictionhub.com', 'Non-Fiction Books'),
(10, 'Children''s Books World', 'contact@childrensbooks.com', 'Children''s Books');



CREATE VIEW BooksAvailable AS
SELECT 
    BookID,
    Title,
    Author,
    Genre,
    YearPublished,
    CopiesAvailable
FROM Books
WHERE CopiesAvailable > 0;



CREATE VIEW MemberBorrowing AS
SELECT 
    Borrowing.BorrowingID,
    Books.Title,
    Members.FirstName,
    Members.LastName,
    Borrowing.BorrowingDate,
    Borrowing.DueDate,
    Borrowing.ReturnDate,
    Borrowing.Status
FROM Borrowing
JOIN Books Books ON Borrowing.BookID = Books.BookID
JOIN Members Members ON Borrowing.MemberID = Members.MemberID;



CREATE VIEW OverDueBorrowing AS
SELECT 
    Borrowing.BorrowingID,
    Books.Title,
    Members.FirstName,
    Members.LastName,
    Borrowing.BorrowingDate,
    Borrowing.DueDate,
    Borrowing.Status
FROM Borrowing
JOIN Books ON Borrowing.BookID = Books.BookID
JOIN Members ON Borrowing.MemberID = Members.MemberID
WHERE DATEDIFF(borrowing.ReturnDate, borrowing.DueDate) >= 0 ;


CREATE INDEX idx_book_title ON Books (Title);


CREATE INDEX idx_member_name ON Members (MemberID);


CREATE INDEX idx_borrowing_book_id ON Borrowing (BookID);

CREATE INDEX idx_book_member_borrowing ON Borrowing (BookID, MemberID);

CREATE INDEX idx_borrowing_member_id ON Borrowing (MemberID);



DELIMITER //

CREATE TRIGGER update_Copiesavailable_in_books
AFTER UPDATE ON borrowing
FOR EACH ROW
BEGIN
    IF NEW.Status IN ('Returned InTime', 'Returned Late') AND OLD.Status != NEW.Status THEN
        UPDATE Books
        SET CopiesAvailable = CopiesAvailable + 1
        WHERE BookID = NEW.BookID;
    END IF;

    IF NEW.Status = 'Borrowed' AND OLD.Status != 'Borrowed' THEN
        UPDATE Books
        SET CopiesAvailable = CopiesAvailable - 1
        WHERE BookID = NEW.BookID;
    END IF;
END//

DELIMITER ;

DELIMITER //

CREATE TRIGGER Reset_If_Borrowed
BEFORE UPDATE ON borrowing
FOR EACH ROW
BEGIN
    IF OLD.Status = 'Returned InTime' OR OLD.Status = 'Returned Late' THEN
        SET NEW.ReturnDate = NULL;
        SET NEW.Fine = '--';
        SET NEW.Status = 'Borrowed';
    END IF;
END//

DELIMITER ;


DELIMITER //

CREATE TRIGGER update_Fine
BEFORE UPDATE ON borrowing
FOR EACH ROW
BEGIN
    DECLARE var_fine INT;
    IF NEW.ReturnDate IS NOT NULL THEN
        SET var_fine = DATEDIFF(NEW.ReturnDate, NEW.DueDate);
        IF var_fine >= 0 THEN
            SET NEW.Status = 'Returned Late';
            SET NEW.Fine = CONCAT(var_fine * 2, '.Rs');
        ELSE
            SET NEW.Status = 'Returned InTime';
            SET NEW.Fine = 0;
        END IF;
    END IF;
END//

DELIMITER ;



