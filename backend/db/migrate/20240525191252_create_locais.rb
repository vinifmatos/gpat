class CreateLocais < ActiveRecord::Migration[7.1]
  def change
    create_table :locais do |t|
      t.integer :codigo
      t.string :descricao
      t.integer :local_id
      t.boolean :ativo

      t.timestamps
    end
  end
end
