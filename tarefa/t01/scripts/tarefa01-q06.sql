#Faça uma consulta que selecione o nome, o salário dos funcionários e a descrição do departamento, mesmo que eles não tenham departamentos associados.

SELECT f.nome, f.salario, d.descricao 
from funcionario as f LEFT JOIN departamento as d
ON f.cod_dep = d.codigo 
