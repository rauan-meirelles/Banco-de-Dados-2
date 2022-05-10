
CREATE TABLE funcionario(
  codigo INT AUTO_INCREMENT,
  nome VARCHAR(200) NOT NULL, 
  sexo char,
  dt_nasc DATE, 
  salario DECIMAL(10,2),
  
  PRIMARY key (codigo)
);

