class Local < ApplicationRecord
  validates :codigo, :descricao, presence: { message: 'É obrigatório' }
  validates :codigo, uniqueness: { message: 'Código já cadastrado' }
  has_many :subordinados, class_name: 'Local', foreign_key: 'local_id', inverse_of: :subordinacao
  belongs_to :subordinacao, class_name: 'Local', foreign_key: 'local_id', optional: true, inverse_of: :subordinados
  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco, reject_if: :ja_possui_endereco?
  validates :endereco, presence: true
  has_many :responsaveis, through: :responsavel_locais
  has_many :localizacoes
  has_many :patrimonios, through: :localizacoes

  def ja_possui_endereco?
    endereco.present?
  end
end
