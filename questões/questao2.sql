SELECT f.nome, f.dt_nasc FROM funcionario f WHERE f.dt_nasc <
 (SELECT MAX(fc.dt_nasc) FROM funcionario fc) ORDER BY f.dt_nasc