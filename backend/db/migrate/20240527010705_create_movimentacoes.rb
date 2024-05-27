class CreateMovimentacoes < ActiveRecord::Migration[7.1]
  def change
    create_table :movimentacoes do |t|
      t.date :data, null: false
      t.references :local, null: false, foreign_key: true
      t.integer :motivo, null: false

      t.timestamps
    end
  end
end
