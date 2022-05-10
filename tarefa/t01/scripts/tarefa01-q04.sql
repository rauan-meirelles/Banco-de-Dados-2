#Faça uma consulta que selecione o nome, o salário e o departamento dos funcionários que não são gerentes, ordenando pelo Código do Departamento.

SELECT nome, salario, cod_dep
from funcionario 
WHERE codigo NOT IN (SELECT cod_gerente from departamento)