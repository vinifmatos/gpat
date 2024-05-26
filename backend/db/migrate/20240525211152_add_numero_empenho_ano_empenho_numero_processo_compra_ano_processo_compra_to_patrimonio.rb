class AddNumeroEmpenhoAnoEmpenhoNumeroProcessoCompraAnoProcessoCompraToPatrimonio < ActiveRecord::Migration[7.1]
  def change
    add_column :patrimonios, :numero_empenho, :integer
    add_column :patrimonios, :ano_empnho, :integer
    add_column :patrimonios, :numero_processo_compra, :integer
    add_column :patrimonios, :ano_processo_compra, :integer
  end
end
