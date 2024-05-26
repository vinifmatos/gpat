class CreateResponsavelLocais < ActiveRecord::Migration[7.1]
  def change
    create_table :responsavel_locais do |t|
      t.references :local, null: false, foreign_key: true
      t.references :responsavel, null: false, foreign_key: true
      t.date :inicio, null: false
      t.date :termino, null: false

      t.timestamps
    end
  end
end
