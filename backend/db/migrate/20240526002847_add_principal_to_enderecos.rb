class AddPrincipalToEnderecos < ActiveRecord::Migration[7.1]
  def change
    add_column :enderecos, :principal, :boolean
  end
end
