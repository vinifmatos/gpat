class LocaisController < ApplicationController
  before_action :set_local, only: %i[ show update destroy ]

  # GET /locais
  def index
    @locais = Local.includes(endereco: [cidade: :estado]).all
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
      params.require(:local).permit(:codigo, :descricao, :local_id, :ativo, endereco_attributes: %i[id logradouro numero bairro complemento cep cidade_id principal])
    end
end
