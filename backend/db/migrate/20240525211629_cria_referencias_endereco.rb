class CriaReferenciasEndereco < ActiveRecord::Migration[7.1]
  def change
    add_reference(:enderecos, :local)
    add_reference(:enderecos, :fornecedor)
  end
end
