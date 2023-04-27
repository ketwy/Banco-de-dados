CREATE VIEW func AS
SELECT f.codigo, count(a.nome) as quantidade
FROM funcionario f, atividade a
WHERE a.cod_responsavel=f.codigo
GROUP BY f.codigo;

CREATE VIEW SalarioGerente AS
SELECT f.codigo, f.cod_depto, f.salario
FROM funcionario f;

SELECT f.nome, fu.quantidade, f.salario
FROM  funcionario f, func fu, departamento d, SalarioGerente sg
WHERE f.codigo = fu.codigo AND d.codigo=sg.cod_depto AND f.cod_depto=d.codigo AND f.salario>sg.salario
