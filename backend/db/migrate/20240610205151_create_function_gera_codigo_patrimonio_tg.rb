class CreateFunctionGeraCodigoPatrimonioTg < ActiveRecord::Migration[7.1]
  def change
    create_function :gera_codigo_patrimonio_tg
  end
end
