SELECT f.nome, f.salario, d.descricao
FROM funcionario f  LEFT OUTER JOIN departamento d 
ON f.cod_depto = d.codigo 
