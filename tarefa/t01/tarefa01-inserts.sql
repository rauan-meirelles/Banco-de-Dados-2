
INSERT INTO funcionario (nome, sexo, dt_nasc, salario, cod_dep)
VALUES("Adson Matheus Santos Brito", 'M', '2000-06-08', 2500.00, NULL),
("Allan Gabriel Almeida Oliveira", 'M', '2000-12-31', 3000.00, NULL),
("Joan de Azevedo Medeiros", 'M', '2000-12-11', 3500.00, NULL),
("Rauan Meirelles Dantas de Araujo", 'M', '2002-05-26', 4000.00, NULL),
("Wesley Vitor Silva de Morais", 'M', '2000-06-15', 4500.00, NULL),
("Jannine Cristina Gomes Santos", 'F', '2003-02-26', 4000.00, NULL),
("Rita de Cássia Dantas dos Santos", 'F', '1975-10-12', 3500.00, NULL),
("Marcílio de Araujo", 'M', '1972-08-11', 3000.00, NULL)

INSERT INTO departamento (descricao, cod_gerente)
VALUES("Departamento de Finanças", 1),
("Departamento de Educação", 2),
("Departamento de Esportes", 3),
("Departamento de Saúde", 4),
("Departamento de Assistência Social", 5);

UPDATE funcionario SET cod_dep = 1 WHERE codigo = 1;
UPDATE funcionario SET cod_dep = 2 WHERE codigo = 2;
UPDATE funcionario SET cod_dep = 3 WHERE codigo = 3;
UPDATE funcionario SET cod_dep = 4 WHERE codigo = 4;
UPDATE funcionario SET cod_dep = 5 WHERE codigo = 5;
UPDATE funcionario SET cod_dep = 2 WHERE codigo = 6;
UPDATE funcionario SET cod_dep = 1 WHERE codigo = 7;

INSERT INTO projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim)
VALUES("Semana da Educação", "Realização de oficionas e palestras na área de educação", 2, 4, '2022-05-10', '2022-12-31'),
("Implantação de um sistema de gerenciamento de gastos", "Realizar o gerenciamento dos gastos e dos horários de cada gasto", 1, 1, '2022-05-10', '2022-12-31'),
("Tecnologias na saúde coletiva", "Se trata de um estudo sobre como a tecnologia pode auxiliar na área da saúde", 4, 3, '2022-05-10', '2022-12-31'),
("Projeto Esporte e Cidadania", "O projeto busca trazer acesso aos meios de esporte à comunidade", 3, 5, '2022-05-10', '2022-12-31'),
("A atuação dos assistentes sociais nos CRAS", "O projeto busca monitorar a ação e trabalho dos assitentes sociais nos CRAS's", 5, 2, '2022-05-10', '2022-12-31');

INSERT INTO atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
VALUES("Analisar os déficits da saúde", "Documentar os maiores casos de déficit da saúde pública", 3, '2022-05-10', '2022-05-31'),
("Fazer a revisão das comunidades mais nescessitadas ao esporte", "Realizar a seleção de 10 comunidades iniciais", 5, '2022-05-10', '2022-05-31'),
("Selecionar os palestrantes", "Entrar em contato com os palestrantes e elaborar o plano de trabalho de cada", 4, '2022-05-10', '2022-05-31'),
("Fazer um mapeamento dos CRAS's da região", "Montar uma tabela com todas os CRAS's existentes na região e selecionar as 5 mais relevantes", 2, '2022-05-10', '2022-05-31'),
("Realizar o levantamento de gastos do governo", "Realizar uma reunião com os secretários e tomar nota de todos os gastos do governo", 1, '2022-05-10', '2022-05-31');

INSERT INTO atividade_projeto(cod_projeto, cod_atividade)
VALUES(1, 3),
(2, 5),
(3, 1),
(4, 2),
(5, 4)
