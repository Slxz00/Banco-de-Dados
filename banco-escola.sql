-- Remove CHECK constraints problemáticos
CREATE TABLE alunos (
    id_aluno INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    sexo CHAR(1) NOT NULL DEFAULT 'M',  -- Sem CHECK
    endereco VARCHAR(255),
    telefone VARCHAR(15)
);

CREATE TABLE professores (
    id_professor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    sexo CHAR(1) NOT NULL DEFAULT 'M',  -- Sem CHECK
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    area_ensino VARCHAR(100)
);

CREATE TABLE disciplinas (
    id_disciplina INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_disciplina VARCHAR(100) NOT NULL,
    id_professor INTEGER,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

CREATE TABLE matriculas (
    id_matricula INTEGER PRIMARY KEY AUTOINCREMENT,
    id_aluno INTEGER NOT NULL,
    id_disciplina INTEGER NOT NULL,
    ano_letivo INTEGER NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina),
    UNIQUE(id_aluno, id_disciplina, ano_letivo)  -- Evita duplicatas
);

CREATE TABLE notas (
    id_nota INTEGER PRIMARY KEY AUTOINCREMENT,
    id_matricula INTEGER NOT NULL,
    nota REAL CHECK (nota >= 0 AND nota <= 10),
    data_avaliacao DATE,
    FOREIGN KEY (id_matricula) REFERENCES matriculas(id_matricula)
);
