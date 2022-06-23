/*Crie um gatilho que ao se adicionar um voo, 
**seja adicionado +1 voo para o piloto daquele voo.
*/

#Trigger
CREATE TRIGGER addVooToPiloto AFTER 
INSERT ON voo 
FOR EACH ROW 
UPDATE piloto SET num_voos = num_voos + 1 
WHERE codigo = NEW.cod_piloto; 

# Inserindo piloto
INSERT INTO piloto(nome, num_voos)
VALUES ("Alberto Santos Dumont", 3);

# Inserido voo
INSERT INTO voo(tipo, cod_piloto, num_passageiros, distancia)
VALUES ("Privado", 1, 150, 2500.00);