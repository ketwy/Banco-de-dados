INSERT INTO funcionario (nome, sexo, dt_nasc, salario) VALUES
('João Silva', 'M', '1990-05-20', 5000.00),
('Maria Santos', 'F', '1993-07-12', 3500.00),
('Pedro Souza', 'M', '1985-11-15', 7000.00),
('Ana Ferreira', 'F', '1988-03-08', 4500.00),
('Lucas Vieira', 'M', '1995-09-30', 6000.00);

INSERT INTO departamento (descricao, cod_gerente) VALUES
('Vendas', 1),
('Recursos Humanos', 2),
('Desenvolvimento', 5),
('Marketing', 3),
('Financeiro', 4);

UPDATE funcionario SET cod_depto=1 WHERE codigo=1;
UPDATE funcionario SET cod_depto=1 WHERE codigo=2;
UPDATE funcionario SET cod_depto=2 WHERE codigo=3;
UPDATE funcionario SET cod_depto=2 WHERE codigo=4;
UPDATE funcionario SET cod_depto=3 WHERE codigo=5;

INSERT INTO projeto (nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) VALUES
('Projeto A', 'Desenvolvimento de um novo produto', 3, 5, '2022-01-01', '2022-06-30'),
('Projeto B', 'Implementação de sistema de gestão', 2, 4, '2022-03-15', '2022-12-31'),
('Projeto C', 'Campanha publicitária para lançamento de produto', 4, 3, '2022-06-01', '2022-10-31'),
('Projeto D', 'Contratação de novos funcionários', 2, 2, '2022-05-01', '2022-08-31'),
('Projeto E', 'Desenvolvimento de aplicativo móvel', 3, 5, '2022-02-01', '2022-09-30');

INSERT INTO atividade (nome, descricao, cod_responsavel, data_inicio, data_fim) VALUES
('Análise de mercado', 'Realizar estudo do mercado para identificar demanda do novo produto', 5, '2022-01-01', '2022-01-15'),
('Desenvolvimento de software', 'Programação do sistema de gestão', 4, '2022-03-15', '2022-06-15'),
('Elaboração de campanha publicitária', 'Criação de material gráfico e planejamento de mídia', 3, '2022-06-01', '2022-08-31'),
('Seleção de currículos', 'Triagem de currículos recebidos para vaga aberta', 2, '2022-05-01', '2022-05-15'),
('Testes do aplicativo', 'Realizar testes de usabilidade e identificar erros', 5, '2022-02-01', '2022-09-15');

INSERT INTO atividade_projeto (cod_projeto, cod_atividade) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
