/*Considere o banco de dados abaixo para responder às questões 1 a 6:
**obs: primary key, foreign key.
 
**cliente (codigo, nome, endereco)
**piloto (codigo, nome, num_voos)
**voo (codigo, tipo, piloto, num_passageiros, distancia)
**milhas (cliente, quantidade)
**cliente_voo (cliente, voo, classe)
*/


CREATE TABLE cliente (
  codigo INT AUTO_INCREMENT,
  nome VARCHAR(255),
  endereco VARCHAR(255),
  
  PRIMARY KEY(codigo)
);
 

CREATE TABLE piloto(
   codigo INT AUTO_INCREMENT,
   nome VARCHAR(255),
   num_voos INT,
   
   PRIMARY KEY(codigo)
);


CREATE TABLE voo(
  codigo INT AUTO_INCREMENT,
  tipo VARCHAR(255),
  cod_piloto INT,
  num_passageiros INT,
  distancia DECIMAL(10,2),
  
  PRIMARY KEY(codigo),
  FOREIGN KEY(cod_piloto) REFERENCES piloto(codigo)
);


CREATE TABLE milhas(
  cod_cliente INT,
  quantidade INT,
  
  PRIMARY KEY(cod_cliente, quantidade),
  FOREIGN KEY(cod_cliente) REFERENCES cliente(codigo)
);


CREATE TABLE cliente_voo (
  cod_cliente INT,
  cod_voo INT,
  classe VARCHAR(100),
  
  PRIMARY KEY(cod_cliente, cod_voo),
  FOREIGN KEY(cod_cliente) REFERENCES cliente(codigo),
  FOREIGN KEY(cod_voo) REFERENCES voo(codigo)

);