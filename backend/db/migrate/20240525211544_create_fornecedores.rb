class CreateFornecedores < ActiveRecord::Migration[7.1]
  def change
    create_table :fornecedores do |t|
      t.integer :tipo, null: false
      t.string :documento, limit: 14, null: false
      t.string :razao_social, null: false
      t.string :nome_fantasia

      t.timestamps
    end
  end
end
