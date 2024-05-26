class ValidacaoDeDocumentoDoFornecedor < ActiveRecord::Migration[7.1]
  def up
    execute <<~SQL
      create or replace function validar_documento(documento text, tipo int) returns boolean as $$
      declare
        numeros text;
        soma integer;
        resto integer;
        i integer;
        peso integer;
        pesos1 integer[] := array[5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
        pesos2 integer[] := array[6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
      begin
        -- remover caracteres não numéricos
        numeros := regexp_replace(documento, '[^0-9]', '', 'g');

        -- verificar se é cpf (11 dígitos)
        if tipo = 0 and length(numeros) = 11 then
          -- verificar se todos os dígitos são iguais
          if numeros ~ '^(.)\1*$' then
              return false;
          end if;

          -- calcular o primeiro dígito verificador do cpf
          soma := 0;
          peso := 10;
          for i in 1..9 loop
              soma := soma + (cast(substring(numeros from i for 1) as integer) * peso);
              peso := peso - 1;
          end loop;
          resto := (soma * 10) % 11;
          if resto = 10 or resto = 11 then
              resto := 0;
          end if;
          if resto != cast(substring(numeros from 10 for 1) as integer) then
              return false;
          end if;

          -- calcular o segundo dígito verificador do cpf
          soma := 0;
          peso := 11;
          for i in 1..10 loop
              soma := soma + (cast(substring(numeros from i for 1) as integer) * peso);
              peso := peso - 1;
          end loop;
          resto := (soma * 10) % 11;
          if resto = 10 or resto = 11 then
              resto := 0;
          end if;
          if resto != cast(substring(numeros from 11 for 1) as integer) then
              return false;
          end if;

          return true;
        end if;

        -- verificar se é cnpj (14 dígitos)
        if tipo = 1 and length(numeros) = 14 then
          -- verificar se todos os dígitos são iguais
          if numeros ~ '^(.)\1*$' then
              return false;
          end if;

          -- calcular o primeiro dígito verificador do cnpj
          soma := 0;
          for i in 1..12 loop
              soma := soma + (cast(substring(numeros from i for 1) as integer) * pesos1[i]);
          end loop;
          resto := soma % 11;
          if resto < 2 then
              resto := 0;
          else
              resto := 11 - resto;
          end if;
          if resto != cast(substring(numeros from 13 for 1) as integer) then
              return false;
          end if;

          -- calcular o segundo dígito verificador do cnpj
          soma := 0;
          for i in 1..13 loop
              soma := soma + (cast(substring(numeros from i for 1) as integer) * pesos2[i]);
          end loop;
          resto := soma % 11;
          if resto < 2 then
              resto := 0;
          else
              resto := 11 - resto;
          end if;
          if resto != cast(substring(numeros from 14 for 1) as integer) then
              return false;
          end if;

          return true;
        end if;

        -- se não for nenhum dos dois, retornar falso
        return false;
      end;
      $$ language plpgsql;
    SQL

    add_check_constraint :fornecedores, "validar_documento(documento, tipo)", name: "valida_documento"
  end

  def down
    remove_check_constraint :fornecedores, name: "valida_documento", if_exists: true
    execute <<-SQL
      drop function if exists validar_documento(text, int);
    SQL
  end
end
