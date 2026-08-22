-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeCliente TEXT NOT NULL,
    emailCliente TEXT UNIQUE
);

-- Criação da tabela Compras
CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClienteID INTEGER NOT NULL,
    NomeLivro TEXT NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

INSERT INTO Clientes (nomeCliente, emailCliente)
VALUES ('Maria Silva', 'maria@email.com');

INSERT INTO Compras (ClienteID, NomeLivro)
VALUES (1, 'Dom Casmurro');

SELECT * FROM Clientes; 
-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (nomeCliente, emailCliente)
VALUES 
('Maria Silva', 'maria.silva@email.com'),
('João Pereira', 'joao.pereira@email.com'),
('Ana Costa', 'ana.costa@email.com');

-- Inserindo dados na tabela Compras
INSERT INTO Compras (ClienteID, NomeLivro)
VALUES
(1, 'Dom Casmurro'),
(2, 'O Alquimista'),
(3, 'Capitães da Areia'),
(1, 'Memórias Póstumas de Brás Cubas');

SELECT * FROM Clientes; 
SELECT * FROM Compras; 

SELECT c.nomeCliente, cp.NomeLivro
FROM Compras cp
INNER JOIN Clientes c ON cp.ClienteID = c.ID;

