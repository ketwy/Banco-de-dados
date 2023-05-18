CREATE OR REPLACE procedure funcionarios_acima_media(codigo_departamento integer)
LANGUAGE plpgsql
AS $$
DECLARE
    media_idade decimal;
    nome_funcionario varchar(15);
    idade_funcionario integer;
BEGIN
    media_idade := media_idade_departamento(codigo_departamento);
    
    FOR nome_funcionario, idade_funcionario IN
        SELECT f.nome, calcular_idade(f.codigo)
        FROM funcionario f
        WHERE f.depto = codigo_departamento
    LOOP
        IF idade_funcionario > media_idade THEN
            RAISE NOTICE 'Funcionário %: Idade %', nome_funcionario, idade_funcionario;
        END IF;
    END LOOP;
END;
$$;