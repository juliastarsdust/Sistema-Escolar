
PRAGMA foreign_keys = ON;

CREATE TABLE Alunos (
    id_aluno INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    data_nascimento DATE
);

CREATE TABLE Responsaveis (
    id_responsavel INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    telefone TEXT
);

CREATE TABLE Aluno_Responsavel (
    id_aluno INTEGER,
    id_responsavel INTEGER,
    PRIMARY KEY (id_aluno, id_responsavel),
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_responsavel) REFERENCES Responsaveis(id_responsavel)
);

CREATE TABLE Disciplinas (
    id_disciplina INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

CREATE TABLE Matriculas (
    id_matricula INTEGER PRIMARY KEY AUTOINCREMENT,
    id_aluno INTEGER NOT NULL,
    id_disciplina INTEGER NOT NULL,
    ano_letivo INTEGER NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplinas(id_disciplina),
    UNIQUE (id_aluno, id_disciplina, ano_letivo)
);

CREATE TABLE Notas (
    id_nota INTEGER PRIMARY KEY AUTOINCREMENT,
    id_matricula INTEGER NOT NULL,
    bimestre INTEGER NOT NULL,
    valor REAL NOT NULL CHECK (valor >= 0 AND valor <= 10),
    FOREIGN KEY (id_matricula) REFERENCES Matriculas(id_matricula)
);

CREATE TABLE Faltas (
    id_falta INTEGER PRIMARY KEY AUTOINCREMENT,
    id_matricula INTEGER NOT NULL,
    bimestre INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    FOREIGN KEY (id_matricula) REFERENCES Matriculas(id_matricula)
);
