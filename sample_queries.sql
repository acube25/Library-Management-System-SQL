SELECT Books.title, Authors.name AS Author
FROM Books
INNER JOIN Authors ON Books.authorId = Authors.authorId;

SELECT Books.title, BorrowedBooks.borrowDate
FROM Books
LEFT JOIN BorrowedBooks ON Books.bookId = BorrowedBooks.bookId;

SELECT Borrowers.name As borrower, Books.title, BorrowedBooks.dueDate
FROM Borrowers
RIGHT JOIN BorrowedBooks ON Borrowers.borrowrId = BorrowedBooks.borrowId
INNER JOIN Books ON BorrowedBooks.bookId = Books.bookId;

SELECT Books.title, Borrowers.name AS Borrower
FROM Books
LEFT JOIN BorrowedBooks ON Books.bookId = BorrowedBooks.bookId
LEFT JOIN Borrowers ON BorrowedBooks.borrowId = Borrowers.borrowrId
UNION
SELECT Books.title, Borrowers.name AS Borrower
FROM Books
RIGHT JOIN BorrowedBooks ON Books.bookId = BorrowedBooks.bookId
RIGHT JOIN Borrowers ON BorrowedBooks.borrowId = Borrowers.borrowrId;
