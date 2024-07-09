class GruposController < ApplicationController
  before_action :set_grupo, only: %i[update destroy]
  include Paginacao::Grupos

  # GET /grupos
  def index
    unless params[:q] && (params[:q].keys.include?(:subgrupos) || params[:q].keys.include?(:grupos))
      params[:q] ||= {}
      params[:q][:grupos] = true
    end

    @q = Grupo.ransack(params[:q])
    @grupos = @q.result(distinct: true)
                .page(@pagina)
                .per(@limite_pagina)
    if params[:q] && params[:q][:subgrupos]
      render :subgrupos
    else
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
