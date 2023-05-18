CREATE OR REPLACE PROCEDURE equipe_projeto(cod_projeto integer)
AS
$$
DECLARE
  funcionario_nome varchar(15);
  departamento_sigla varchar(15);
BEGIN
  FOR funcionario_nome, departamento_sigla IN (
    SELECT f.nome, d.sigla
    FROM membro m
    JOIN funcionario f ON m.codFuncionario = f.codigo
    LEFT JOIN departamento d ON f.depto = d.codigo
    WHERE m.codEquipe = (
      SELECT equipe
      FROM projeto
      WHERE codigo = cod_projeto
    )
  )
  LOOP
    RAISE NOTICE 'Funcionário: %, Departamento: %', funcionario_nome, departamento_sigla;
  END LOOP;
END;
$$
LANGUAGE plpgsql;