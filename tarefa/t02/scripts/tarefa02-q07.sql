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