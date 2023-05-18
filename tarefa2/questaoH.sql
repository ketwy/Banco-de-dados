CREATE OR REPLACE FUNCTION porcentagem_atividades(cod_membro integer, cod_projeto integer)
  RETURNS numeric AS
$$
DECLARE
  total_atividades integer;
  total_atividades_membro integer;
  porcentagem numeric;
BEGIN
  SELECT COUNT(*) INTO total_atividades
  FROM atividade_projeto
  WHERE codProjeto = cod_projeto;

  SELECT atividades_membro(cod_membro, cod_projeto) INTO total_atividades_membro;

  IF total_atividades = 0 THEN
    porcentagem := 0;
  ELSE
    porcentagem := (total_atividades_membro::numeric / total_atividades) * 100;
  END IF;

  RETURN porcentagem;
END;
$$
LANGUAGE plpgsql;