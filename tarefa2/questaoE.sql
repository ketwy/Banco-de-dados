CREATE OR REPLACE FUNCTION calcular_atraso_projeto(cod_projeto integer)
  RETURNS integer AS
$$
DECLARE
  data_fim date;
  data_conclusao date;
  atraso integer;
BEGIN
  SELECT datafim, dataConclusao INTO data_fim, data_conclusao
  FROM projeto
  WHERE codigo = cod_projeto;

  IF data_conclusao IS NOT NULL AND data_conclusao > data_fim THEN
    atraso := (data_conclusao - data_fim)::integer;
  ELSE
    atraso := 0;
  END IF;

  RETURN atraso;
END;
$$
LANGUAGE plpgsql;