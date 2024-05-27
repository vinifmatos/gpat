class AddUniqueIndexCodigoToLocais < ActiveRecord::Migration[7.1]
  def change
    add_index :locais, [:codigo, :local_id], unique: true
    add_index :locais, :codigo, where: 'local_id is null', unique: true
  end
end
