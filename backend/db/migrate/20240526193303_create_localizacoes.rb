class CreateLocalizacoes < ActiveRecord::Migration[7.1]
  def change
    create_table :localizacoes do |t|
      t.references :patrimonio, null: false, foreign_key: true
      t.references :local, null: false, foreign_key: true
      t.date :data, null: false
      t.integer :motivo, null: false

      t.timestamps
    end
  end
end
