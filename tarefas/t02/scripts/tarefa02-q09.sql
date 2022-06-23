/*Cadastre um cartão de milhagem para um cliente qualquer
**e logo após crie um gatilho que cadastre um cartão de 
**milhagem para aquele cliente quando suas informações forem 
**atualizadas. Veja e explique o que acontece quando esse 
**procedimento for realizado.
*/

# Cadastrando cartão para cliente de código 1
INSERT INTO milhas(cod_cliente, quantidade)
VALUES (1,  10);

#Trigger
CREATE TRIGGER addMileageCardWhenUpdatingCustomer AFTER
UPDATE ON cliente
FOR EACH ROW 
INSERT INTO milhas(cod_cliente, quantidade)
VALUES(OLD.codigo, 0) ;

#Att cliente cod 1
UPDATE cliente SET endereco = "Rua Vicente de Paula Santos"
WHERE cliente.codigo = 1;
