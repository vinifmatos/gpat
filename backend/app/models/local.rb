class Local < ApplicationRecord
  validates :codigo, :descricao, presence: { message: 'É obrigatório' }
  validates :codigo, uniqueness: { message: 'Código já cadastrado' }
  belongs_to :subordinacao, class_name: 'Local', optional: true
  has_many :subordinacoes, class_name: 'Local', foreign_key: 'local_id'
  has_one :endereco
  accepts_nested_attributes_for :endereco
end
