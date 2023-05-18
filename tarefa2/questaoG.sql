CREATE OR REPLACE FUNCTION atividades_membro(cod_membro integer, cod_projeto integer)
  RETURNS integer AS
$$
DECLARE
  total_atividades integer;
BEGIN
  SELECT COUNT(*) INTO total_atividades
  FROM atividade_membro am
  WHERE am.codMembro = cod_membro
    AND am.codAtividade IN (
      SELECT codAtividade
      FROM atividade_projeto
      WHERE codProjeto = cod_projeto
    );

  RETURN total_atividades;
END;
$$
LANGUAGE plpgsql;
