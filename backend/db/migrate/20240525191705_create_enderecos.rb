class CreateEnderecos < ActiveRecord::Migration[7.1]
  def change
    create_table :enderecos do |t|
      t.string :logradouro, null: false
      t.string :numero, null: false
      t.string :bairro, null: false
      t.string :complemento, null: false, default: ''
      t.string :cep, limit: 8, null: false

      t.timestamps
    end
  end
end
