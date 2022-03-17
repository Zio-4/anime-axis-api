class ApplicationController < ActionController::Base
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response



    def fallback_index_html
        if Rails.env == "production"
            render file: 'public/index.html'
        end
    end

    before_action :authorize


    def authorize
        @current_user = User.find_by(id: session[:user_id])

        render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_user
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end
end
