class ConfiguracoesController < ApplicationController
  before_action :set_configuracao, only: %i[show update]

  def show
  end

  def update
    if @configuracao.update(configuracao_params)
      render :show, status: :ok, location: @configuracao
    else
      render json: @configuracao.errors, status: :unprocessable_entity
    end
  end

  private
    def set_configuracao
      @configuracao = Configuracao.find(1)
    end

    def configuracao_params
      params.fetch(:configuracao, {})
    end
end
