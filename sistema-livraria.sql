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
