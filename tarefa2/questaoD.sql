CREATE OR REPLACE FUNCTION calcular_atraso(cod_atividade integer)
  RETURNS integer AS
$$
DECLARE
  data_fim date;
  data_conclusao date;
  atraso integer;
BEGIN
  SELECT dataFim, dataConclusao INTO data_fim, data_conclusao
  FROM atividade
  WHERE codigo = cod_atividade;

  IF data_conclusao IS NOT NULL AND data_conclusao > data_fim THEN
    atraso := (data_conclusao - data_fim)::integer;
  ELSE
    atraso := 0;
  END IF;

  RETURN atraso;
END;
$$
LANGUAGE plpgsql;