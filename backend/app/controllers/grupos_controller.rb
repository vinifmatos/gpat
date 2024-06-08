class GruposController < ApplicationController
  before_action :set_grupo, only: %i[update destroy]

  # GET /grupos
  def index
    grupos if params[:grupos]
    para_patrimonio if params[:para_patrimonio]

    @grupos = Grupo.includes(:subgrupos).grupos.order('grupos.codigo, subgrupos_grupos.codigo').references(:subgrupos).all
  end

  def para_patrimonio
    codigo = params[:query].to_i if params[:query] =~ /^\d+$/
    descricao = params[:query]
    @grupos = Grupo.subgrupos.where('ativo and (descricao ~* ? or codigo = ?)', descricao, codigo).all

    render :grupos_resumido
  end

  def grupos
    codigo = params[:query].to_i if params[:query] =~ /^\d+$/
    descricao = params[:query]
    @grupos = Grupo.grupos.where('ativo and (descricao ~* ? or codigo = ?)', descricao, codigo).all
    render :grupos_resumido
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
