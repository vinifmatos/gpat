class AddLocalReferencesToLocais < ActiveRecord::Migration[7.1]
  def change
    add_reference :locais, :local, foreign_key: true
  end
end
