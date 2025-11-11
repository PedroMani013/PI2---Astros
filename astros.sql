CREATE DATABASE astros

CREATE TABLE tb_administradores (
	idadmin INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(80) NOT NULL,
	email VARCHAR(60) NOT NULL,
	senha VARCHAR(16) NOT NULL );

CREATE TABLE tb_votacoes (
	idvotacao INT PRIMARY KEY AUTO_INCREMENT,
	curso VARCHAR(90) NOT NULL,
	semestre INT NOT NULL,
	data_inicio DATETIME NOT NULL,
	data_candidatura DATETIME NOT NULL,
	data_final DATETIME NOT NULL,
	idadmin INT,
	FOREIGN KEY (idadmin) REFERENCES
	tb_administradores(idadmin) );

CREATE TABLE tb_alunos (
	idaluno INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(80) NOT NULL,
	ra INT NOT NULL,
	email VARCHAR(60) NOT NULL,
	senha VARCHAR(16) NOT NULL,
	curso VARCHAR(90) NOT NULL,
	semestre INT NOT NULL,
	idvotacao INT,
	FOREIGN KEY (idvotacao) REFERENCES
	tb_votacoes(idvotacao) );

CREATE TABLE tb_candidatos (
	idcandidato INT PRIMARY KEY AUTO_INCREMENT,
	imagem BLOB NOT NULL,
	idaluno INT,
	FOREIGN KEY (idaluno) REFERENCES
	tb_alunos(idaluno),
	idvotacao INT,
	FOREIGN KEY (idvotacao) REFERENCES
	tb_votacoes(idvotacao) );

CREATE TABLE tb_votos (
	idvoto INT PRIMARY KEY AUTO_INCREMENT,
	datavoto DATETIME NOT NULL,
	idaluno INT NOT NULL,
	FOREIGN KEY (idaluno) REFERENCES
	tb_alunos(idaluno),
	idcandidato INT NOT NULL,
	FOREIGN KEY (idcandidato) REFERENCES
	tb_candidatos(idcandidato) );

ALTER TABLE tb_alunos
	ADD COLUMN idvoto INT,
	ADD CONSTRAINT idvoto
	FOREIGN KEY (idvoto) REFERENCES tb_votos(idvoto);
    
