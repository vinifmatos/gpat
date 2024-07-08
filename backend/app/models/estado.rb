class Estado < ApplicationRecord
  has_many :cidades

  def self.ransackable_attributes(_auth_object = nil)
    column_names
  end
end
