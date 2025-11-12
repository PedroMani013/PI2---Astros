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


INSERT INTO tb_administradores (nome, email, senha)
VALUES
	('João Silva', 'joao.silva13@fatec.sp.gov.br', '1508'),
	('Maria Souza', 'maria.souza02@fatec.sp.gov.br', 'msouza2055');

INSERT INTO tb_votacoes (curso, semestre, data_inicio, data_candidatura, data_final, idadmin)
VALUES
	('GP-gestao-de-produção', 5, '2025-11-01 08:00:00', '2025-10-20 00:00:00', '2025-11-05 23:59:00', 1),
	('DSM-desenvolvimento-de-softwere-multiplataforma', 3, '2025-11-10 08:00:00', '2025-10-25 00:00:00', '2025-11-15 23:59:00', 2);

INSERT INTO tb_alunos (nome, ra, email, senha, curso, semestre, idvotacao)
VALUES
	('Lucas Pereira', 2781392513024, 'lucas.pereira@fatec.sp.gov.br', 'senha123', 'DSM-desenvolvimento-de-softwere-multiplataforma', 2, 2),
	('Ana Costa', 2781392513025, 'ana.costa@fatec.sp.gov.br', 'senha456', 'DSM-desenvolvimento-de-softwere-multiplataforma', 2, 2),
	('Pedro Lima', 2781392513012, 'pedro.lima@fatec.sp.gov.br', 'senha789', 'GE-gestao-empresarial', 3, 1),
	('Julia Martins', 2781392513007, 'julia.martins@fatec.sp.gov.br', 'senha000', 'GP-gestao-de-produção', 1, 1);

INSERT INTO tb_candidatos (imagem, idaluno, idvotacao)
VALUES
	(NULL, 1, 2),
	(NULL, 2, 2),
	(NULL, 3, 1),
	(NULL, 4, 1);

INSERT INTO tb_votos (datavoto, idaluno, idcandidato)
VALUES
	('2025-11-02 10:30:00', 1, 2),
	('2025-11-02 11:00:00', 2, 1),
	('2025-11-11 09:00:00', 3, 4),
	('2025-11-11 09:15:00', 4, 3);

