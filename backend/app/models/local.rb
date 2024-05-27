class Local < ApplicationRecord
  validates :codigo, :descricao, presence: true
  validates :codigo, uniqueness: { scope: :local_id }
  has_many :subordinados, class_name: 'Local', foreign_key: 'local_id', inverse_of: :subordinacao
  belongs_to :subordinacao, class_name: 'Local', foreign_key: 'local_id', optional: true, inverse_of: :subordinados
  has_one :endereco, dependent: :destroy
  accepts_nested_attributes_for :endereco, reject_if: :ja_possui_endereco?
  validates :endereco, presence: true
  has_many :responsaveis, through: :responsavel_locais
  has_many :movimentacao_itens
  has_many :patrimonios, through: :movimentacao_itens

  def ja_possui_endereco?
    endereco.present?
  end
end
