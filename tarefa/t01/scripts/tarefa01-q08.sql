#Faça uma consulta que selecione o nome do departamento, o nome do gerente, e o número de projetos de cada departamento. Deve aparecer os departamentos sem gerente e sem projetos. Crie e use views na consulta, se necessário.

CREATE VIEW vwInfoDepartamento(departamento, gerente, projetos) 
AS SELECT d.descricao, f.nome, COUNT(p.cod_depto)
FROM departamento as d 
LEFT JOIN projeto as p
ON d.codigo = p.cod_depto
LEFT JOIN funcionario as f
ON f.codigo = p.cod_responsavel
GROUP BY d.descricao;

SELECT * FROM vwInfoDepartamento