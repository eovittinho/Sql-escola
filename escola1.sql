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