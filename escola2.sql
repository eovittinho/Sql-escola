CREATE DATABASE Escola;
USE Escola;

CREATE TABLE alunos (
	id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(15),
    endereco TEXT,
    email TEXT
);

CREATE TABLE professores (
	id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    especialidade TEXT NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email TEXT NOT NULL
);

CREATE TABLE disciplinas (
	id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT NOT NULL,
    carga_horaria INT NOT NULL
);

CREATE TABLE turmas (
	id_turma INT AUTO_INCREMENT PRIMARY KEY,
	nome TEXT NOT NULL,
	id_professor INT NOT NULL,
	FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

CREATE TABLE matriculas (
	id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_turma INT NOT NULL,
    data_matricula DATE NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);

INSERT INTO alunos (nome, data_nascimento, endereco, telefone, email) VALUES
('Carlos Silva', '2005-07-20', 'Rua A, 123', '11999998888', 'carlos@gmail.com,'),
('Maria Souza', '2006-05-14', 'Rua B, 456', '119666665555', 'maria@gmail.com,');

INSERT INTO professores (nome, especialidade, telefone, email) VALUES
('João Pereira', 'Matemática', '119777776666', 'joao@gmail.com,'),
('Ana Lima', 'Portguês', '119666665555', 'ana@gmail.com,');

INSERT INTO disciplinas (nome, carga_horaria) VALUES
('Matemática',60),
('Português', 50);

INSERT INTO turmas (nome, id_professor) VALUES
('Turma A', 1),
('Turma B', 2);

INSERT INTO Matriculas (id_aluno, id_turma, data_matricula) VALUES
(1, 1, '2025-03-01'),
(2, 2, '2025-03-02');

UPDATE alunos SET telefone = '119555554444' WHERE id_aluno = 1;

DELETE FROM matriculas WHERE id_matricula = 2;