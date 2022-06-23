#Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto, o nome do funcionário responsável pelo projeto, o nome do departamento do funcionário responsável.

SELECT p.nome as "projeto", d.descricao as "departamento", f.nome as "gerente", df.descricao as "departamento gerente"
FROM projeto as p 
JOIN departamento as d
ON p.cod_depto = d.codigo
JOIN funcionario as f
ON p.cod_responsavel = f.codigo
JOIN departamento as df
ON f.cod_dep = df.codigo