CREATE TABLE FARMACIA (
    CNPJ CHAR(14) PRIMARY KEY, -- CNPJ sempre tem 14 dígitos
    telefone VARCHAR(15),
    nome VARCHAR(100),
    endereco VARCHAR(255)
);

CREATE TABLE PRODUTO (
    cod_produto INTEGER PRIMARY KEY,
    quantidade INTEGER,
    valor DECIMAL(10,2),
    CNPJ_farmacia CHAR(14),
    FOREIGN KEY (CNPJ_farmacia) REFERENCES FARMACIA (CNPJ) ON DELETE CASCADE
);

CREATE TABLE FARMACEUTICO (
    RG CHAR(9) PRIMARY KEY, -- RG geralmente tem até 9 dígitos
    nome VARCHAR(100),
    CNPJ_farmacia CHAR(14),
    FOREIGN KEY (CNPJ_farmacia) REFERENCES FARMACIA (CNPJ) ON DELETE CASCADE
);

