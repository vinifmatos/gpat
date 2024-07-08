class Responsavel < ApplicationRecord
  include ValidarDocumento
  has_many :responsavel_locais
  has_many :locais, through: :responsavel_locais
  has_many :responsavel_patrimonios
  has_many :patrimonios, through: :responsavel_patrimonios
  validates :cpf, :nome, presence: true
  validates :cpf, uniqueness: { message: 'já cadastrado' }
  validate :valida_cpf

  def self.ransackable_attributes(_auth_object = nil)
    column_names
  end

  private
  def valida_cpf
    errors.add(:cpf, 'não é válido.') unless validar_cpf(cpf)
  end
end
