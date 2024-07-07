class GruposController < ApplicationController
  before_action :set_grupo, only: %i[update destroy]
  include Paginacao::Grupos
  include Filtros::Grupos

  # GET /grupos
  def index
    if params[:subgrupos]
      @grupos = Grupo.includes(:grupo).subgrupos
                     .where(@filtros)
                     .order(@ordernacao)
                     .page(@pagina).per(@limite_pagina).all
      render :subgrupos
    else
      params[:grupos] = true
      @grupos = Grupo.includes(:subgrupos).grupos
                     .where(@filtros)
                     .order(@ordernacao).references(:subgrupos)
                     .page(@pagina).per(@limite_pagina).all
      render :grupos
    end
  end

  # GET /grupos/1
  def show
    @grupo = Grupo.includes(:subgrupos).order('grupos.codigo, subgrupos_grupos.codigo').references(:subgrupos).find(params[:id])
  end

  # POST /grupos
  def create
    @grupo = Grupo.new(grupo_params)

    if @grupo.save
      render :show, status: :created, location: @grupo
    else
      render json: @grupo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grupos/1
  def update
    if @grupo.update(grupo_params)
      render :show
    else
      render json: @grupo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grupos/1
  def destroy
    @grupo.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_grupo
    @grupo = Grupo.includes(:subgrupos).find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def grupo_params
    params.require(:grupo).permit(:codigo, :grupo_id, :descricao, :ativo)
  end
end
