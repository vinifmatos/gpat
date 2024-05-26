class CreatePatrimonios < ActiveRecord::Migration[7.1]
  def change
    create_table :patrimonios do |t|
      t.string :codigo, limit: 20, null: false
      t.string :descricao, limit: 250, null: false
      t.text :especificacao
      t.date :data_aquisicao, null: false
      t.date :data_incorporacao
      t.decimal :valor_aquisicao, null: false
      t.integer :vida_util, null: false
      t.decimal :valor_residual, null: false
      t.date :data_desincorporacao
      t.integer :situacao, null: false

      t.timestamps
    end
  end
end
