class AddReferencesCidadesToEnderecos < ActiveRecord::Migration[7.1]
  def change
    add_reference(:enderecos, :cidade)
  end
end
