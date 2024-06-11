class CreateTriggerGeraCodigoPatrimonio < ActiveRecord::Migration[7.1]
  def change
    create_trigger :gera_codigo_patrimonio, on: :patrimonios
  end
end
