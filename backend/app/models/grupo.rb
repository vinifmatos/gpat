class Grupo < ApplicationRecord
  validates :codigo, :descricao, presence: { message: 'É obrigatório' }
  belongs_to :pai, class_name: 'Grupo', foreign_key: 'grupo_id', optional: true, inverse_of: :filhos
  has_many :filhos, class_name: 'Grupo', foreign_key: 'grupo_id', inverse_of: :pai

  def pai?
    grupo_id.nil?
  end

  def filho?
    !grupo_id.nil?
  end
end
