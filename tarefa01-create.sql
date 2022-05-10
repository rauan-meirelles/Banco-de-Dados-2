
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

