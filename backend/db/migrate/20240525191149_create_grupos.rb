class CreateGrupos < ActiveRecord::Migration[7.1]
  def change
    create_table :grupos do |t|
      t.integer :codigo, null: false
      t.string :descricao, null: false
      t.boolean :ativo, null: false, default: true

      t.timestamps
    end
  end
end
