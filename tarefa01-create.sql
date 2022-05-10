
CREATE TABLE funcionario(
  codigo INT AUTO_INCREMENT,
  nome VARCHAR(200) NOT NULL, 
  sexo char,
  dt_nasc DATE, 
  salario DECIMAL(10,2),
  
  PRIMARY key (codigo)
);

CREATE TABLE departamento(
  codigo int AUTO_INCREMENT,
  descricao VARCHAR(500), 
  cod_gerente int,
  
  PRIMARY KEY (codigo),
  FOREIGN KEY (cod_gerente) 
  REFERENCES funcionario(codigo) 
                      
);

ALTER TABLE funcionario ADD COLUMN cod_dep INT;
ALTER TABLE funcionario ADD FOREIGN KEY (cod_dep) REFERENCES departamento(codigo);


CREATE TABLE projeto (
  codigo INT AUTO_INCREMENT, 
  nome VARCHAR(100) NOT NULL, 
  descricao VARCHAR(500) NOT NULL, 
  cod_depto int, 
  cod_responsavel INT, 
  data_inicio DATE, 
  data_fim DATE,
  
  PRIMARY KEY(codigo),
  FOREIGN KEY(cod_depto) REFERENCES departamento(codigo),
  FOREIGN KEY(cod_responsavel) REFERENCES funcionario(codigo)
  
);

CREATE TABLE atividade(
  codigo INT AUTO_INCREMENT, 
  nome VARCHAR(100) NOT NULL, 
  descricao VARCHAR(500) NOT NULL, 
  cod_responsavel INT, 
  data_inicio DATE, 
  data_fim DATE,
  
  PRIMARY KEY(codigo),
  FOREIGN KEY(cod_responsavel) REFERENCES funcionario(codigo)
);
