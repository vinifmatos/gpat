class AddConstraintUniqueCodigoToLocais < ActiveRecord::Migration[7.1]
  def change
    add_index :locais, :codigo, unique: true
  end
end
