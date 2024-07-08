class Grupo < ApplicationRecord
  validates :codigo, :descricao, presence: { message: 'É obrigatório' }
  validates :codigo, uniqueness: { scope: :grupo_id }
  belongs_to :grupo, class_name: 'Grupo', foreign_key: 'grupo_id', optional: true, inverse_of: :subgrupos
  has_many :subgrupos, class_name: 'Grupo', foreign_key: 'grupo_id', inverse_of: :grupo
  before_validation :gerar_codigo

  scope :subgrupos, -> { where.not(grupo_id: nil) }
  scope :grupos, -> { where(grupo_id: nil) }

  def grupo?
    grupo_id.nil?
  end

  def subgrupo?
    grupo_id.present?
  end

  def self.ransackable_attributes(_auth_object = nil)
    column_names
  end

  private

  def gerar_codigo
    return unless new_record?

    self.codigo ||= (Grupo.where(grupo_id:).maximum(:codigo) || 0) + 1
  end
end
