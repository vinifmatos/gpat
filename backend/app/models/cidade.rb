class Cidade < ApplicationRecord
  belongs_to :estado
  has_many :enderecos

  def self.ransackable_attributes(_auth_object = nil)
    column_names
  end
end
