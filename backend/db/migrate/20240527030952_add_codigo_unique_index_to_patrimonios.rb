class AddCodigoUniqueIndexToPatrimonios < ActiveRecord::Migration[7.1]
  def change
    add_index :patrimonios, :codigo, unique: true
  end
end
