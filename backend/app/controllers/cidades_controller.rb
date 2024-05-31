class CidadesController < ApplicationController
  def index
    if params[:por_estado]
      filtro = params[:nome]? ['cidades.nome ~* ?', params[:nome]] : '1 = 1'
      @estados = Estado.includes(:cidades).order("estados.nome, cidades.nome").references(:cidades).where(filtro).all
      render 'cidades/por_estado'
    end
    @cidades = Cidade.includes(:estado).order(:nome).all
  end
end
