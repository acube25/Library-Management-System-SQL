INSERT INTO Authors(name, birthYear)
VALUES ('J.K. Rowling', 1965), ('George Orwell', 1903);

INSERT INTO Books (title, authorId, publishedYear, genre)
VALUES ('Harry Potter and the Philosopher\'s Stone', 1, 1997, 'Fantasy'),
       ('1984', 2, 1949, 'Dystopian');
       
INSERT INTO Borrowers (name, email, phone, membershipDate) 
VALUES ('John Doe', 'john.doe@example.com', '01842**45***', '2024-01-01'),
       ('Jane Smith', 'jane.smith@example.com', '01842***5243', '2024-01-05');
