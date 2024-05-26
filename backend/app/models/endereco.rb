class Endereco < ApplicationRecord
  belongs_to :cidade
  belongs_to :local, optional: true
  belongs_to :fornecedor, optional: true
end
