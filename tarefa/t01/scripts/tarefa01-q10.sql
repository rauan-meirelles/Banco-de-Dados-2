#Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto, o nome do funcionário responsável pelo projeto, o nome do departamento do funcionário responsável.

SELECT p.nome, d.descricao, f.nome
FROM funcionario as f , departamento as d , projeto as p
WHERE p.cod_depto = d.codigo and p.cod_responsavel = f.codigo