class ApplicationController < ActionController::API
  rescue_from StandardError, with: :handle_internal_server_error
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def handle_internal_server_error(exception)
    logger.error "Internal Server Error: #{exception.full_message}"
    render json: { error: exception.message }, status: :internal_server_error
  end

  def record_not_found
    render json: { error: 'Registro não encontrado' }, status: :not_found
  end
end
