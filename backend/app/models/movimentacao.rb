class Movimentacao < ApplicationRecord
  include MotivosMovimentacao
  belongs_to :local
  has_many :movimentacao_itens
  has_many :patrimonios, through: :movimentacao_itens
  validates :data, :local_id, presence: true
  validate :itens_vazio
  accepts_nested_attributes_for :movimentacao_itens, allow_destroy: true

  def self.ransackable_attributes(_auth_object = nil)
    column_names
  end

  private

  def itens_vazio
    return unless movimentacao_itens.reject(&:marked_for_destruction?).blank?

    errors.add(:movimentacao_itens, 'Ao menos um patrimonio deve ser informado')
  end
end
