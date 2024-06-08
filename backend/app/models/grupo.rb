class Grupo < ApplicationRecord
  validates :codigo, :descricao, presence: { message: 'É obrigatório' }
  validates :codigo, uniqueness: { scope: :grupo_id }
  belongs_to :grupo, class_name: 'Grupo', foreign_key: 'grupo_id', optional: true, inverse_of: :subgrupos
  has_many :subgrupos, class_name: 'Grupo', foreign_key: 'grupo_id', inverse_of: :grupo

  scope :subgrupos, -> { where.not(grupo_id: nil) }
  scope :grupos, -> { where(grupo_id: nil) }

  def grupo?
    grupo_id.nil?
  end

  def subgrupo?
    grupo_id.present?
  end
end
