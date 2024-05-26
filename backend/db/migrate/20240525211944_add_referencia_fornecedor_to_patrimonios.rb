class AddReferenciaFornecedorToPatrimonios < ActiveRecord::Migration[7.1]
  def change
    add_reference :patrimonios, :fornecedor, null: false, foreign_key: true
  end
end
