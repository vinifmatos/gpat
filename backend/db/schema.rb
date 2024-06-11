# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_11_145818) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_function :validar_documento, sql_definition: <<-'SQL'
      CREATE OR REPLACE FUNCTION public.validar_documento(documento text, tipo integer)
       RETURNS boolean
       LANGUAGE plpgsql
      AS $function$
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
      $function$
  SQL
  create_function :gera_codigo_patrimonio_tg, sql_definition: <<-'SQL'
      CREATE OR REPLACE FUNCTION public.gera_codigo_patrimonio_tg()
       RETURNS trigger
       LANGUAGE plpgsql
      AS $function$
      begin
        if nullif(trim(new.codigo), '') is null then
          new.codigo = (select coalesce(max(regexp_replace(codigo, '\D', '', 'g')::int), 0) + 1 from patrimonios);
        end if;

        return new;
      end $function$
  SQL

  create_table "cidades", force: :cascade do |t|
    t.string "nome", null: false
    t.bigint "estado_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estado_id"], name: "index_cidades_on_estado_id"
  end

  create_table "configuracoes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "logradouro", null: false
    t.string "numero", null: false
    t.string "bairro", null: false
    t.string "complemento", default: "", null: false
    t.string "cep", limit: 8, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cidade_id"
    t.bigint "local_id"
    t.bigint "fornecedor_id"
    t.boolean "principal"
    t.index ["cidade_id"], name: "index_enderecos_on_cidade_id"
    t.index ["fornecedor_id"], name: "index_enderecos_on_fornecedor_id"
    t.index ["local_id"], name: "index_enderecos_on_local_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "sigla", limit: 2, null: false
    t.string "nome", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedores", force: :cascade do |t|
    t.integer "tipo", null: false
    t.string "documento", limit: 14, null: false
    t.string "razao_social", null: false
    t.string "nome_fantasia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["documento"], name: "index_fornecedores_on_documento", unique: true
    t.check_constraint "validar_documento(documento::text, tipo)", name: "valida_documento"
  end

  create_table "grupos", force: :cascade do |t|
    t.integer "codigo", null: false
    t.string "descricao", null: false
    t.boolean "ativo", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "grupo_id"
    t.index ["codigo", "grupo_id"], name: "index_grupos_on_codigo_and_grupo_id", unique: true
    t.index ["codigo"], name: "index_grupos_on_codigo", unique: true, where: "(grupo_id IS NULL)"
    t.index ["grupo_id"], name: "index_grupos_on_grupo_id"
  end

  create_table "locais", force: :cascade do |t|
    t.integer "codigo", null: false
    t.string "descricao", null: false
    t.boolean "ativo", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "local_id"
    t.index ["codigo", "local_id"], name: "index_locais_on_codigo_and_local_id", unique: true
    t.index ["codigo"], name: "index_locais_on_codigo", unique: true, where: "(local_id IS NULL)"
    t.index ["local_id"], name: "index_locais_on_local_id"
  end

  create_table "movimentacao_itens", force: :cascade do |t|
    t.bigint "movimentacao_id", null: false
    t.bigint "patrimonio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movimentacao_id"], name: "index_movimentacao_itens_on_movimentacao_id"
    t.index ["patrimonio_id"], name: "index_movimentacao_itens_on_patrimonio_id"
  end

  create_table "movimentacoes", force: :cascade do |t|
    t.date "data", null: false
    t.bigint "local_id", null: false
    t.integer "motivo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_movimentacoes_on_local_id"
  end

  create_table "patrimonios", force: :cascade do |t|
    t.string "codigo", limit: 20, null: false
    t.string "descricao", limit: 250, null: false
    t.text "especificacao"
    t.date "data_aquisicao", null: false
    t.date "data_incorporacao"
    t.decimal "valor_aquisicao", null: false
    t.integer "vida_util", null: false
    t.decimal "valor_residual", null: false
    t.date "data_baixa"
    t.integer "situacao", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "grupo_id"
    t.integer "numero_empenho"
    t.integer "ano_empenho"
    t.integer "numero_processo_compra"
    t.integer "ano_processo_compra"
    t.bigint "fornecedor_id"
    t.bigint "local_id"
    t.index ["codigo"], name: "index_patrimonios_on_codigo", unique: true
    t.index ["fornecedor_id"], name: "index_patrimonios_on_fornecedor_id"
    t.index ["grupo_id"], name: "index_patrimonios_on_grupo_id"
    t.index ["local_id"], name: "index_patrimonios_on_local_id"
  end

  create_table "responsaveis", force: :cascade do |t|
    t.string "cpf", limit: 11, null: false
    t.string "nome", null: false
    t.boolean "ativo", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cpf"], name: "index_responsaveis_on_cpf", unique: true
  end

  create_table "responsavel_locais", force: :cascade do |t|
    t.bigint "local_id", null: false
    t.bigint "responsavel_id", null: false
    t.date "inicio", null: false
    t.date "termino", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_responsavel_locais_on_local_id"
    t.index ["responsavel_id"], name: "index_responsavel_locais_on_responsavel_id"
  end

  create_table "responsavel_patrimonios", force: :cascade do |t|
    t.bigint "patrimonio_id", null: false
    t.bigint "responsavel_id", null: false
    t.date "inicio", null: false
    t.date "termino", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patrimonio_id"], name: "index_responsavel_patrimonios_on_patrimonio_id"
    t.index ["responsavel_id"], name: "index_responsavel_patrimonios_on_responsavel_id"
  end

  add_foreign_key "cidades", "estados"
  add_foreign_key "grupos", "grupos"
  add_foreign_key "locais", "locais"
  add_foreign_key "movimentacao_itens", "movimentacoes"
  add_foreign_key "movimentacao_itens", "patrimonios"
  add_foreign_key "movimentacoes", "locais"
  add_foreign_key "patrimonios", "fornecedores"
  add_foreign_key "patrimonios", "locais"
  add_foreign_key "responsavel_locais", "locais"
  add_foreign_key "responsavel_locais", "responsaveis"
  add_foreign_key "responsavel_patrimonios", "patrimonios"
  add_foreign_key "responsavel_patrimonios", "responsaveis"

  create_trigger :gera_codigo_patrimonio, sql_definition: <<-SQL
      CREATE TRIGGER gera_codigo_patrimonio BEFORE INSERT ON public.patrimonios FOR EACH ROW EXECUTE PROCEDURE gera_codigo_patrimonio_tg()
  SQL
end
