#Faça uma consulta que selecione o nome, o salário e o departamento dos funcionários que não são gerentes, ordenando pelo Código do Departamento.

SELECT f.nome, f.salario, f.cod_dep
from funcionario as f
WHERE f.codigo NOT IN (SELECT cod_gerente from departamento) 
ORDER BY f.codigo