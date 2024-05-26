class AddReferenceGrupoToPatrimonio < ActiveRecord::Migration[7.1]
  def change
    add_reference(:patrimonios, :grupo)
  end
end
