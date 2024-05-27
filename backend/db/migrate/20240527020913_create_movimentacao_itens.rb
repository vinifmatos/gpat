class CreateMovimentacaoItens < ActiveRecord::Migration[7.1]
  def change
    create_table :movimentacao_itens do |t|
      t.references :movimentacao, null: false, foreign_key: true
      t.references :patrimonio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
