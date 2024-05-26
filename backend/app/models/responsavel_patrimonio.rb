class ResponsavelPatrimonio < ApplicationRecord
  belongs_to :patrimonio
  belongs_to :responsavel
end
