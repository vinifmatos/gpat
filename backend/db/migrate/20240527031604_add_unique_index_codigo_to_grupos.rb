class AddUniqueIndexCodigoToGrupos < ActiveRecord::Migration[7.1]
  def change
    add_index :grupos, [:codigo, :grupo_id], unique: true
    add_index :grupos, :codigo, where: 'grupo_id is null', unique: true
  end
end
