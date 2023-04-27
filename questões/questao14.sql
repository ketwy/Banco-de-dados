CREATE VIEW func AS
SELECT f.codigo, count(a.nome) as quantidade
FROM funcionario f, atividade a
WHERE a.cod_responsavel=f.codigo
GROUP BY f.codigo;

SELECT f.nome, fu.quantidade
FROM  funcionario f, func fu
WHERE f.codigo = fu.codigo