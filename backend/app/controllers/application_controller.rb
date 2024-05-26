class ApplicationController < ActionController::API
  rescue_from StandardError, with: :handle_internal_server_error

  private

  def handle_internal_server_error(exception)
    logger.error "Internal Server Error: #{exception.full_message}"
    render json: { error: exception.message }, status: :internal_server_error
  end
end
