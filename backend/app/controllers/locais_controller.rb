class LocaisController < ApplicationController
  before_action :set_local, only: %i[show update destroy]
  include Paginacao

  # GET /locais
  def index
    @q = Local.ransack(params[:q])
    @locais = @q.result(distinct: true)
                .page(@pagina)
                .per(@limite_pagina)
  end

  # GET /locais/1
  def show
  end

  # POST /locais
  def create
    @local = Local.new(local_params)

    if @local.save
      render :show, status: :created, location: @local
    else
      render json: @local.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /locais/1
  def update
    if @local.update(local_params)
      render :show
    else
      render json: @local.errors, status: :unprocessable_entity
    end
  end

  # DELETE /locais/1
  def destroy
    @local.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_local
    @local = Local.includes(:subordinados, endereco: [cidade: :estado]).find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def local_params
    local = params.require(:local).permit(:codigo, :descricao, :local_id, :ativo,
                                          endereco: %i[id logradouro numero bairro complemento cep cidade_id principal])
    local[:endereco_attributes] = local.delete(:endereco) if local[:endereco]
    local
  end
end
