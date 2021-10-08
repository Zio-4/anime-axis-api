class SessionsController < ApplicationController
    skip_before_action :authorize, only: [:create]
    
    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :created
            byebug
        else
            render json: {error: "Invalid Username or Password. Try again"}, status: :unauthorized
        end
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

end
