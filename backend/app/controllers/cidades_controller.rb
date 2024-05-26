class CidadesController < ApplicationController
  def index
    @cidades = Cidade.includes(:estado).order(:nome).all
  end
end
