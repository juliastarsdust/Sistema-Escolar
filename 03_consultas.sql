
-- 1. CONSULTAR ALUNOS E DISCIPLINAS

SELECT
    Alunos.nome AS Aluno,
    Disciplinas.nome AS Disciplina
FROM Matriculas
JOIN Alunos
ON Matriculas.id_aluno = Alunos.id_aluno
JOIN Disciplinas
ON Matriculas.id_disciplina = Disciplinas.id_disciplina;


-- 2. CONSULTAR ALUNOS E NOTAS

SELECT
    Alunos.nome AS Aluno,
    Disciplinas.nome AS Disciplina,
    Notas.bimestre,
    Notas.valor AS Nota
FROM Notas
JOIN Matriculas
ON Notas.id_matricula = Matriculas.id_matricula
JOIN Alunos
ON Matriculas.id_aluno = Alunos.id_aluno
JOIN Disciplinas
ON Matriculas.id_disciplina = Disciplinas.id_disciplina;


-- 3. CONSULTAR ALUNOS E FALTAS

SELECT
    Alunos.nome AS Aluno,
    Disciplinas.nome AS Disciplina,
    Faltas.quantidade AS Faltas
FROM Faltas
JOIN Matriculas
ON Faltas.id_matricula = Matriculas.id_matricula
JOIN Alunos
ON Matriculas.id_aluno = Alunos.id_aluno
JOIN Disciplinas
ON Matriculas.id_disciplina = Disciplinas.id_disciplina;
