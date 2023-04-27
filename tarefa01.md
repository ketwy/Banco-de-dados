CREATE TABLE funcionario (
  codigo SERIAL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  sexo CHAR(1) NOT NULL,
  dt_nasc DATE NOT NULL,
  salario DECIMAL(10,2) NOT NULL,
  cod_depto INTEGER NOT NULL
);

CREATE TABLE departamento (
  codigo SERIAL PRIMARY KEY,
  descricao VARCHAR(50) NOT NULL,
  cod_gerente INTEGER NOT NULL,
  FOREIGN KEY (cod_gerente) REFERENCES funcionario(codigo)
);

CREATE TABLE projeto (
  codigo SERIAL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descricao TEXT NOT NULL,
  cod_depto INTEGER NOT NULL,
  cod_responsavel INTEGER NOT NULL,
  data_inicio DATE NOT NULL,
  data_fim DATE,
  FOREIGN KEY (cod_depto) REFERENCES departamento(codigo),
  FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo)
);

CREATE TABLE atividade (
  codigo SERIAL PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  descricao TEXT NOT NULL,
  cod_responsavel INTEGER NOT NULL,
  data_inicio DATE NOT NULL,
  data_fim DATE,
  FOREIGN KEY (cod_responsavel) REFERENCES funcionario(codigo)
);

CREATE TABLE atividade_projeto (
  cod_projeto INTEGER NOT NULL,
  cod_atividade INTEGER NOT NULL,
  PRIMARY KEY (cod_projeto, cod_atividade),
  FOREIGN KEY (cod_projeto) REFERENCES projeto(codigo),
  FOREIGN KEY (cod_atividade) REFERENCES atividade(codigo)
);

ALTER TABLE funcionario ADD FOREIGN KEY (cod_depto) REFERENCES departamento(codigo)
