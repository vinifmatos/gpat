class CreateResponsaveis < ActiveRecord::Migration[7.1]
  def change
    create_table :responsaveis do |t|
      t.string :cpf, limit: 11, null: false
      t.string :nome, null: false
      t.boolean :ativo, null: false, default: true

      t.timestamps
    end
  end
end
