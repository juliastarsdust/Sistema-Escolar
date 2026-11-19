
PRAGMA foreign_keys = ON;

-- CADASTRO DE ALUNOS
INSERT INTO Alunos (nome, data_nascimento) VALUES
('Ana Silva', '2010-05-10'),
('Pedro Santos', '2009-08-15'),
('Maria Oliveira', '2010-02-20');

-- CADASTRO DE RESPONSAVEIS
INSERT INTO Responsaveis (nome, telefone) VALUES
('Carlos Silva', '11999990001'),
('Mariana Santos', '11999990002'),
('João Oliveira', '11999990003');

-- RELACIONAMENTO ENTRE ALUNOS E RESPONSAVEIS
INSERT INTO Aluno_Responsavel VALUES
(1, 1),
(2, 2),
(3, 3);

-- CADASTRO DE DISCIPLINAS
INSERT INTO Disciplinas (nome) VALUES
('Matemática'),
('Português'),
('História');

-- CADASTRO DE MATRICULAS
INSERT INTO Matriculas
(id_aluno, id_disciplina, ano_letivo) VALUES
(1, 1, 2026),
(1, 2, 2026),
(2, 1, 2026),
(2, 3, 2026),
(3, 2, 2026);

-- CADASTRO DE NOTAS
INSERT INTO Notas (id_matricula, bimestre, valor) VALUES
(1, 1, 8.5),
(2, 1, 9.0),
(3, 1, 7.5),
(4, 1, 8.0),
(5, 1, 9.5);

-- CADASTRO DE FALTAS
INSERT INTO Faltas (id_matricula, bimestre, quantidade) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 1, 3),
(4, 1, 0),
(5, 1, 2);
