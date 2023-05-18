CREATE OR REPLACE FUNCTION calcular_idade(codigo_funcionario integer)
  RETURNS integer AS
$$
DECLARE
  data_nascimento date;
BEGIN
  SELECT dataNasc INTO data_nascimento FROM funcionario WHERE codigo = codigo_funcionario;
  RETURN EXTRACT(YEAR FROM AGE(CURRENT_DATE, data_nascimento));
END;
$$
LANGUAGE plpgsql;