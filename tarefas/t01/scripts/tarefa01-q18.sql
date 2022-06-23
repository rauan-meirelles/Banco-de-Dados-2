#Faça uma consulta que selecione o nome dos funcionários com maior salário de seu departamento, mesmo que não tenha departamento associado, e o nome dos respectivos departamentos. Exiba em ordem crescente de acordo com o salário.

CREATE VIEW vwInfoFuncionario (salario, codDepto)
AS SELECT MAX(f.salario), d.codigo
from funcionario as f, departamento as d 
WHERE f.cod_dep = d.codigo
GROUP BY d.codigo;

SELECT f.nome, d.descricao
FROM funcionario as f, departamento as d, vwInfoFuncionario as vf
WHERE f.cod_dep = vf.codDepto 
and f.salario = vf.salario
and d.codigo = vf.codDepto
GROUP BY f.nome;