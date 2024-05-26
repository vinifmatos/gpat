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

ActiveRecord::Schema[7.1].define(version: 2024_05_26_203937) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cidades", force: :cascade do |t|
    t.string "nome", null: false
    t.bigint "estado_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estado_id"], name: "index_cidades_on_estado_id"
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
    t.index ["grupo_id"], name: "index_grupos_on_grupo_id"
  end

  create_table "locais", force: :cascade do |t|
    t.integer "codigo", null: false
    t.string "descricao", null: false
    t.boolean "ativo", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "local_id"
    t.index ["codigo"], name: "index_locais_on_codigo", unique: true
    t.index ["local_id"], name: "index_locais_on_local_id"
  end

  create_table "localizacoes", force: :cascade do |t|
    t.bigint "patrimonio_id", null: false
    t.bigint "local_id", null: false
    t.date "data", null: false
    t.integer "motivo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_localizacoes_on_local_id"
    t.index ["patrimonio_id"], name: "index_localizacoes_on_patrimonio_id"
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
    t.date "data_desincorporacao"
    t.integer "situacao", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "grupo_id"
    t.integer "numero_empenho"
    t.integer "ano_empnho"
    t.integer "numero_processo_compra"
    t.integer "ano_processo_compra"
    t.bigint "fornecedor_id"
    t.index ["fornecedor_id"], name: "index_patrimonios_on_fornecedor_id"
    t.index ["grupo_id"], name: "index_patrimonios_on_grupo_id"
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
  add_foreign_key "localizacoes", "locais"
  add_foreign_key "localizacoes", "patrimonios"
  add_foreign_key "patrimonios", "fornecedores"
  add_foreign_key "responsavel_locais", "locais"
  add_foreign_key "responsavel_locais", "responsaveis"
  add_foreign_key "responsavel_patrimonios", "patrimonios"
  add_foreign_key "responsavel_patrimonios", "responsaveis"
end
