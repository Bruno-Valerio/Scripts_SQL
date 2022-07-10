create table Alunos
(
	 id_aluno int primary key not null,
	 nome varchar(200) not null,
	 data_nascimento date not null,
	 sexo varchar(1) not null,
	 data_cadastro datetime not null,
	 login_cadastro varchar(15)
);

ALTER TABLE Alunos
	ADD CONSTRAINT fk_Turmas FOREIGN KEY (id_aluno) REFERENCES Turmas (id_turma);

create table Situacao
(
	id_situacao int primary key not null,
	situacao varchar (25) not null,
	data_cadastro datetime,
	login_cadastro varchar(15)
);

create table Cursos
(
	id_curso int primary key not null,
	nome_curso varchar(200) not null,
	data_cadastro datetime not null,
	login_cadastro varchar(15) not null
);

create table Turmas
(
	id_turma int primary key not null,
	id_aluno int not null,
	id_curso int not null,
	valor_turma numeric(15,2)not null,
	desconto numeric(3,2)not null,
	data_inicio date not null,
	data_termino datetime not null,
	data_cadastro datetime not null,
	login_cadastro varchar(15)
);

ALTER TABLE Turmas
	ADD CONSTRAINT fk_Alunos FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

ALTER TABLE Turmas
	ADD CONSTRAINT fk_Curso FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso);

create table Registro_presenca
(
	id_turma int not null,
	id_aluno int not null,
	id_situacao int not null,
	data_presenca date not null,
	data_cadastro date not null,
	login_cadastro varchar(15) not null
);

ALTER TABLE Registro_presenca
	ADD CONSTRAINT fk_TurmasRP FOREIGN KEY (id_Turma) REFERENCES Turmas (id_turma);

ALTER TABLE Registro_presenca
	ADD CONSTRAINT fk_AlunosRP FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

ALTER TABLE Registro_presenca
	ADD CONSTRAINT fk_SituacaoRP FOREIGN KEY (id_situacao) REFERENCES Situacao (id_situacao);

DROP TABLE Alunos;
DROP TABLE Situacao;
DROP TABLE Cursos;
DROP TABLE Turmas;
DROP TABLE Registro_presenca;