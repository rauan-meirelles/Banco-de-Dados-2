#Faça uma consulta que selecione o nome dos funcionários responsáveis por atividades, o número de atividades que este funcionário é responsável. Crie e use views na consulta.

CREATE VIEW vwAtividade (funcionario, quant) 
AS SELECT f.nome, count(a.codigo)
from funcionario as f, atividade as a
WHERE f.codigo = a.cod_responsavel
GROUP by f.codigo
