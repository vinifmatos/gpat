class Grupo < ApplicationRecord
  validates :codigo, :descricao, presence: { message: 'É obrigatório' }
  belongs_to :pai, class_name: 'Grupo', optional: true
  has_many :filhos, class_name: 'Grupo', foreign_key: 'grupo_id'

  def pai?
    grupo_id.nil?
  end

  def filho?
    !grupo_id.nil?
  end
end
