class AddUniqueIndexCpfToResponsaveis < ActiveRecord::Migration[7.1]
  def change
    add_index :responsaveis, :cpf, unique: true
  end
end
