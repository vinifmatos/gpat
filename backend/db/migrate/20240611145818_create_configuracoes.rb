class CreateConfiguracoes < ActiveRecord::Migration[7.1]
  def change
    create_table :configuracoes do |t|

      t.timestamps
    end
  end
end
