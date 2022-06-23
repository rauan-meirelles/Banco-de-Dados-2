/*Crie um gatilho que adicione mais um passageiro
**a um voo sempre que um cliente entre em um voo.
**(Dica: lembre da relação cliente_voo).
*/

#Trigger
CREATE TRIGGER addPassengerOnFlight AFTER
INSERT ON cliente_voo
FOR EACH ROW
UPDATE voo SET num_passageiros = num_passageiros + 1
WHERE codigo = new.cod_voo;

#Inserindo cliente
INSERT INTO cliente(nome, endereco)
VALUES("Taciano Azevedo", "Limoeiro da sapucaí")

#Inserindo um voo
INSERT INTO voo(tipo, cod_piloto, num_passageiros, distancia)
VALUES ("Executivo", 1, 1, 1000.00);

#Inserindo um passageiro no voo
INSERT INTO cliente_voo(cod_cliente, cod_voo, classe)
VALUES (2, 2, "Executiva");