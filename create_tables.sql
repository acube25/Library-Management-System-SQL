CREATE TABLE Authors (
	authorId INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    birthYear INT
);

CREATE TABLE Books (
	bookId INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    authorId INT,
    publishedYear INT,
    genre VARCHAR(50),
    FOREIGN KEY (authorId) REFERENCES Authors(authorId)
);

CREATE TABLE Borrowers (
	borrowrId INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50),
    phone VARCHAR(15),
    membershipDate DATE NOT NULL
);

CREATE TABLE BorrowedBooks (
	borrowId INT PRIMARY KEY auto_increment,
    borrowrId INT,
    bookId INT,
    borrowDate DATE,
    dueDate DATE,
    FOREIGN KEY (borrowrId) REFERENCES Borrowers(borrowrId),
    FOREIGN KEY (bookId) REFERENCES Books(bookId)
);
