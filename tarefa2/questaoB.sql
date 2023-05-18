CREATE OR REPLACE FUNCTION media_idade_departamento(codigo_departamento integer)
  RETURNS decimal AS
$$
DECLARE
  media_idade decimal;
BEGIN
  SELECT AVG(calcular_idade(f.codigo)) INTO media_idade
  FROM funcionario f
  WHERE f.depto = codigo_departamento;

  RETURN media_idade;
END;
$$
LANGUAGE plpgsql;