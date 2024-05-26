class Endereco < ApplicationRecord
  belongs_to :cidade
  belongs_to :local, optional: true
  belongs_to :fornecedor, optional: true
  validates :logradouro, :numero, :bairro, :cep, presence: true
end
