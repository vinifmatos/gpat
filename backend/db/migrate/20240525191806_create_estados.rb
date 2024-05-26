class CreateEstados < ActiveRecord::Migration[7.1]
  def change
    create_table :estados do |t|
      t.string :sigla, limit: 2, null: false
      t.string :nome, null: false

      t.timestamps
    end
  end
end
