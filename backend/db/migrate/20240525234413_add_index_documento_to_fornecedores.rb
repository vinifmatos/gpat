class AddIndexDocumentoToFornecedores < ActiveRecord::Migration[7.1]
  def change
    add_index(:fornecedores, :documento, unique: true)
  end
end
