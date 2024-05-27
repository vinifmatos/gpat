class FornecedoresController < ApplicationController
  before_action :set_fornecedor, only: %i[ show update destroy ]

  # GET /fornecedores
  def index
    @fornecedores = Fornecedor.includes(endereco: [cidade: :estado]).all
  end

  def tipos
    render json: Fornecedor.tipos
  end

  # GET /fornecedores/1
  def show
  end

  # POST /fornecedores.json
  def create
    @fornecedor = Fornecedor.new(fornecedor_params)

    if @fornecedor.save
      render :show, status: :created, location: @fornecedor
    else
      render json: @fornecedor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fornecedores/1
  def update
    if @fornecedor.update(fornecedor_params)
      render :show
    else
      render json: @fornecedor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fornecedores/1
  def destroy
    @fornecedor.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fornecedor
      @fornecedor = Fornecedor.includes(endereco: [cidade: :estado]).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fornecedor_params
      params.require(:fornecedor).permit(:tipo, :documento, :razao_social, :nome_fantasia, enderecos_attributes: %i[id logradouro numero bairro complemento cep cidade_id principal])
    end
end
