create database db_sistema_faculdade;
use db_sistema_faculdade;

CREATE TABLE tbl_alunos (
  id_alunos INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(45),
  matricula VARCHAR(45),
  unique index (id_alunos)
);

CREATE TABLE tbl_cursos (
  id_cursos INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(45),
  carga_horaria INT,
   
  unique index (id_cursos)
);

CREATE TABLE tbl_matriculas (
	id_matriculas INT PRIMARY KEY AUTO_INCREMENT,
  id_alunos INT NOT NULL,
  id_cursos INT NOT NULL,
    
  CONSTRAINT FK_Matriculas_Alunos
  FOREIGN KEY (id_alunos)
  REFERENCES tbl_alunos(id_alunos),
    
  CONSTRAINT FK_Matriculas_Cursos
  FOREIGN KEY (id_cursos)
  REFERENCES tbl_cursos(id_cursos),
   
  unique index (id_matriculas)
);

CREATE TABLE tbl_professores (
  id_professores INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(45),
  especialidade VARCHAR(45),
    
  unique index (id_professores)
);

CREATE TABLE tbl_materias (
  id_materias INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  carga_horaria VARCHAR(45),
  id_cursos INT NOT NULL,
  id_professores INT NOT NULL,
    
  CONSTRAINT FK_Materias_Cursos
  FOREIGN KEY (id_cursos)
  REFERENCES tbl_cursos(id_cursos),
   
  CONSTRAINT FK_Materias_Professores
  FOREIGN KEY (id_professores)
  REFERENCES tbl_professores(id_professores)
);

CREATE TABLE tbl_notas (
  id_notas INT PRIMARY KEY AUTO_INCREMENT,
  nota DECIMAL,
   
  id_alunos INT NOT NULL,
  id_materias INT NOT NULL,
    
  CONSTRAINT FK_Notas_Alunos
  FOREIGN KEY (id_alunos)
  REFERENCES tbl_alunos(id_alunos),
    
  CONSTRAINT FK_Notas_Materias
  FOREIGN KEY (id_materias)
  REFERENCES tbl_materias(id_materias)
);

show tables;

