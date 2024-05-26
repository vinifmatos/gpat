class AddReferenciaFornecedorToPatrimonios < ActiveRecord::Migration[7.1]
  def change
    add_reference :patrimonios, :fornecedor, foreign_key: true
  end
end
