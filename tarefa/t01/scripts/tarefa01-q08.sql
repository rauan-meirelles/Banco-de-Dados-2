#Faça uma consulta que selecione o nome do departamento, o nome do gerente, e o número de projetos de cada departamento. Deve aparecer os departamentos sem gerente e sem projetos. Crie e use views na consulta, se necessário.

CREATE VIEW vwProjetos(gerente, departamento, quant_projetos) AS
SELECT d.cod_gerente, d.descricao, COUNT(p.codigo)
FROM departamento as d, projeto as p
WHERE d.codigo = p.cod_depto
GROUP BY d.descricao, d.cod_gerente;


SELECT f.nome, departamento,  quant_projetos
FROM funcionario as f, vwProjetos as vp
WHERE f.codigo = vp.gerente