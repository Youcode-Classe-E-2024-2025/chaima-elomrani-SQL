CREATE TABLE livre (
	id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(255) NOT NULL,
    auteur VARCHAR(255) NOT NULL,
    prix DECIMAL(5,2) NOT NULL,
    stock INT NOT NULL
)

CREATE TABLE clients (
	id int PRIMARY KEY AUTO_INCREMENT,
    nom varchar(255) NOT NULL,
    email varchar(255) NOT NULL UNIQUE,
    date_inscription date NOT NULL
)

INSERT INTO livre (titre,auteur,prix,stock) VALUES ('Les Misérables','Victor Hugo',20.50,12)
INSERT INTO livre (titre,auteur,prix,stock) VALUES ('Le Petit Prince','Antoine de Saint-Exupéry',15.99,5)
INSERT INTO livre (titre,auteur,prix,stock) VALUES ('1984','George Orwell',18.00,8)
INSERT INTO livre (titre,auteur,prix,stock) VALUES ('Harry Potter et la pierre philosophale','J.K. Rowling',25.00,10)

INSERT INTO clients (nom,email,date_inscription) VALUES 
('Jean Dupont','jean.dupont@email.fr','2024-01-10'),
('Alice Martin','alice.martin@email.fr','2024-02-15'),
('Bob Robert','bob.robert@email.fr','2024-03-20')

-- requt de lister les livres avec auteur, prix, et titre 
SELECT title,auteur,prix FROM livres;

-- requet d'afficher des livres superieur de 20euros 
SELECT * FROM livres WHERE prix>20;

-- requet d'affichage par date 
SELECT * FROM clients WHERE date_inscription> '2024-02-01';

--requêt de modification du stock 
UPDATE livres SET stock = stock - 1 WHERE titre = '1984' ;

-- requêt de suppression par email 
DELETE FROM clients WHERE email = "bob.robert@email.fr";

--requêt d'ajouter un livre au tableau
INSERT INTO livres (titre, auteur, prix , stock)
VALUES ('Le Seigneur des Anneaux','J.R.R.Tolkien','30.00','7');
