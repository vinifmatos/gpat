class ResponsaveisController < ApplicationController
  before_action :set_responsavel, only: %i[ show update destroy ]

  # GET /responsaveis
  def index
    @responsaveis = Responsavel.all
  end

  # GET /responsaveis/1
  def show
  end

  # POST /responsaveis
  def create
    @responsavel = Responsavel.new(responsavel_params)

    if @responsavel.save
      render :show, status: :created, location: @responsavel
    else
      render json: @responsavel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /responsaveis/1
  def update
    if @responsavel.update(responsavel_params)
      render :show
    else
      render json: @responsavel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /responsaveis/1
  def destroy
    @responsavel.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_responsavel
      @responsavel = Responsavel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def responsavel_params
      params.require(:responsavel).permit(:cpf, :nome, :ativo)
    end
end
