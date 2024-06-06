class CreateFunctionValidarDocumento < ActiveRecord::Migration[7.1]
  def change
    create_function :valida_documento

    add_check_constraint :fornecedores, "validar_documento(documento, tipo)", name: "valida_documento"
  end
end
