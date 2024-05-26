class Localizacao < ApplicationRecord
  belongs_to :patrimonio
  belongs_to :local
end
